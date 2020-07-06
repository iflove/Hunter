@file:Suppress("UNCHECKED_CAST")

package com.androidz.dblibrary.pref

import android.content.Context
import android.os.Parcelable
import androidx.room.*
import com.androidz.dblibrary.build
import kotlinx.coroutines.runBlocking
import java.io.*

/**
 *
 * Created by rentianlong on 2020/7/1
 */
@Database(entities = [Preferences::class], version = 2)
abstract class RoomPreferencesDb() : RoomDatabase() {
    abstract fun preferencesDao(): PreferencesDao

}

@Entity(tableName = "pref", indices = [Index(value = ["key"], unique = true)])
data class Preferences(
    @ColumnInfo(name = "key", typeAffinity = ColumnInfo.TEXT)
    val key: String,
    @ColumnInfo(name = "value") val value: String? = null
) {
    @PrimaryKey(autoGenerate = true)
    var uid: Long = 0

    @ColumnInfo(name = "type")
    var type: String = "NULL"
}


@Dao
interface PreferencesDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun insertAll(preferences: MutableList<Preferences>): List<Long>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(preferences: Preferences): Long

    @Delete()
    suspend fun delete(vararg preferences: Preferences): Int

    @Delete()
    suspend fun delete(preferences: Preferences): Int

    @Query("DELETE FROM pref")
    suspend fun deleteAll(): Int

    @Query("SELECT * FROM pref WHERE `key` = :key")
    suspend fun find(key: String): Preferences?


}

object RoomPreferences : Editor {

    var name: String = "pref.db"

    var context: Context? = null
        set(value) {
            field = value!!.applicationContext
        }

    var callback: RoomDatabase.Callback? = null
        set(value) {
            field = value!!
        }

    @Volatile
    private var INSTANCE: RoomPreferencesDb? = null

    fun getPreferencesDb(): RoomPreferencesDb {
        return INSTANCE ?: synchronized(this) {
            val instance = build<RoomPreferencesDb>(context = context!!,
                name = name, callback = callback
            ) {}
            INSTANCE = instance
            instance
        }
    }

    @Transaction
    override fun save(vararg pairs: Pair<String, Any?>): List<Long> {
        val list = mutableListOf<Preferences>()
        for ((key, value) in pairs) {
            when (value) {
                null -> {
                    list.add(Preferences(key))
                }
                // Scalars
                is Boolean -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Boolean" })
                }
                is Byte -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Byte" })
                }
                is Char -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Char" })
                }
                is Double -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Double" })
                }
                is Float -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Float" })
                }
                is Int -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Int" })
                }
                is Long -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Long" })
                }
                is Short -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "Short" })
                }
                is CharSequence -> {
                    list.add(Preferences(key, value.toString())
                        .also { it.type = "CharSequence" })
                }


                // References
                is Parcelable -> {

                }
                is Serializable -> {
                    kotlin.runCatching {
                        val element = Preferences(key, serialize(value))
                            .also { it.type = "Serializable" }
                        list.add(element)
                    }
                }
                else -> {
                    throw Exception("References")
                }
            }
            // Scalar arrays

            // Reference arrays

        }
        return runBlocking {
            getPreferencesDb().preferencesDao().insertAll(list)
        }
    }

    override fun <T> get(key: String): T? = runBlocking {
        getPreferencesDb().preferencesDao().find(key)?.run {
            when (type) {
                "Boolean" -> {
                    value?.toBoolean() as? T
                }
                "Byte" -> {
                    value?.toByte() as? T
                }
                "Char" -> {
                    value?.single() as? T
                }
                "Double" -> {
                    value?.toDouble() as? T
                }
                "Float" -> {
                    value?.toDouble() as? T
                }
                "Int" -> {
                    value?.toInt() as? T
                }
                "Long" -> {
                    value?.toLong() as? T
                }
                "Short" -> {
                    value?.toShort() as? T
                }
                "CharSequence" -> {
                    value?.toString() as? T
                }
                "String" -> {
                    value as? T
                }
                "Serializable" -> {
                    if (value != null)
                        try {
                            return@run deSerialization(value) as? T
                        } catch (e: Throwable) {
                            null
                        }
                    else null
                }
                else -> {
                    null
                }
            }
        }
    }


    @Throws(IOException::class)
    private fun <A : Serializable> serialize(obj: A): String {
        val byteArrayOutputStream = ByteArrayOutputStream()
        val objectOutputStream = ObjectOutputStream(byteArrayOutputStream)
        objectOutputStream.writeObject(obj)
        var serStr = byteArrayOutputStream.toString("ISO-8859-1")
        serStr = java.net.URLEncoder.encode(serStr, "UTF-8")
        objectOutputStream.close()
        byteArrayOutputStream.close()
        return serStr
    }

    @Suppress("UNCHECKED_CAST")
    @Throws(IOException::class, ClassNotFoundException::class)
    private fun <A> deSerialization(str: String): A {
        val redStr = java.net.URLDecoder.decode(str, "UTF-8")
        val byteArrayInputStream = ByteArrayInputStream(redStr.toByteArray(charset("ISO-8859-1")))
        val objectInputStream = ObjectInputStream(byteArrayInputStream)
        val obj = objectInputStream.readObject() as A
        objectInputStream.close()
        byteArrayInputStream.close()
        return obj
    }
}

interface Editor {
    fun save(vararg pairs: Pair<String, Any?>): List<Long>
    fun <T> get(key: String): T?
}
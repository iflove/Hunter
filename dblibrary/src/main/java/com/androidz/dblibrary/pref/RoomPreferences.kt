@file:Suppress("UNCHECKED_CAST")

package com.androidz.dblibrary.pref

import android.content.Context
import android.os.Parcelable
import androidx.room.*
import com.androidz.dblibrary.build
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import java.io.Serializable

/**
 *
 * Created by rentianlong on 2020/7/1
 */
@Database(entities = [Preferences::class], version = 1)
abstract class RoomPreferencesDb() : RoomDatabase() {
    abstract fun preferencesDao(): PreferencesDao

}

@Entity(tableName = "pref")
data class Preferences(
    @ColumnInfo(name = "key",
        typeAffinity = ColumnInfo.TEXT
    ) val key: String,
    @ColumnInfo(name = "value") val value: String? = null

) {
    @PrimaryKey(autoGenerate = true)
    var uid: Long = 0
}


@Dao
interface PreferencesDao {
    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertAll( preferences: MutableList<Preferences>): List<Long>

    @Insert(onConflict = OnConflictStrategy.IGNORE)
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

    var contex: Context? = null
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
            val instance = build<RoomPreferencesDb>(context = contex!!,
                name = name, callback = callback
            ) {}
            INSTANCE = instance
            instance
        }
    }

    @Transaction
    override fun save(vararg pairs: Pair<String, Any?>) {
        val list = mutableListOf<Preferences>()
        for ((key, value) in pairs) {
            when (value) {
                null -> {
                    list.add(Preferences(key))
                }
                // Scalars
                is Boolean,
                is Byte,
                is Char,
                is Double,
                is Float,
                is Int,
                is Long,
                is Short,
                is CharSequence -> {
                    list.add(Preferences(key, value.toString()))
                }


                // References
                is Parcelable -> {

                }
                is Serializable -> {
                }
            }
            // Scalar arrays

            // Reference arrays

        }
        val launch = GlobalScope.launch(Dispatchers.IO) {
            getPreferencesDb().preferencesDao().insertAll(list)
        }
    }

    override fun <T> get(key: String): T? {
        var t: T? = null
        val launch = GlobalScope.launch(Dispatchers.IO) {
            t = getPreferencesDb().preferencesDao().find(key)?.value as? T
        }
        return t
    }


}

interface Editor {
    fun save(vararg pairs: Pair<String, Any?>)
    fun <T> get(key: String): T?
}
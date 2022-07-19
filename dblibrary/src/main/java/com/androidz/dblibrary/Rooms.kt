package com.androidz.dblibrary

import android.content.Context
import androidx.room.Room
import androidx.room.RoomDatabase

/**
 *
 * Created by rentianlong on 2020/7/2
 */

inline fun <reified T : RoomDatabase> build(context: Context, name: String,
                                            journalMode: RoomDatabase.JournalMode = RoomDatabase.JournalMode.AUTOMATIC,
                                            callback: RoomDatabase.Callback? = null,
                                            body: RoomDatabase.Builder<T>.() -> Unit
): T {

    val build = Room.databaseBuilder(context.applicationContext, T::class.java, name)
   return build.run {
        setJournalMode(journalMode)
        callback?.let { addCallback(callback) }
        body()
        this
    }.build()

}


package com.androidz.dblibrary

import androidx.room.Room
import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.androidz.dblibrary.pref.RoomPreferencesDb

import org.junit.Test
import org.junit.runner.RunWith

import org.junit.Assert.*

/**
 * Instrumented test, which will execute on an Android device.
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
@RunWith(AndroidJUnit4::class)
class ExampleInstrumentedTest {
    @Test
    fun useAppContext() {
        // Context of the app under test.
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        assertEquals("com.androidz.dblibrary.test", appContext.packageName)

        val db = Room.databaseBuilder(appContext,
            RoomPreferencesDb::class.java, "database-name"
        ).build()


//        db.preferencesDao().insertAll(Preferences(1,"",""))
    }
}
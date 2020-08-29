package com.androidz.logextlibrary

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.androidz.logextlibrary.Logg.Companion.log
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith

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
        assertEquals("com.androidz.logextlibrary.test", appContext.packageName)
        log.d("xxa", "test")
        log = object : Logger {
            override fun v(tag: String, msg: String) {
                println(msg)
            }

            override fun v(tag: String, msg: String, tr: Throwable) {
            }

            override fun d(tag: String, msg: String) {
            }

            override fun d(tag: String, msg: String, tr: Throwable) {
            }

            override fun i(tag: String, msg: String) {
            }

            override fun i(tag: String, msg: String, tr: Throwable) {
            }

            override fun w(tag: String, msg: String) {
            }

            override fun w(tag: String, msg: String, tr: Throwable) {
            }

            override fun e(tag: String, msg: String) {
            }

            override fun e(tag: String, msg: String, tr: Throwable) {
            }

        }

        log.v("xxa","test1")
    }
}
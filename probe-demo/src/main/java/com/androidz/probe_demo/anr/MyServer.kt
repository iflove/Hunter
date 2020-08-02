package com.androidz.probe_demo.anr

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.os.SystemClock
import com.androidz.logextlibrary.log

class MyServer : Service() {
    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onCreate() {
        super.onCreate()
        log.d("MyServer", "onCreate")
//        mockCp(ANRFragment.SERVICE_TIMEOUT)
        mockCp(ANRFragment.SERVICE_TIMEOUT - 3 * 1000)
        log.d("MyServer", "onCreate11")
    }

    fun mockCp(timeout: Long) {
        val time = SystemClock.elapsedRealtime()
        while (true) {
            if (SystemClock.elapsedRealtime() - time >= (timeout + 1000)) {
                break
            }
            Thread.sleep(10)
        }
    }
}
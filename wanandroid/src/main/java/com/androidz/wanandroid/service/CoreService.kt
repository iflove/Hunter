package com.androidz.wanandroid.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import com.androidz.logextlibrary.log
import com.androidz.wanandroid.utility.WeLog

/**
 *
 * Created by rentianlong on 2020/6/29
 */
class CoreService : Service() {
    companion object {
        private const val TAG = "CoreService"
    }

    override fun onBind(p0: Intent?): IBinder? {
        return null
    }

    override fun onTaskRemoved(rootIntent: Intent?) {
        super.onTaskRemoved(rootIntent)
        log.i(TAG, "onTaskRemoved")
        WeLog.close()
    }

    override fun onCreate() {
        super.onCreate()
        log.i(TAG, "onCreate()")
    }
}
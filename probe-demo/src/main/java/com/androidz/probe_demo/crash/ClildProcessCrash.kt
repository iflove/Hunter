package com.androidz.probe_demo.crash

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log
import com.androidz.logextlibrary.Logg
import com.androidz.toolkitlibrary.ToastKt
import com.androidz.toolkitlibrary.toast

/**
 *             android:process=":ClildProcessCrash"  去掉试试

 * Created by rentianlong on 2020/8/30
 */
class ClildProcessCrash : Service() {
    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onCreate() {
        super.onCreate()
        ToastKt.context = this
        if (Logg.isLoggable("ClildProcessCrash", Log.DEBUG)) {
            return
        }
        Logg.d("ClildProcessCrash", (ToastKt.context == null).toString())
        toast("ClildProcessCrash")
        Thread.sleep(20 * 1000)
        try {
            throw NullPointerException()
        } finally {

        }
    }
}
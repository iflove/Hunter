package com.androidz.wanandroid.utility

import android.content.Context
import android.os.Environment
import com.androidz.logextlibrary.Logger
import com.androidz.wanandroid.BuildConfig
import com.tencent.mars.xlog.Log
import com.tencent.mars.xlog.Xlog

/**
 *
 * Created by rentianlong on 2020/6/29
 */
object WeLog {
    init {
        System.loadLibrary("c++_shared")
        System.loadLibrary("marsxlog")
    }

    fun initLog(context: Context) {
        val sd = Environment.getExternalStorageDirectory().absolutePath
        val logPath = sd + "marsxlog"
        val cachePath = context.filesDir.absolutePath + "/xlog"
        if (BuildConfig.DEBUG) {
            Xlog.appenderOpen(
                Xlog.LEVEL_DEBUG,
                Xlog.AppednerModeAsync,
                cachePath,
                logPath,
                "MarsSample",
                0,
                ""
            )
            Xlog.setConsoleLogOpen(true)

        } else {
            Xlog.appenderOpen(
                Xlog.LEVEL_INFO,
                Xlog.AppednerModeAsync,
                cachePath,
                logPath,
                "MarsSample",
                0,
                ""
            )
            Xlog.setConsoleLogOpen(false)
        }

        Log.setLogImp(Xlog())
        Logger.log = object : Logger {
            override fun v(tag: String, msg: String) {
                TODO("Not yet implemented")
            }

            override fun v(tag: String, msg: String, tr: Throwable) {
                TODO("Not yet implemented")
            }

            override fun d(tag: String, msg: String) {
                Log.d(tag, msg)
            }

            override fun d(tag: String, msg: String, tr: Throwable) {
                Log.d(tag, msg, tr)
            }

            override fun i(tag: String, msg: String) {
                Log.i(tag, msg)
            }

            override fun i(tag: String, msg: String, tr: Throwable) {
                Log.i(tag, msg, tr)
            }

            override fun w(tag: String, msg: String) {
                Log.w(tag, msg)
            }

            override fun w(tag: String, msg: String, tr: Throwable) {
                Log.w(tag, msg, tr)
            }

            override fun e(tag: String, msg: String) {
                Log.e(tag, msg)
            }

            override fun e(tag: String, msg: String, tr: Throwable) {
                Log.e(tag, msg, tr)
            }

        }

    }

    fun close() {
        Log.appenderClose()
    }
}
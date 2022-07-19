package com.androidz.wanandroid.utility

import android.content.Context
import android.os.Environment
import com.androidz.logextlibrary.Logg
import com.androidz.logextlibrary.Logger
import com.androidz.wanandroid.BuildConfig
import com.tencent.mars.xlog.Log
import com.tencent.mars.xlog.Xlog
import com.tencent.mars.xlog.Xlog.XLogConfig

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
        //这是必要的，否则可能会导致SIGBUS崩溃
        val cachePath = context.filesDir.absolutePath + "/xlog"
        //init xlog
        val logConfig = XLogConfig()
        logConfig.mode = Xlog.AppednerModeAsync
        logConfig.logdir = logPath
        logConfig.nameprefix = "m"
        logConfig.pubkey = ""
        //压缩模式
        logConfig.compressmode = Xlog.ZLIB_MODE
        logConfig.compresslevel = 0
        logConfig.cachedir = cachePath
        logConfig.cachedays = 0
        if (BuildConfig.DEBUG) {
            logConfig.level = Xlog.LEVEL_ALL
            Xlog.setConsoleLogOpen(true)
        } else {
            logConfig.level = Xlog.LEVEL_INFO
            Xlog.setConsoleLogOpen(false)
        }
        Xlog.appenderOpen(logConfig)

        Log.setLogImp(Xlog())
        Logg.log = object : Logger {
            override fun v(tag: String, msg: String) {
                Log.v(tag, msg)
            }

            override fun v(tag: String, msg: String, tr: Throwable) {
                Log.v(tag, msg, tr)
            }

            override fun d(tag: String, msg: String) {
//                Log.d(tag, Logg.getStackTraceMsg(msg))
//
                Log.d(tag, Logg.getStackTraceMsg(msg, 7))
                //java
                //Log.d(tag, Logg.getStackTraceMsg(msg,5))
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
        LogJ.log("test Java")
    }

    fun close() {
        Log.appenderClose()
    }
}
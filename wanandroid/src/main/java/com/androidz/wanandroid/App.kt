package com.androidz.wanandroid

import android.app.Application
import android.content.Context
import com.androidz.appcontextcompat.GlobalContext
import com.androidz.logextlibrary.log
import com.androidz.toolkitlibrary.ResUtil
import com.androidz.toolkitlibrary.startService
import com.androidz.wanandroid.arch.core.SingletonFactory
import com.androidz.wanandroid.service.CoreService
import com.androidz.wanandroid.utility.WeLog
import com.tencent.smtt.sdk.QbSdk
import kotlin.system.measureTimeMillis

/**
 *
 * Created by rentianlong on 2020/6/29
 */
class App : Application() {

    companion object {
        private const val TAG = "WanApp"

        private var context: Context? = null

        fun ctx(): Context = context!!

    }

    override fun onCreate() {
        super.onCreate()
        System.getProperties().put(GlobalContext.TAG, this)
        context = this
        log.i(TAG, "onCreate() const: ${measureTimeMillis { handleCreate() }}ms")
        log.i(TAG, "enter app ${GlobalContext.context}")
    }

    override fun onLowMemory() {
        super.onLowMemory()
        log.i(TAG, "onLowMemory")
    }

    private fun handleCreate() {
        SingletonFactory.inject(this)
        WeLog.initLog(this)
        startService<CoreService>()
        ResUtil.inject(this, R::class.java.`package`?.name)
        QbSdk.initX5Environment(this, null)
    }
}
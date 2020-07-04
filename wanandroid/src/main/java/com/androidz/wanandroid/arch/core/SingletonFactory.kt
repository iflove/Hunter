package com.androidz.wanandroid.arch.core

import android.content.Context
import com.androidz.logextlibrary.Logger.Companion.log
import com.androidz.toolkitlibrary.DimenKt
import com.androidz.toolkitlibrary.ToastKt
import com.androidz.wanandroid.App
import com.androidz.wanandroid.utility.net.AppRetrofitClient

/**
 *
 * Created by rentianlong on 2020/7/4
 */
object SingletonFactory {
    fun inject(context: Context) {
        log.d("SingletonFactory", "init")
        DimenKt.resources = context.resources
        ToastKt.context = context
    }

    val get = Provider()

    data class Provider(
        val appRetrofitClient: AppRetrofitClient = AppRetrofitClient,
        val ctx: Context = App.ctx()
    ) {
        init {
            log.d("SingletonFactory", "initProvider")
        }
    }


}
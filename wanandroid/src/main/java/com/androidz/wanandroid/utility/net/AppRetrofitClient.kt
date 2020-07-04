package com.androidz.wanandroid.utility.net

import com.androidz.logextlibrary.Logger
import com.androidz.networklibrary.BaseRetrofitClient
import com.androidz.wanandroid.arch.api.AndroidService
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor

/**
 *
 * Created by rentianlong on 2020/6/29
 */
object AppRetrofitClient : BaseRetrofitClient(), HttpLoggingInterceptor.Logger {
    private const val TAG = "AppRetrofitClient"

    val androidService by lazy {
        createClientServer<AndroidService>(ServerUris.BASE_WAN_URI)
    }
    val ganService by lazy {
        createClientServer<AndroidService>(ServerUris.BASE_GAN_URI)
    }
    override val logger: HttpLoggingInterceptor.Logger
        get() = this

    override fun createOkClient(
        head: OkHttpClient.Builder.() -> Unit,
        tail: OkHttpClient.Builder.() -> Unit
    ): OkHttpClient {
        return super.createOkClient(head, tail)
    }

    override fun log(message: String) {
        Logger.log.d(TAG, message)
    }

}
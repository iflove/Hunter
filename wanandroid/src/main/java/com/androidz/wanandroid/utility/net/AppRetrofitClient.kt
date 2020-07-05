package com.androidz.wanandroid.utility.net

import com.androidz.logextlibrary.Logger
import com.androidz.networklibrary.BaseRetrofitClient
import com.androidz.toolkitlibrary.NetKt
import com.androidz.wanandroid.arch.api.AndroidService
import com.androidz.wanandroid.arch.core.SingletonFactory
import okhttp3.Cache
import okhttp3.Interceptor
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import java.io.File

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
    val cacheDir by lazy {
        File(SingletonFactory.get.ctx.cacheDir.absolutePath, "OkHttp-Cache")
    }

    override val logger: HttpLoggingInterceptor.Logger
        get() = this

    override fun createOkClient(
        head: OkHttpClient.Builder.() -> Unit,
        tail: OkHttpClient.Builder.() -> Unit
    ): OkHttpClient {
        return super.createOkClient({
            //addInterceptor(forceCacheInterceptor)
            addInterceptor { chain: Interceptor.Chain ->
                var request = chain.request()
                val builder = request.newBuilder()
                if (!NetKt.isAvailable()) {
                    builder.removeHeader("Pragma")
                    builder.header("Cache-Control", "only-if-cached, max-stale=${60 * 60 * 24 * 3}")
                    request = builder.build()
                }
                chain.proceed(request)
            }
            addNetworkInterceptor { chain: Interceptor.Chain ->
                val response = chain.proceed(chain.request())
                val builder = response.newBuilder()
                builder.removeHeader("Pragma")
                val cacheControl = response.header("Cache-Control")
                cacheControl ?: builder.header("Cache-Control", "max-age=1")
                builder.build()
            }
        }, {
            this.cache(Cache(cacheDir, 10 * 1024 * 1024))
        })
    }

    override fun log(message: String) {
        Logger.log.d(TAG, message)
    }

}
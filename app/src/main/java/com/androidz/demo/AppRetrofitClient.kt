package com.androidz.demo

import com.androidz.networklibrary.BaseRetrofitClient
import okhttp3.OkHttpClient
import retrofit2.Retrofit

/**
 *
 * Created by rentianlong on 2020/6/29
 */
object AppRetrofitClient : BaseRetrofitClient() {
    val androidService by lazy {
        createClientServer<AndroidService>(ServerUris.BASE_URI)
    }

    override fun createOkClient(
        head: OkHttpClient.Builder.() -> Unit,
        tail: OkHttpClient.Builder.() -> Unit
    ): OkHttpClient {
        return super.createOkClient(head, tail)
    }


}
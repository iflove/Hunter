package com.androidz.demo

import okhttp3.OkHttpClient
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit


/**
 *
 * Created by rentianlong on 2020/6/23
 */
object RetrofitHelper {

    val apiAndroidService by lazy {
        retrofit().create(AndroidService::class.java)
    }


    fun retrofit() = Retrofit.Builder()
        .client(defaultOkHttpClient())
        .addConverterFactory(GsonConverterFactory.create())
        .baseUrl(ServerUris.BASE_URI)
        .build()

    fun defaultOkHttpClient(): OkHttpClient {
        return OkHttpClient().newBuilder()
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .connectTimeout(30, TimeUnit.SECONDS)
            .callTimeout(30, TimeUnit.SECONDS)
            .build()
    }
}
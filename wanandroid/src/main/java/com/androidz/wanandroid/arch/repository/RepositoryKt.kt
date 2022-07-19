package com.androidz.wanandroid.arch.repository

import com.androidz.toolkitlibrary.KitException
import com.androidz.wanandroid.arch.api.GankService
import com.androidz.wanandroid.arch.api.data.GankResponse
import com.androidz.wanandroid.arch.api.data.WanResponse
import com.androidz.wanandroid.arch.core.Result
import com.androidz.wanandroid.arch.core.SingletonFactory

/**
 *
 * Created by rentianlong on 2020/7/4
 */

sealed class BaseRepository {

    suspend fun <T> apiCall(call: suspend () -> Result<T>): Result<T> {
        return call.invoke()
    }
}

sealed class AppRepository : BaseRepository()

class WanAppRepository : AppRepository() {

    val androidService = SingletonFactory.get.component1().androidService

    inner class WanApiException(message: String) : KitException(message)

    suspend fun <T> map(call: suspend () -> WanResponse<T>): Result<T> {
        val runCatching = kotlin.runCatching { call.invoke() }
        return when {
            runCatching.isSuccess -> {
                val wanResponse = runCatching.getOrNull()!!
                if (wanResponse.errorCode != 0) {
                    Result.Error(WanApiException(wanResponse.errorMsg))
                } else {
                    Result.Success(wanResponse.data)
                }
            }
            else -> {
                Result.Error(runCatching.exceptionOrNull()!!)
            }
        }
    }

    suspend fun getBanner(): Unit {
        map(androidService::getBanner)
    }
}

class GankAppRepository : AppRepository() {
    val gankService = SingletonFactory.get.component1().ganService

    inner class GankApiException(message: String) : KitException(message)

    // diff 上面
    suspend fun <T> map(api: GankService = gankService,
                        call: suspend GankService.() -> GankResponse<T>
    ): Result<T> {
        val runCatching = kotlin.runCatching { call(api) }
        return when {
            runCatching.isSuccess -> {
                val gankResponse = runCatching.getOrNull()!!
                if (gankResponse.status != 100) {
                    Result.Error(GankApiException(gankResponse.status.toString()))
                } else {
                    Result.Success(gankResponse.data)
                }
            }
            else -> {
                Result.Error(runCatching.exceptionOrNull()!!)
            }
        }
    }
}
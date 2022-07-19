package com.androidz.wanandroid.utility.viewmodel

import android.content.Context
import androidx.lifecycle.ViewModel
import com.androidz.logextlibrary.Logg.Companion.log
import com.androidz.toolkitlibrary.toast
import com.androidz.wanandroid.arch.core.Result
import com.androidz.wanandroid.arch.core.SingletonFactory
import com.androidz.wanandroid.arch.repository.WanAppRepository
import com.google.gson.JsonParseException
import retrofit2.HttpException
import java.net.UnknownHostException

/**
 *
 * Created by rentianlong on 2020/7/3
 */
open class AppViewModel : ViewModel() {

    private val TAG = this::class.java.simpleName
    val appContext: Context by lazy { SingletonFactory.get.ctx }

    init {
        log.d(TAG, "an ViewModel $this is init ")
    }

    fun handleApiFailure(exception: Throwable) {
        main {
            exception.message?.let { it1 -> log.d("onApiFailure", it1) }
            appContext.toast("onApiFailure${when (exception) {
                is JsonParseException -> "Json解析错误"
                is UnknownHostException -> "无法访问主机"
                is WanAppRepository.WanApiException -> exception.message
                is HttpException -> {
                    "网络异常#${exception::class.java.simpleName}"
                }
                else -> "未知错误#${exception::class.java.simpleName}"
            }}"
            )
        }
    }

    inline fun <T> Result<T>.onApiFailure(action: (exception: Throwable) -> Unit): Result<T> {
        exceptionOrNull()?.let {
            it.cause?.message?.let { it1 -> log.d("onApiFailure", it1) }
            action(it)
        }
        return this
    }

}
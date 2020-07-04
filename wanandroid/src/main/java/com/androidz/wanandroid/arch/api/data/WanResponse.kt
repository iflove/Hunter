package com.androidz.wanandroid.arch.api.data

/**
 *
 * Created by rentianlong on 2020/6/29
 */
data class WanResponse<out T>(val errorCode: Int, val errorMsg: String, val data: T)
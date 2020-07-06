package com.androidz.wanandroid.arch.api.data

/**
 *
 * Created by rentianlong on 2020/7/6
 */
data class GankResponse<out T>(val status: Int, val data: T) {
}
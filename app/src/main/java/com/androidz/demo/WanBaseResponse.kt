package com.androidz.demo

/**
 *
 * Created by rentianlong on 2020/6/23
 */
class WanBaseResponse<T>(
    val errorCode: Int,
    val errorMsg: String,
    val data: MutableList<T>
) {


}
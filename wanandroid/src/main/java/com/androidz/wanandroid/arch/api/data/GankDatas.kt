package com.androidz.wanandroid.arch.api.data

/**
 *
 * Created by rentianlong on 2020/7/6
 */

data class Banner2(val image: String, val title: String, val url: String)

data class GirlData(val author: String,
                    val category: String,
                    val desc: String,
                    val images: List<String>,
                    val stars: String,
                    val title: String,
                    val type: String,
                    val url: String,
                    val views: Int

)


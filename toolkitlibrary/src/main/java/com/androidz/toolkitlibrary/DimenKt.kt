package com.androidz.toolkitlibrary

import android.content.res.Resources

/**
 *
 * Created by rentianlong on 2020/7/4
 */
object DimenKt {
    lateinit var resources: Resources
}

val Int.dp
    get() = this * DimenKt.resources.displayMetrics.density.toInt()


val Float.dp
    get() = this * DimenKt.resources.displayMetrics.density.toInt()
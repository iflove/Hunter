package com.androidz.appcontextcompat

import android.content.Context

/**
 *  App全局Context
 * Created by rentianlong on 2020/10/11
 */
object GlobalContext {
    const val TAG = "GlobalContext"

    @JvmStatic
    val context: Context by lazy(LazyThreadSafetyMode.SYNCHRONIZED) { System.getProperties()[TAG] as Context }

}
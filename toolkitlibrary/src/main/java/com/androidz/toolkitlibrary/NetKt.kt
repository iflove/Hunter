package com.androidz.toolkitlibrary

import android.content.Context
import android.net.ConnectivityManager

/**
 *
 * Created by rentianlong on 2020/7/5
 */

object NetKt {
    lateinit var context: Context

    fun isAvailable(context: Context = NetKt.context): Boolean {
        return (context.getSystemService(Context.CONNECTIVITY_SERVICE) as? ConnectivityManager)
            ?.activeNetworkInfo?.isAvailable ?: false
    }


}



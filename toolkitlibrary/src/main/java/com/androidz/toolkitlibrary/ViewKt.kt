package com.androidz.toolkitlibrary

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.LayoutRes

/**
 *
 * Created by rentianlong on 2020/7/3
 */

fun View.inflate(): LayoutInflater {
    return LayoutInflater.from(this.context)
}

fun View.inflate(@LayoutRes resource: Int, root: ViewGroup? = null, attachToRoot: Boolean = false
): View {
    return LayoutInflater.from(this.context).inflate(resource, root, attachToRoot)
}
package com.androidz.toolkitlibrary

import android.content.Context
import android.widget.Toast
import androidx.annotation.StringRes
import com.androidz.toolkitlibrary.ToastKt.context

/**
 *
 * Created by rentianlong on 2020/7/4
 */
object ToastKt {
    lateinit var context: Context
}

fun Context.toast(content: String, duration: Int = Toast.LENGTH_SHORT) {
    Toast.makeText(this, content, duration).apply {
        show()
    }
}

fun Context.toast(@StringRes id: Int, duration: Int = Toast.LENGTH_SHORT) {
    toast(getString(id), duration)
}

fun Context.longToast(content: String) {
    toast(content, Toast.LENGTH_LONG)
}

fun Context.longToast(@StringRes id: Int) {
    toast(id, Toast.LENGTH_LONG)
}

fun Any.toast(context: Context = ToastKt.context, content: String,
              duration: Int = Toast.LENGTH_SHORT
) {
    context.toast(content, duration)
}

fun Any.toast(context: Context = ToastKt.context, @StringRes id: Int,
              duration: Int = Toast.LENGTH_SHORT
) {
    context.toast(id, duration)
}

fun Any.longToast(context: Context = ToastKt.context, content: String) {
    context.longToast(content)
}

fun Any.longToast(context: Context = ToastKt.context, @StringRes id: Int) {
    context.longToast(id)
}
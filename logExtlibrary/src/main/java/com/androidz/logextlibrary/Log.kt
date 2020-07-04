package com.androidz.logextlibrary

import android.app.Activity
import android.app.Application
import android.app.Service
import android.content.BroadcastReceiver
import android.util.Log
import androidx.fragment.app.Fragment

/**
 *
 * Created by rentianlong on 2020/6/27
 */
interface Logger {
    fun v(tag: String, msg: String)
    fun v(tag: String, msg: String, tr: Throwable)

    fun d(tag: String, msg: String)
    fun d(tag: String, msg: String, tr: Throwable)

    fun i(tag: String, msg: String)
    fun i(tag: String, msg: String, tr: Throwable)

    fun w(tag: String, msg: String)
    fun w(tag: String, msg: String, tr: Throwable)


    fun e(tag: String, msg: String)
    fun e(tag: String, msg: String, tr: Throwable)

    companion object {

        private val DEFAULT = object : Logger {

            override fun v(tag: String, msg: String) {
                Log.v(tag, msg)
            }

            override fun v(tag: String, msg: String, tr: Throwable) {
                Log.v(tag, msg, tr)
            }

            override fun d(tag: String, msg: String) {
                Log.d(tag, msg)
            }

            override fun d(tag: String, msg: String, tr: Throwable) {
                Log.d(tag, msg, tr)
            }

            override fun i(tag: String, msg: String) {
                Log.i(tag, msg)
            }

            override fun i(tag: String, msg: String, tr: Throwable) {
                Log.i(tag, msg, tr)
            }

            override fun w(tag: String, msg: String) {
                Log.w(tag, msg)
            }

            override fun w(tag: String, msg: String, tr: Throwable) {
                Log.w(tag, msg, tr)
            }

            override fun e(tag: String, msg: String) {
                Log.e(tag, msg)
            }

            override fun e(tag: String, msg: String, tr: Throwable) {
                Log.e(tag, msg, tr)
            }
        }

        var log: Logger = DEFAULT
            get() = field
            set(value) {
                field = value
            }


    }
}

var Application.log: Logger
    get() = Logger.log
    set(value) {}

var Activity.log: Logger
    get() = Logger.log
    set(value) {}

var Fragment.log: Logger
    get() = Logger.log
    set(value) {}

var Service.log: Logger
    get() = Logger.log
    set(value) {}

var BroadcastReceiver.log: Logger
    get() = Logger.log
    set(value) {}
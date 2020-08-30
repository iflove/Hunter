package com.androidz.logextlibrary

import android.app.Activity
import android.app.Application
import android.app.Fragment
import android.app.Service
import android.content.BroadcastReceiver
import android.util.Log

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
}

/**
 * Log 工具
 */
class Logg {

    companion object {
        const val NO_DEUBG = 0

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

        @JvmStatic
        var log: Logger = DEFAULT
            get() = field
            set(value) {
                field = value
            }

        @JvmStatic
        fun v(tag: String, msg: String) {
            log.v(tag, msg)
        }

        @JvmStatic
        fun v(tag: String, msg: String, tr: Throwable) {
            log.v(tag, msg, tr)
        }

        @JvmStatic
        fun d(tag: String, msg: String) {
            log.d(tag, msg)
        }

        @JvmStatic
        fun d(tag: String, msg: String, tr: Throwable) {
            log.d(tag, msg, tr)
        }

        @JvmStatic
        fun i(tag: String, msg: String) {
            log.i(tag, msg)
        }

        @JvmStatic
        fun i(tag: String, msg: String, tr: Throwable) {
            log.i(tag, msg, tr)
        }

        @JvmStatic
        fun w(tag: String, msg: String) {
            log.w(tag, msg)
        }

        @JvmStatic
        fun w(tag: String, msg: String, tr: Throwable) {
            log.w(tag, msg, tr)
        }

        @JvmStatic
        fun e(tag: String, msg: String) {
            log.e(tag, msg)
        }

        @JvmStatic
        fun e(tag: String, msg: String, tr: Throwable) {
            log.e(tag, msg, tr)
        }


        /**
         * Java层的isLoggable,并不是安卓层
         */
        @JvmStatic
        fun isLoggable(tag: String, level: Int): Boolean {
            return System.getProperty("log.tag.$tag", NO_DEUBG.toString()) == when (level) {
                Log.VERBOSE -> "V"
                Log.DEBUG -> "D"
                Log.ERROR -> "E"
                Log.INFO -> "I"
                Log.WARN -> "W"
                Log.ASSERT -> "A"
                else -> NO_DEUBG
            }
        }

        @JvmStatic
        fun setLoggable(tag: String, level: Int) {
            System.setProperty(
                "log.tag.$tag", when (level) {
                    Log.VERBOSE -> "V"
                    Log.DEBUG -> "D"
                    Log.ERROR -> "E"
                    Log.INFO -> "I"
                    Log.WARN -> "W"
                    Log.ASSERT -> "A"
                    else -> NO_DEUBG.toString()
                }
            )
        }

        /**
         * 获取当前线程堆栈打印msg
         */
        @JvmStatic
        @JvmOverloads
        fun getStackTraceMsg(msg: Any?, index: Int = 6): String {
            return StringBuilder().let {
                getStackTraceElement(index)?.run {
                    it.append("[ (").append(fileName).append(":").append(lineNumber).append(")#")
                        .append(methodName).append(" ] ")
                }
                it.append(msg ?: "null")
            }.toString()
        }

        /**
         * 当前线程的堆栈情况
         */
        private fun getStackTraceElement(index: Int): StackTraceElement? {
            val stackTrace = Thread.currentThread().stackTrace
            return if (index >= stackTrace.size) null else stackTrace[index]
        }
    }
}

var Application.log: Logger
    get() = Logg.log
    set(value) {}

var Activity.log: Logger
    get() = Logg.log
    set(value) {}

var Fragment.log: Logger
    get() = Logg.log
    set(value) {}

var androidx.fragment.app.Fragment.log: Logger
    get() = Logg.log
    set(value) {}

var Service.log: Logger
    get() = Logg.log
    set(value) {}

var BroadcastReceiver.log: Logger
    get() = Logg.log
    set(value) {}
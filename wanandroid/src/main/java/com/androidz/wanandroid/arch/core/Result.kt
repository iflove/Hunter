package com.androidz.wanandroid.arch.core

sealed class Result<out T> {

    val isSuccess: Boolean get() = this is Success

    val isFailure: Boolean get() = this is Error

    fun getOrNull(): T? =
        when (this) {
            is Success -> value
            else -> null
        }

    fun exceptionOrNull(): Throwable? =
        when (this) {
            is Error -> throwable
            else -> null
        }

    inline fun onSuccess(action: (value: T) -> Unit): Result<T> {
        getOrNull()?.let(action)
        return this
    }

    inline fun onFailure(action: (exception: Throwable) -> Unit): Result<T> {
        exceptionOrNull()?.let(action)
        return this
    }


    data class Success<out T>(val value: T) : Result<T>()

    data class Error(val throwable: Throwable) : Result<Nothing>()

    override fun toString(): String {
        return when (this) {
            is Success<*> -> "Success[value=$value]"
            is Error -> "Error[throwable=$throwable]"
        }
    }

}
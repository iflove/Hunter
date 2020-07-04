package com.androidz.baseextlibrary

import android.os.Bundle
import android.view.View
import androidx.annotation.LayoutRes
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.OnLifecycleEvent
import com.androidz.logextlibrary.Logger.Companion.log

/**
 *
 * Created by rentianlong on 2020/6/27
 */
open class BaseActivity @JvmOverloads constructor(
    @LayoutRes open val layoutId: Int = View.NO_ID,
    open val initEvent: Lifecycle.Event = Lifecycle.Event.ON_CREATE
) : AppCompatActivity() {

    private val initLifecycleObserver = object : LifecycleObserver {

        @OnLifecycleEvent(Lifecycle.Event.ON_ANY)
        private fun init(owner: LifecycleOwner, event: Lifecycle.Event) {
            log.d(TAG, "${this@BaseActivity::class.java.simpleName}@${this@BaseActivity.hashCode()} event:$event; currentState:${owner.lifecycle.currentState}")
            when (event) {
                Lifecycle.Event.ON_PAUSE,
                Lifecycle.Event.ON_STOP,
                Lifecycle.Event.ON_DESTROY -> {
                    return
                }
                else -> if (initEvent == event) {
                    initView()
                    initData()
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        takeIf { layoutId != View.NO_ID }?.run { setContentView(layoutId) }
        lifecycle.addObserver(initLifecycleObserver)
    }

    override fun onDestroy() {
        super.onDestroy()
        lifecycle.removeObserver(initLifecycleObserver)
    }

    open fun initView() {}
    open fun initData() {}

    companion object {
        private const val TAG = "BaseActivity"
    }

}
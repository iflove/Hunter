package com.androidz.baseextlibrary

import android.os.Bundle
import android.view.View
import androidx.annotation.LayoutRes
import androidx.fragment.app.SafeFragment
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.OnLifecycleEvent
import com.androidz.logextlibrary.Logg.Companion.log

/**
 *
 * Created by rentianlong on 2020/6/27
 */
open class BaseFragment @JvmOverloads constructor(
    @LayoutRes override val layoutId: Int = 0,
    open val initEvent: Lifecycle.Event = Lifecycle.Event.ON_CREATE
) : SafeFragment(layoutId) {

    private val initLifecycleObserver = object : LifecycleObserver {

        @OnLifecycleEvent(Lifecycle.Event.ON_ANY)
        private fun init(owner: LifecycleOwner, event: Lifecycle.Event) {
            log.d(TAG, "${this@BaseFragment::class.java.simpleName}@${this@BaseFragment.hashCode()} event:$event; currentState:${owner.lifecycle.currentState}")
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
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        lifecycle.addObserver(initLifecycleObserver)
    }

    override fun onDestroy() {
        super.onDestroy()
        lifecycle.removeObserver(initLifecycleObserver)
    }

    open fun initView() {}
    open fun initData() {}

    companion object {
        private const val TAG = "BaseFragment"
    }


}
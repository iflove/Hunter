package com.androidz.baseextlibrary

import android.content.Context
import android.os.Bundle
import android.view.View
import androidx.annotation.LayoutRes
import androidx.fragment.app.Fragment
import androidx.fragment.app.commit
import androidx.lifecycle.Lifecycle
import com.androidz.toolkitlibrary.KtxInternals

/**
 *
 * Created by rentianlong on 2020/6/28
 */
open class SimpleActivity @JvmOverloads constructor(
    @LayoutRes override val layoutId: Int = View.NO_ID,
    override val initEvent: Lifecycle.Event = Lifecycle.Event.ON_CREATE
) : BaseActivity(layoutId, initEvent) {

    var fragments: Map<String, Fragment> = mutableMapOf()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val serializable = intent.extras?.getSerializable(EXTRA_FRAGMENT_CLASS)
        val runCatching = serializable?.runCatching {
            val clazz = serializable as? Class<out Fragment>
            clazz?.let {
                supportFragmentManager.commit(true) {
                    replace(android.R.id.content, it, intent.extras, EXTRA_FRAGMENT_CLASS)
                }
            }
        }

    }

    companion object {
        private const val TAG = "SimpleActivity"
        const val EXTRA_FRAGMENT_CLASS = "extra_fragment_class"

        @JvmStatic
        inline fun <reified T : Fragment> Fragment.startSimpleActivity(
            vararg params: Pair<String, Any?>
        ) {
            requireContext().startSimpleActivity<T>(*params)
        }

        @JvmStatic
        inline fun <reified T : Fragment> Context.startSimpleActivity(
            vararg params: Pair<String, Any?>
        ) {

            KtxInternals.internalStartActivity(
                this,
                SimpleActivity().javaClass,
                arrayOf(*params, EXTRA_FRAGMENT_CLASS to T::class.java)
            )

        }
    }
}
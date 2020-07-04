package com.androidz.toolkitlibrary

import android.os.Bundle
import androidx.fragment.app.Fragment

/**
 *
 * Created by rentianlong on 2020/7/3
 */

inline fun <reified T : Fragment> Fragment.createNew(args: Bundle = Bundle()): T {
    val fragment = T::class.java.newInstance()
    fragment.arguments = args
    return fragment
}
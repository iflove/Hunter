package com.androidz.demo

import android.util.Log
import com.androidz.baseextlibrary.BaseFragment
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import kotlinx.android.synthetic.main.activity_main.*

/**
 *
 * Created by rentianlong on 2020/6/27
 */
class MainFragment : BaseFragment(R.layout.activity_main) {

    override fun initView() {
        super.initView()
        Log.d("xaa", "initView ${tv.text}")
        tv.setOnClickListener {
            requireActivity().startSimpleActivity<MainFragment>()
        }
    }

}
package com.androidz.wanandroid.utility.adapter

import androidx.fragment.app.Fragment
import androidx.viewpager2.adapter.FragmentStateAdapter

/**
 *
 * Created by rentianlong on 2020/7/3
 */
class AppFragmentStateAdapter(fragment: Fragment, private val fragments: MutableList<Fragment>) :
    FragmentStateAdapter(fragment) {

    override fun getItemCount(): Int {
        return fragments.size
    }

    override fun createFragment(position: Int): Fragment {
        return fragments[position]
    }
}
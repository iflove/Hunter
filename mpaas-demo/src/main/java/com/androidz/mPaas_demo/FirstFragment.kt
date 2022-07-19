package com.androidz.mPaas_demo

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController

/**
 * A simple [Fragment] subclass as the default destination in the navigation.
 */
class FirstFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_first, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        view.findViewById<Button>(R.id.button_first).setOnClickListener {
            //Kotlin 不支持噢 fuck
//            val result = 1 / 1 // 除数为 0，是个 bug，会导致应用崩溃
//            Toast.makeText(this.context, "result = " + result, Toast.LENGTH_SHORT).show();
            LogT.fix();
            findNavController().navigate(R.id.action_FirstFragment_to_SecondFragment)
        }
    }
}
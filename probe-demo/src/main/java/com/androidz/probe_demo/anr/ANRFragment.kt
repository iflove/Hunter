package com.androidz.probe_demo.anr

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.SystemClock
import com.androidz.baseextlibrary.BaseFragment
import com.androidz.logextlibrary.log
import com.androidz.probe_demo.R
import com.androidz.toolkitlibrary.ToastKt
import com.androidz.toolkitlibrary.startService
import com.androidz.toolkitlibrary.toast
import kotlinx.android.synthetic.main.fragment_anr.*
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * 查看ActivityManager: ANR 日志信息
 * Created by rentianlong on 2020/7/22
 */
class ANRFragment : BaseFragment(R.layout.fragment_anr) {
    companion object {
        // How long we wait until we timeout on key dispatching.
        const val KEY_DISPATCHING_TIMEOUT = 5 * 1000L * 1000
        const val BROADCAST_FG_TIMEOUT = 10 * 1000L
        const val BROADCAST_BG_TIMEOUT = 60 * 1000L

        // How long we wait for a service to finish executing.
        const val SERVICE_TIMEOUT = 20 * 1000L

        // How long we wait for a service to finish executing.
        const val SERVICE_BACKGROUND_TIMEOUT = SERVICE_TIMEOUT * 10
    }

    val shutdown = Shutdown()

    override fun initView() {
        super.initView()
        ToastKt.context = requireContext().applicationContext
        var clickFlag = false
        win.setOnClickListener {
            log.d("inputANR", "win click")
        }
//        input.setOnTouchListener { v, event ->
//            //Reason: Input dispatching timed out (com.androidz.probe_demo/com.androidz.baseextlibrary.SimpleActivity, Waiting to send non-key event because the touched window has not finished processing certain input events that were delivered to it over 500.0ms ago.  Wait queue length: 1.  Wait queue head age: 17492.9ms.)
//            //不断点击试试
//            mockCp(KEY_DISPATCHING_TIMEOUT)
//            log.d("input", "setOnTouchListener finish")
//            true
//        }
        input.setOnClickListener {
            log.d("inputANR", "input click")
            clickFlag = true
            it.postDelayed({
                win.performClick()
                toast(content = "postDelayed 100")
                log.d("inputANR", "postDelayed 100")
            }, 100)
            it.postDelayed({
                win.performClick()
                toast(content = "postDelayed 500")
                log.d("inputANR", "postDelayed 500")
            }, 500)

//            while (true){
//                Looper.getMainLooper().queue
//            }
            mockCp(KEY_DISPATCHING_TIMEOUT)
            clickFlag = false
            toast(content = "finish")
            log.d("inputANR", "finish")
        }
        fgBroadcast.setOnClickListener {
            val intent = Intent("fgBroadcast")
            intent.putExtra("type", "bg1")
            requireActivity().sendBroadcast(intent)

            intent.putExtra("type", "fg")
            intent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND)
            GlobalScope.launch {
                delay(5000)
                requireActivity().sendOrderedBroadcast(intent, null)
            }
        }
        bgBroadcast.setOnClickListener {
            val intent = Intent("fgBroadcast")
            intent.putExtra("type", "bg")
            GlobalScope.launch {
                requireActivity().sendBroadcast(intent)
            }

        }
        fgSer.setOnClickListener {

        }
        bgSer.setOnClickListener {
            startService<MyServer>()
        }

        requireActivity().registerReceiver(shutdown, IntentFilter("fgBroadcast"))
    }

    override fun onDestroyView() {
        super.onDestroyView()
        requireActivity().unregisterReceiver(shutdown)
    }

    inner class Shutdown : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val extra = intent?.getStringExtra("type")
            log.d("onReceive", "msg $extra")
            if (extra == "bg") {
                mockCp(BROADCAST_BG_TIMEOUT)
            } else {
                mockCp(BROADCAST_FG_TIMEOUT)
            }
            log.d("onReceive", "finish $extra")
        }

    }


    fun mockCp(timeout: Long) {
        val time = SystemClock.elapsedRealtime()
        while (true) {
            if (SystemClock.elapsedRealtime() - time >= (timeout + 1000)) {
                break
            }
            Thread.sleep(10)
        }
    }

}
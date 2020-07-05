package com.androidz.wanandroid.ui.main

import android.graphics.Bitmap
import androidx.core.view.isGone
import androidx.core.view.isVisible
import com.androidz.logextlibrary.log
import com.androidz.toolkitlibrary.ResUtil
import com.androidz.wanandroid.R
import com.androidz.wanandroid.ui.base.AppBaseFragment
import com.tencent.smtt.sdk.WebChromeClient
import com.tencent.smtt.sdk.WebView
import com.tencent.smtt.sdk.WebViewClient
import kotlinx.android.synthetic.main.fragment_web.*
import kotlinx.android.synthetic.main.layout_title.*

/**
 *
 * Created by rentianlong on 2020/7/4
 */
class WebFragment : AppBaseFragment(R.layout.fragment_web) {
    companion object {
        const val URL = "url"
    }

    override fun initView() {
        super.initView()
        toolbar.run {
            title = getString(R.string.is_loading)
            setNavigationIcon(R.drawable.arrow_back)
            setNavigationContentDescription(R.string.back_btn)
            setNavigationOnClickListener(::onClick)
            //setNavigationOnClickListener(this@WebFragment)
        }
        progressBar.progressDrawable = ResUtil.getDrawable(R.drawable.color_progressbar)
    }

    override fun onBack() {
        if (webView.canGoBack()) webView.goBack() else super.onBack()
    }

    override fun initData() {
        super.initData()
        arguments?.getString(URL)?.let {
            log.d("xxa", "loadUrl:$it")
            webView.loadUrl(it)
        }
        webView.run {
            webViewClient = object : WebViewClient() {

                override fun onPageStarted(webView: WebView?, p1: String?, p2: Bitmap?) {
                    super.onPageStarted(webView, p1, p2)
                    progressBar?.isVisible = true
                }

                override fun onPageFinished(webView: WebView?, p1: String?) {
                    super.onPageFinished(webView, p1)
                    progressBar?.isGone = true
                }
            }
            webChromeClient = object : WebChromeClient() {
                override fun onProgressChanged(p0: WebView?, p1: Int) {
                    super.onProgressChanged(p0, p1)
                    progressBar?.progress = p1
                    log.d("browser", p1.toString())
                }

                override fun onReceivedTitle(p0: WebView?, p1: String?) {
                    super.onReceivedTitle(p0, p1)
                    p1?.let { toolbar?.title = p1 }
                }

            }
        }
    }
}
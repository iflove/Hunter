package com.androidz.bugly

import android.app.Application
import com.tencent.bugly.beta.Beta
import com.tencent.bugly.crashreport.CrashReport

/**
 *
 * Created by rentianlong on 2020/9/20
 */
class BuglyApp : Application() {

    override fun onCreate() {
        super.onCreate()
        CrashReport.initCrashReport(getApplicationContext(), "b31300eaf6", true);

        Beta.installTinker()
        Beta.checkUpgrade()
        Beta.canNotifyUserRestart = true

    }
}
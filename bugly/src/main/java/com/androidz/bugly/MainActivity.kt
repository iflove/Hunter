package com.androidz.bugly

import android.os.Bundle
import android.os.Environment
import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.tencent.bugly.beta.Beta
import com.tencent.tinker.lib.tinker.TinkerInstaller
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Beta.checkUpgrade()
        Beta.canNotifyUserRestart = true
        Log.e("xxa", "onCreate: 777")
        Toast.makeText(this, "test", 1).show()
        load.setOnClickListener {
            TinkerInstaller.onReceiveUpgradePatch(getApplicationContext(),
                Environment.getExternalStorageDirectory()
                    .getAbsolutePath() + "/patch_signed_7zip.apk"
            );
        }
    }
}

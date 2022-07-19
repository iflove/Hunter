package com.androidz.nfcdemo

import android.Manifest
import android.content.Context
import android.nfc.NfcAdapter
import android.nfc.NfcManager
import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import com.github.lilei.coroutinepermissions.requestPermissionsForResult
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {
    private val permsSd = arrayOf(Manifest.permission.NFC)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        CoroutineScope(Dispatchers.Main).launch {
            try {
                requestPermissionsForResult(*permsSd, rationale = "为了更好的提供服务，需要获取存储空间权限")
                val manager: NfcManager = getSystemService(Context.NFC_SERVICE) as NfcManager
                val adapter: NfcAdapter? = manager.defaultAdapter
                adapter?.let {
                    if (it.isEnabled.not()) {
                        Log.d("xxa", "isEnabled No: ")
                    } else {
                        Log.d("xxa", "isEnabled: ")

                    }
                }
            } catch (e: Exception) {
            }
        }

    }
}

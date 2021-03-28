package com.androidz.dex_demo

import android.Manifest
import android.content.pm.PackageManager
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import com.androidz.dex_demo.databinding.ActivityMainBinding
import dalvik.system.DexClassLoader

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val inflate = ActivityMainBinding.inflate(layoutInflater)
        setContentView(inflate.root)
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
            when {
                ContextCompat.checkSelfPermission(
                    this,
                    Manifest.permission.READ_EXTERNAL_STORAGE
                ) == PackageManager.PERMISSION_GRANTED -> {
                    // You can use the API that requires the permission.

                }
                shouldShowRequestPermissionRationale(Manifest.permission.READ_EXTERNAL_STORAGE) -> {
                    // In an educational UI, explain to the user why your app requires this
                    // permission for a specific feature to behave as expected. In this UI,
                    // include a "cancel" or "no thanks" button that allows the user to
                    // continue using your app without granting the permission.
                }

                else -> {
                    // You can directly ask for the permission.
                    requestPermissions(
                        arrayOf(
                            Manifest.permission.READ_EXTERNAL_STORAGE,
                            Manifest.permission.INTERNET
                        ),
                        PERMISSION_REQUEST_CODE
                    )
                }
            }
        }

        // 开始加载dex class
        inflate.load.setOnClickListener {
            val dexClassLoader = DexClassLoader(
                "/sdcard/KHello.apk:/sdcard/KHello1.dex", //需要加载的文件列表，文件可以是包含了 classes.dex 的 JAR/APK/ZIP，也可以直接使用 classes.dex 文件，多个文件用 “:” 分割
                /*externalCacheDir?.absolutePath*/
                null, //optimizedDirectory: 存放优化后的 dex，可以为空 Android 8.0后强制null
                null, //存放需要加载的 native 库的目录
                classLoader     //父 ClassLoader
            )
//            val dexClassLoader =
//                PathClassLoader("/sdcard/KHello.apk:/sdcard/KHello1.dex", classLoader) //PathClassLoader 传入的optimizedDirectory是 null
            //Hello.java
//            val libClazz = dexClassLoader.loadClass("com.androidz.dex_demo.HelloJ")
//            println(libClazz)
//            val mLog = libClazz.getDeclaredMethod("log")
//            mLog.isAccessible = true
//            Thread{
//                mLog.invoke(null)
//            }.start()


            //kt
            val libClazz = dexClassLoader.loadClass("com.androidz.dex_demo.Hello")
            val f = libClazz.getDeclaredField("INSTANCE")
            val obj = f.get(null)
            val mLog = libClazz.getDeclaredMethod("log")
            mLog.isAccessible = true
            mLog.invoke(obj)
            println(obj)
        }

    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String>, grantResults: IntArray
    ) {
        when (requestCode) {
            PERMISSION_REQUEST_CODE -> {
                // If request is cancelled, the result arrays are empty.
                if ((grantResults.isNotEmpty() &&
                            grantResults[0] == PackageManager.PERMISSION_GRANTED)
                ) {
                    // Permission is granted. Continue the action or workflow
                    // in your app.
                } else {
                    // Explain to the user that the feature is unavailable because
                    // the features requires a permission that the user has denied.
                    // At the same time, respect the user's decision. Don't link to
                    // system settings in an effort to convince the user to change
                    // their decision.
                }
                return
            }

            // Add other 'when' lines to check for other
            // permissions this app might request.
            else -> {
                // Ignore all other requests.
            }
        }
    }

    companion object {
        private const val PERMISSION_REQUEST_CODE = 1
    }
}
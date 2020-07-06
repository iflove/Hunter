package com.androidz.wanandroid

import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.view.Menu
import android.view.View
import android.widget.TextView
import androidx.activity.viewModels
import androidx.appcompat.widget.Toolbar
import androidx.drawerlayout.widget.DrawerLayout
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.navigateUp
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController
import com.androidz.baseextlibrary.SimpleActivity.Companion.startSimpleActivity
import com.androidz.dblibrary.pref.RoomPreferences
import com.androidz.wanandroid.arch.api.data.User
import com.androidz.wanandroid.arch.core.SingletonFactory
import com.androidz.wanandroid.ui.base.AppBaseActivity
import com.androidz.wanandroid.ui.login.LoginAndroidViewModel
import com.androidz.wanandroid.ui.login.LoginFragment
import com.androidz.wanandroid.utility.IS_LOGIN
import com.androidz.wanandroid.utility.MSG_LOGIN
import com.androidz.wanandroid.utility.USER_INFO
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.navigation.NavigationView
import com.google.android.material.snackbar.Snackbar

class MainActivity : AppBaseActivity(), Handler.Callback {

    private lateinit var appBarConfiguration: AppBarConfiguration
    val loginAndroidViewModel: LoginAndroidViewModel by viewModels()
    lateinit var userNameTv: TextView
    lateinit var headerView: View

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val toolbar: Toolbar = findViewById(R.id.toolbar)
        setSupportActionBar(toolbar)

        val fab: FloatingActionButton = findViewById(R.id.fab)
        fab.setOnClickListener { view ->
            Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                .setAction("Action", null).show()
        }
        val drawerLayout: DrawerLayout = findViewById(R.id.drawer_layout)
        val navView: NavigationView = findViewById(R.id.nav_view)
        val navController = findNavController(R.id.nav_host_fragment)
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        appBarConfiguration = AppBarConfiguration(
            setOf(
                R.id.nav_home, R.id.nav_gallery, R.id.nav_slideshow, R.id.nav_scrolling
            ), drawerLayout
        )
        setupActionBarWithNavController(navController, appBarConfiguration)
        navView.setupWithNavController(navController)
        headerView = navView.getHeaderView(0)
        userNameTv = headerView.findViewById<TextView>(R.id.userNameTv)
        val userEmailTv = headerView.findViewById<TextView>(R.id.userEmailTv)
        val isLogin = RoomPreferences.get<Boolean>(IS_LOGIN) ?: false
        if (isLogin) {
            //val json = RoomPreferences.get<String>(USER_INFO) ?: ""
            //val user: User = json.fromJson()
            val user = RoomPreferences.get<User>(USER_INFO)
            userNameTv.text = user?.nickname
            userEmailTv.text = user?.email
        } else {
            userNameTv.text = "登录/注册"
            headerView.setOnClickListener {
                startSimpleActivity<LoginFragment>()
            }
        }
    }

    override fun initData() {
        super.initData()
        SingletonFactory.get.messageChannel.observeForever(this)
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        // Inflate the menu; this adds items to the action bar if it is present.
        menuInflater.inflate(R.menu.main, menu)
        return true
    }

    override fun onSupportNavigateUp(): Boolean {
        val navController = findNavController(R.id.nav_host_fragment)
        return navController.navigateUp(appBarConfiguration) || super.onSupportNavigateUp()
    }

    override fun handleMessage(msg: Message): Boolean {
        return when (msg.what) {
            MSG_LOGIN -> {
                val obj = msg.obj as User
                headerView.isEnabled = false
                userNameTv.text = obj.nickname
                true
            }
            else -> false
        }
    }
}

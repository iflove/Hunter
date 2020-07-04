package androidx.fragment.app

import android.os.Bundle
import androidx.annotation.LayoutRes
import com.androidz.baseextlibrary.BuildConfig
import com.androidz.logextlibrary.log


/**
 *
 * Created by rentianlong on 2020/6/28
 */
abstract class SafeFragment(@LayoutRes open val layoutId: Int = 0) : Fragment(layoutId) {
    override fun performActivityCreated(savedInstanceState: Bundle?) {
        try {
            super.performActivityCreated(savedInstanceState)
        } catch (e: Exception) {
            if (BuildConfig.DEBUG) {
                throw e;
            }
            log.d("Fragment", "err:${e.cause?.message} ")
        }
    }
}
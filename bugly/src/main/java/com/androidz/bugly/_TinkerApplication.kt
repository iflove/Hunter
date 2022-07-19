package com.androidz.bugly

import com.tencent.tinker.loader.app.TinkerApplication
import com.tencent.tinker.loader.shareutil.ShareConstants

/**
 *  @link [SampleApplicationLike]
 * Created by rentianlong on 2020/9/20
 */
class _TinkerApplication :
    TinkerApplication(ShareConstants.TINKER_ENABLE_ALL, "com.androidz.bugly.SampleApplicationLike"
    )
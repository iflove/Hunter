.class public Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;
.super Ljava/lang/Object;
.source "H5AnimatorUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;
    .locals 1

    .line 37
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    return-object v0
.end method

.method public static isNeedAnimFromConfig()Z
    .locals 2

    .line 41
    const/4 v0, 0x0

    .local v0, "needAnimConfig":Ljava/lang/String;
    const-string v1, "h5_needAnim"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    return v1

    .line 47
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->b:Z

    return v1
.end method

.method public static isNeedTransAnim()Z
    .locals 2

    .line 231
    const/4 v0, 0x0

    .local v0, "transAnimConfig":Ljava/lang/String;
    const-string v1, "h5_transAnim"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static presentWithAnimation(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 123
    const-string v0, "nebulaStartAnimation"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "presentWithAnimation"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setActivityFadingFinish()V
    .locals 6

    .line 190
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 195
    .local v2, "topRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 197
    .local v1, "topActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "h5_fading_out"

    const-string v4, "anim"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 199
    invoke-static {v0, v3, v4, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "animOut":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v0    # "animOut":I
    .end local v1    # "topActivity":Landroid/app/Activity;
    .end local v2    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_0
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivityFadingFinish exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AnimatorUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static setActivityFadingStart()V
    .locals 6

    .line 170
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 175
    .local v2, "topRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 177
    .local v1, "topActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "h5_fading_in"

    const-string v4, "anim"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 179
    invoke-static {v0, v3, v4, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "animIn":I
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "animIn":I
    .end local v1    # "topActivity":Landroid/app/Activity;
    .end local v2    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_0
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivityFadingStart exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AnimatorUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static setActivityFinish(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "activityFinish"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 127
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "anim"

    if-eqz v0, :cond_0

    .line 131
    if-eqz p0, :cond_2

    .line 132
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->finishActivityEnterAnim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "animIn":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->finishActivityEnterExitAnim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "animOut":I
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 137
    .end local v0    # "animIn":I
    .end local v1    # "animOut":I
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 143
    .local v3, "topRef":Ljava/lang/ref/WeakReference;
    move-object v3, v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 145
    .local v2, "topActivity":Landroid/app/Activity;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 146
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->presentWithAnimation(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "push_down_out"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 148
    invoke-static {v0, v4, v1, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "animOut":I
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 151
    .end local v0    # "animOut":I
    return-void

    .line 152
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "h5_slide_in_left"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 153
    invoke-static {v0, v4, v1, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "animIn":I
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "h5_slide_out_right"

    .line 155
    invoke-static {v4, v6, v1, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 157
    .restart local v1    # "animOut":I
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0    # "animIn":I
    .end local v1    # "animOut":I
    .end local v2    # "topActivity":Landroid/app/Activity;
    .end local v3    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_2
    return-void

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AnimatorUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method public static setActivityNoAnimStart()V
    .locals 6

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 108
    .local v2, "topRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 110
    .local v1, "topActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "h5_slide_out_left"

    const-string v4, "anim"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 112
    invoke-static {v0, v3, v4, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "animOut":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "animOut":I
    .end local v1    # "topActivity":Landroid/app/Activity;
    .end local v2    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_0
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overridePendingTransitionFromXml exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AnimatorUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static setActivityPresentFinish()V
    .locals 6

    .line 211
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 216
    .local v2, "topRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 218
    .local v1, "topActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "push_down_out"

    const-string v4, "anim"

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 220
    invoke-static {v0, v3, v4, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "animOut":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "animOut":I
    .end local v1    # "topActivity":Landroid/app/Activity;
    .end local v2    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_0
    return-void

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivityFadingFinish exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AnimatorUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-string v0, "H5AnimatorUtil"

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "anim"

    if-eqz v1, :cond_3

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "topActivity":Landroid/app/Activity;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 63
    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    move-object v3, v4

    .line 65
    :cond_1
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->startActivityEnterAnim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    invoke-static {v4, v5, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "animIn":I
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->startActivityEnterExitAnim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "animOut":I
    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 72
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "animOut":I
    .end local v3    # "topActivity":Landroid/app/Activity;
    .end local v4    # "animIn":I
    :cond_2
    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 76
    .local v4, "topRef":Ljava/lang/ref/WeakReference;
    move-object v4, v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 78
    .restart local v3    # "topActivity":Landroid/app/Activity;
    move-object v3, v1

    if-eqz v1, :cond_5

    .line 79
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->presentWithAnimation(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "push_up_in"

    sget-object v6, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 81
    invoke-static {v1, v5, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "animIn":I
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "dismiss_out"

    .line 83
    invoke-static {v5, v7, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 84
    .restart local v2    # "animOut":I
    invoke-virtual {v3, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 86
    .end local v1    # "animIn":I
    .end local v2    # "animOut":I
    return-void

    .line 87
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "h5_slide_in_right"

    sget-object v6, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->a:Ljava/lang/String;

    .line 88
    invoke-static {v1, v5, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 89
    .restart local v1    # "animIn":I
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "h5_slide_out_left"

    .line 90
    invoke-static {v5, v7, v2, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 91
    .restart local v2    # "animOut":I
    invoke-virtual {v3, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v1    # "animIn":I
    .end local v2    # "animOut":I
    .end local v3    # "topActivity":Landroid/app/Activity;
    .end local v4    # "topRef":Ljava/lang/ref/WeakReference;
    :cond_5
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "overridePendingTransitionFromXml exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    return-void
.end method

.class public Lcom/alipay/mobile/quinox/utils/PrelaunchUtil;
.super Ljava/lang/Object;
.source "PrelaunchUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrelaunchUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preloadMisc(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
    .locals 7
    .param p0, "applicationContext"    # Landroid/app/Application;
    .param p1, "processInfo"    # Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 37
    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 41
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/LaunchStrategy;->PRELOAD_DOWNGRADE:Z

    if-eqz v0, :cond_1

    .line 42
    return-void

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    return-void

    .line 49
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    .line 50
    .local v0, "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_8

    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "prelaunch_preload"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    .local v1, "configNeedPreload":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v3

    .line 58
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "need_preload_sg"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    .local v3, "loginNeedPreload":Z
    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x1

    .line 60
    :goto_1
    if-nez v4, :cond_7

    .line 61
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v4

    .line 62
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 63
    const-string v6, "prelaunch_preload_gesture"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 64
    if-eqz v4, :cond_6

    .line 65
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v4

    .line 66
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 67
    const-string v6, "hasGesture"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 68
    if-nez v4, :cond_7

    .line 71
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsPreloadSg(Z)V

    .line 73
    goto :goto_3

    .line 74
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsPreloadSg(Z)V

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsPreloadSg(Z)V

    goto :goto_3

    .line 51
    .end local v1    # "configNeedPreload":Z
    .end local v3    # "loginNeedPreload":Z
    :cond_8
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupParam;->setIsPreloadSg(Z)V

    .line 81
    :goto_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;-><init>(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V

    const-string v3, "preload_sg"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 204
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 205
    return-void

    .line 208
    :cond_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$2;-><init>(Landroid/app/Application;)V

    const-string v3, "preload_ap_view"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 269
    return-void

    .line 38
    .end local v0    # "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    :cond_a
    :goto_4
    return-void
.end method

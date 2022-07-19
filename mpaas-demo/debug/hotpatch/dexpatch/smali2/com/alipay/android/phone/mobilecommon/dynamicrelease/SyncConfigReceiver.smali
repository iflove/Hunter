.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/SyncConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncConfigReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.ACTION_SYNC_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :try_start_0
    const-string v0, "dynamicrelease_config"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    .local v1, "configJson":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->update(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v1    # "configJson":Ljava/lang/String;
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

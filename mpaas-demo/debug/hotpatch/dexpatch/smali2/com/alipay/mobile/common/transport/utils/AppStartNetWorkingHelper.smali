.class public Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper;
.super Ljava/lang/Object;
.source "AppStartNetWorkingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final runOnAppStart(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isShowUserTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    .local v1, "bmng":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v2, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;

    invoke-direct {v2, p1, p0}, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.alipay.mobile.client.STARTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "bmng":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppStartNetWorkingHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 38
    return-void
.end method

.class public Lcom/alipay/mobile/core/impl/ActivityAllStoppedCallback;
.super Ljava/lang/Object;
.source "ActivityAllStoppedCallback.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/ActivityAllStoppedCallback;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/ActivityAllStoppedCallback;->a:Landroid/content/Context;

    .line 29
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 30
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.ACTIVITY_ALL_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    nop

    .end local v0    # "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v1    # "intent":Landroid/content/Intent;
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityAllStoppedCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

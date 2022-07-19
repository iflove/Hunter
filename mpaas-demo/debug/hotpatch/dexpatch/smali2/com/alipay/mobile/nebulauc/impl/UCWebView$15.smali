.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$15;
.super Landroid/content/BroadcastReceiver;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->registerAppXResourceLoadedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1532
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1536
    :try_start_0
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$800()V

    .line 1537
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$2000()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v0

    .line 1539
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UCWebView"

    const-string v2, "preloadAppXJs error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1541
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

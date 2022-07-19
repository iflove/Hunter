.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$2;
.super Ljava/lang/Object;
.source "UcNetworkSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->clearUcHttpCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    const-string v0, "H5UcService::UcNetworkSetup"

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "cleanHttpCache CORE_EVENT_CLEAR_HTTP_CACHE"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    .line 260
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "cleanHttpCache error!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

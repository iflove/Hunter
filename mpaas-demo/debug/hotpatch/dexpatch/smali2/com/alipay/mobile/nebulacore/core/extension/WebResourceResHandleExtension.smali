.class public Lcom/alipay/mobile/nebulacore/core/extension/WebResourceResHandleExtension;
.super Ljava/lang/Object;
.source "WebResourceResHandleExtension.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/extensions/network/WebResourceResponseHandlePoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    .line 42
    return-void
.end method

.method public onHandleResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;ZZ[BLjava/lang/String;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isMainDoc"    # Z
    .param p4, "isGzip"    # Z
    .param p5, "content"    # [B
    .param p6, "charset"    # Ljava/lang/String;

    .line 16
    const-string v0, "WebResourceResHandleExtension"

    const-string v1, "WebResourceResHandleExtension onHandleResponse"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    if-eqz p3, :cond_1

    .line 20
    if-eqz p4, :cond_0

    .line 21
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 22
    invoke-static {p5}, Lcom/alipay/mobile/common/transport/utils/GzipUtils;->unGzip([B)[B

    move-result-object v2

    invoke-direct {v1, v2, p6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 21
    invoke-static {p1, p2, v1}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p5, p6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1, p2, v1}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_1
    invoke-static {p1, p2, p5}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "onHandleResponse, "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 37
    return-void
.end method

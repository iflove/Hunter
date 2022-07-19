.class public Lcom/alipay/mobile/nebulacore/core/extension/HttpRequestResHandleExtension;
.super Ljava/lang/Object;
.source "HttpRequestResHandleExtension.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    .line 25
    return-void
.end method

.method public onHandleResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 13
    const-string v0, "HttpRequestResHandleExtension"

    const-string v1, "HttpRequestResHandleExtension onHandleResponse"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 20
    return-void
.end method

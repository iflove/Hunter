.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;
.super Ljava/lang/Object;
.source "H5RpcServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static rpcGoWallet()Z
    .locals 2

    .line 13
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

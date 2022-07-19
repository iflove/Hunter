.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;
.super Ljava/lang/Object;
.source "H5SimpleRpcService.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

.field private b:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->a:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->b:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # [B
    .param p3, "var3"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->a:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->b:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public setWalletSimpleService(Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;)V
    .locals 0
    .param p1, "simpleService"    # Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->a:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 18
    return-void
.end method

.method public setmInsideSimpleRpcService(Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;)V
    .locals 0
    .param p1, "simpleRpcService"    # Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5SimpleRpcService;->b:Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 22
    return-void
.end method

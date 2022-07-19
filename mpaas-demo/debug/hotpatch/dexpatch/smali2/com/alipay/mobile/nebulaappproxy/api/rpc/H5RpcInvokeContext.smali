.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;
.super Ljava/lang/Object;
.source "H5RpcInvokeContext.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

.field private b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V
    .locals 0
    .param p1, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    .line 16
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public clearRequestHeaders()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->clearRequestHeaders()V

    .line 60
    :cond_0
    return-void
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAllowBgLogin()Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->isAllowBgLogin()Z

    move-result v0

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowNonNet()Z
    .locals 1

    .line 150
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->isAllowNonNet()Z

    move-result v0

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeRequestHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->removeRequestHeaders(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setAllowBgLogin(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 131
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowBgLogin(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setAllowNonNet(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 144
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowNonNet(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public setAllowRetry(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowRetry(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppId(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 107
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setBgRpc(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setBizLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "bizInfo"    # Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setBizLog(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setCompress(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setCompress(Z)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setCompress(Z)V

    .line 82
    return-void
.end method

.method public setDisableEncrypt(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 179
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setDisableEncrypt(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public setGetMethod(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 173
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGetMethod(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRequestHeaders(Ljava/util/Map;)V

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRequestHeaders(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 99
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setResetCookie(Z)V

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setResetCookie(Z)V

    .line 104
    return-void
.end method

.method public setRpcLoggerLevel(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRpcLoggerLevel(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setRpcV2(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 125
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRpcV2(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public setSwitchUserLoginRpc(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setSwitchUserLoginRpc(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "var1"    # J

    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->b:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V

    .line 24
    return-void
.end method

.method public setUrgent(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setUrgent(Z)V

    .line 122
    :cond_0
    return-void
.end method

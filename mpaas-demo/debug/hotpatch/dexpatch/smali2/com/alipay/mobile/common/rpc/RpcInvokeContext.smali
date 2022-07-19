.class public interface abstract Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
.super Ljava/lang/Object;
.source "RpcInvokeContext.java"


# virtual methods
.method public abstract addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
.end method

.method public abstract clearRequestHeaders()V
.end method

.method public abstract getExtParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGwUrl()Ljava/lang/String;
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponseAllHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShortLinkIPList()Ljava/lang/String;
.end method

.method public abstract isAllowBgLogin()Z
.end method

.method public abstract isAllowNonNet()Z
.end method

.method public abstract removeRequestHeaders(Ljava/lang/String;)V
.end method

.method public abstract removeRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)Z
.end method

.method public abstract setAllowBgLogin(Z)V
.end method

.method public abstract setAllowNonNet(Z)V
.end method

.method public abstract setAllowRetry(Z)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAppKey(Ljava/lang/String;)V
.end method

.method public abstract setBgRpc(Z)V
.end method

.method public abstract setBizLog(Ljava/lang/String;)V
.end method

.method public abstract setCompress(Z)V
.end method

.method public abstract setDisableEncrypt(Z)V
.end method

.method public abstract setEnableEncrypt(Z)V
.end method

.method public abstract setExtParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGetMethod(Z)V
.end method

.method public abstract setGwUrl(Ljava/lang/String;)V
.end method

.method public abstract setNeedSignature(Z)V
.end method

.method public abstract setRequestHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResetCookie(Z)V
.end method

.method public abstract setRpcLoggerLevel(I)V
.end method

.method public abstract setRpcV2(Z)V
.end method

.method public abstract setShortLinkIPList(Ljava/lang/String;)V
.end method

.method public abstract setShortLinkOnly(Z)V
.end method

.method public abstract setSwitchUserLoginRpc(Z)V
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract setUrgent(Z)V
.end method

.method public abstract setUseMultiplexLink(Z)V
.end method

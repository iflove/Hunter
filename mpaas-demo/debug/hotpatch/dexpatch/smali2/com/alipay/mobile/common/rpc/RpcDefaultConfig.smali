.class public abstract Lcom/alipay/mobile/common/rpc/RpcDefaultConfig;
.super Ljava/lang/Object;
.source "RpcDefaultConfig.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 25
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public abstract getTransport()Lcom/alipay/mobile/common/transport/Transport;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "header"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    .line 35
    return-void
.end method

.method public isCompress()Z
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

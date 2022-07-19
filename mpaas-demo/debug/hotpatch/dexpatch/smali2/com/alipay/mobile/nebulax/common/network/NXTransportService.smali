.class public interface abstract Lcom/alipay/mobile/nebulax/common/network/NXTransportService;
.super Ljava/lang/Object;
.source "NXTransportService.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/Proxiable;


# virtual methods
.method public abstract httpRequest(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;
.end method

.method public abstract simpleRpc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract unifyRpc(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;)Ljava/lang/String;
.end method

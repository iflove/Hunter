.class public Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
.super Ljava/lang/Object;
.source "NXRpcRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;-><init>(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    .line 54
    return-void
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->appKey:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$602(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    return-object v0
.end method

.method public compress(Z)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->compress:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$402(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Z)Z

    .line 73
    return-object p0
.end method

.method public gateway(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->gateway:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$302(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public headers(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->joHeaders:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$502(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    .line 78
    return-object p0
.end method

.method public operationType(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->operationType:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$102(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public requestData(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->requestData:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$202(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public retryable(Z)Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;->request:Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->retryable:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->access$702(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Z)Z

    .line 88
    return-object p0
.end method

.class public Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;
.super Ljava/lang/Object;
.source "NXRpcRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    }
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private compress:Z

.field private gateway:Ljava/lang/String;

.field private joHeaders:Lcom/alibaba/fastjson/JSONObject;

.field private operationType:Ljava/lang/String;

.field private requestData:Ljava/lang/String;

.field private retryable:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->operationType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->requestData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->gateway:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->compress:Z

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->joHeaders:Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->retryable:Z

    return p1
.end method

.method public static newBuilder()Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;
    .locals 1

    .line 16
    new-instance v0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getJoHeaders()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->joHeaders:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestData()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->requestData:Ljava/lang/String;

    return-object v0
.end method

.method public isCompress()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->compress:Z

    return v0
.end method

.method public isRetryable()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcRequest;->retryable:Z

    return v0
.end method

.class public Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializerV2;
.super Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;
.source "SimpleRpcJsonSerializerV2.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getRequestDataJson()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializerV2;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 23
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    .local v1, "rpcParam":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "[]"

    return-object v0

    .line 27
    :cond_0
    return-object v1
.end method

.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "JsonDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 24
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 8

    .line 30
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 31
    .local v2, "res":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 33
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string/jumbo v4, "resultStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "resultStatus":I
    const-string/jumbo v4, "tips"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "memo":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_1

    .line 37
    new-instance v5, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 38
    .local v5, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    const/16 v6, 0x3ea

    if-ne v0, v6, :cond_0

    .line 39
    const-string v6, "control"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 40
    .local v1, "control":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v6

    if-eqz v6, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;->setControl(Ljava/lang/String;)V

    .line 44
    .end local v1    # "control":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    throw v5

    .line 49
    .end local v5    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    .local v1, "value":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const-class v6, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v7, "result"

    if-ne v5, v6, :cond_2

    .line 50
    :try_start_1
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    .line 55
    :goto_0
    return-object v1

    .line 57
    .end local v0    # "resultStatus":I
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "res":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "memo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response  ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
.end method

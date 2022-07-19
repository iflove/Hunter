.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "JsonDeserializerV2.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/Response;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 35
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->a:Lcom/alipay/mobile/common/transport/Response;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "resData"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "threadid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; rpc response:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " is null "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "JsonDeserializerV2"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 7

    .line 43
    const-string v0, ""

    .line 48
    .local v0, "res":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->a:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v2}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 50
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 51
    return-object v1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mData:[B

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    move-object v0, v2

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 59
    :catchall_0
    move-exception v2

    move-object v3, v1

    .line 60
    .local v3, "e":Ljava/lang/Throwable;
    move-object v3, v2

    instance-of v2, v2, Lcom/alipay/mobile/common/rpc/RpcException;

    if-nez v2, :cond_2

    .line 63
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    const-string v4, "JsonDeserializerV2"

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "response  ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 69
    .local v1, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    move-object v1, v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->a(Ljava/lang/String;)V

    .line 71
    throw v1

    .line 61
    .end local v1    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    :cond_2
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v1
.end method

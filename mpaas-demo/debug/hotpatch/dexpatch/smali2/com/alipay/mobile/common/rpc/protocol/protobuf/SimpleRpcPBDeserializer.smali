.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;
.source "SimpleRpcPBDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    .line 26
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 3

    .line 31
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SimpleRpc"

    const-string v2, "====SimpleRpcPBDeserializer====parser"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;->response:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;->mType:Ljava/lang/reflect/Type;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;->mData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    move-object v0, v1

    instance-of v1, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v1

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "SimpleRpcPBDeserializer"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method

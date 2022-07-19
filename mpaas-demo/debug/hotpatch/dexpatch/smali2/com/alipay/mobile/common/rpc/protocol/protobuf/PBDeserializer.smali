.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "PBDeserializer.java"


# instance fields
.field public response:Lcom/alipay/mobile/common/transport/Response;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 29
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->response:Lcom/alipay/mobile/common/transport/Response;

    .line 31
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 4

    .line 36
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->response:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->mType:Ljava/lang/reflect/Type;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 39
    return-object v0

    .line 42
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 47
    .local v0, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->mType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->mData:[B

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->deserialize(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 48
    .end local v0    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :catchall_0
    move-exception v1

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    move-object v0, v1

    instance-of v1, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v1

    .line 52
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "PBDeserializer"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method

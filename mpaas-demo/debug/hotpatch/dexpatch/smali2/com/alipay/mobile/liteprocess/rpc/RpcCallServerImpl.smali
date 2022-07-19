.class public Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;
.super Ljava/lang/Object;
.source "RpcCallServerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/liteprocess/rpc/RpcCall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/RpcException;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .locals 8
    .param p0, "e"    # Lcom/alipay/mobile/common/rpc/RpcException;

    .line 138
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;-><init>(Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 139
    .local v0, "liteRpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    new-instance v1, Lcom/alipay/mobile/liteprocess/rpc/CallRet;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/rpc/CallRet;-><init>()V

    .line 140
    .local v1, "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 142
    .local v2, "out":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "exp":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LiteProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "packetException error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "exp":Ljava/lang/Exception;
    goto :goto_0

    .line 149
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->isException:Z

    .line 150
    return-object v1

    .line 147
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private static a(Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .locals 6
    .param p0, "ret"    # Ljava/lang/Object;
    .param p1, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    .param p2, "innerRpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 118
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/rpc/CallRet;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 119
    .local v2, "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->isException:Z

    .line 120
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimpleJsonV1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimplePBV1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_4

    .line 129
    :cond_2
    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 130
    .local v1, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    .line 131
    .local v0, "data":[B
    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B

    goto :goto_4

    .line 121
    .end local v0    # "data":[B
    .end local v1    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :cond_3
    :goto_2
    if-nez p0, :cond_4

    const-string v0, "[]"

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    .line 122
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    nop

    .line 124
    .local v0, "bodyStr":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_4

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "packetRet error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiteProcess"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "bodyStr":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 133
    :goto_4
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;-><init>(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    .line 134
    return-object v2
.end method

.method private static a(Ljava/lang/reflect/Method;[BLcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)[Ljava/lang/Object;
    .locals 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "argsBody"    # [B
    .param p2, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 96
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "types":[Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV1()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimpleJsonV1()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimplePBV1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 112
    .local v1, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-interface {v1, v4, p1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->deserialize(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    .line 114
    .end local v1    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :cond_1
    return-object v2

    .line 98
    :cond_2
    :goto_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    .line 99
    .local v3, "res":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v4, v2

    .line 100
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    array-length v5, v0

    if-eq v1, v5, :cond_3

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "LiteProcess"

    const-string v6, "jsonArray.size() != types.length"

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v2

    .line 104
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "retObjs":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 106
    aget-object v5, v0, v2

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 107
    .local v5, "retObj":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "retObj":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public call(Lcom/alipay/mobile/liteprocess/rpc/CallArgs;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .locals 11

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RpcCallServerImpl call begin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;-><init>()V

    .line 44
    iget-byte v1, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->protoType:B

    iput-byte v1, v0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 46
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->className:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 48
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 49
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_0

    .line 50
    nop

    .line 51
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    :cond_1
    move-object v7, v1

    .line 59
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    .line 60
    const-class v5, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 62
    iget-object v5, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->argsBody:[B

    invoke-static {v7, v5, v0}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;->a(Ljava/lang/reflect/Method;[BLcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)[Ljava/lang/Object;

    move-result-object v5

    .line 63
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    .line 65
    iget-object v6, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->setInnerRpcInvokeContext(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 66
    invoke-virtual {v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowBgLogin(Z)V

    .line 67
    nop

    .line 68
    nop

    .line 70
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RpcCallServerImpl invoke begin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4, v3, v7, v5}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RpcCallServerImpl invoke end "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 76
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 73
    :catch_0
    move-exception v1

    goto :goto_3

    .line 76
    :catchall_1
    move-exception v5

    move-object v3, v1

    .line 77
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RpcCallServerImpl  error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 73
    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    .line 74
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RpcCallServerImpl RpcException "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    nop

    .line 78
    :goto_4
    nop

    .line 80
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RpcCallServerImpl call end "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-eqz v1, :cond_2

    .line 82
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;->a(Lcom/alipay/mobile/common/rpc/RpcException;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;

    move-result-object p1

    return-object p1

    .line 85
    :cond_2
    invoke-virtual {v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    goto :goto_6

    .line 88
    :cond_3
    iget-object p1, p1, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    .line 90
    :goto_6
    invoke-static {v3, v0, p1}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallServerImpl;->a(Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;

    move-result-object p1

    return-object p1

    .line 54
    :catch_2
    move-exception p1

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RpcCallServerImpl call ClassNotFoundException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v1
.end method

.class public Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;
.super Lcom/alipay/mobile/common/rpc/RpcInvoker;
.source "RpcCallClientInvoker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 0
    .param p1, "rpcFactory"    # Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    .line 38
    return-void
.end method

.method private static a([B)Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    .locals 7
    .param p0, "retBody"    # [B

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, "in":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 142
    .local v1, "rpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 143
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    const-class v2, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 148
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unpacketException error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 150
    :goto_1
    return-object v1

    .line 148
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private static a(Ljava/lang/reflect/Method;[BLcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/Object;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "retBody"    # [B
    .param p2, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 106
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 107
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV1()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimpleJsonV1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimplePBV1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_2
    :goto_0
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 112
    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->deserialize(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 108
    :cond_3
    :goto_1
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;)V
    .locals 2
    .param p0, "origInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p1, "invokeContext"    # Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    .line 119
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-wide v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->timeout:J

    iput-wide v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    .line 123
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->gwUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 125
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->compress:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 126
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 128
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 129
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 130
    iget-object v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    .line 131
    iget-boolean v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isUrgent:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isUrgent:Z

    .line 132
    iget-boolean v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isRpcV2:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isRpcV2:Z

    .line 133
    iget-boolean v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowBgLogin:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowBgLogin:Z

    .line 134
    iget-boolean v0, p1, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowNonNet:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    .line 135
    return-void

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method private static a([Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)[B
    .locals 6
    .param p0, "args"    # [Ljava/lang/Object;
    .param p1, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 89
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimpleJsonV1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimplePBV1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 99
    .local v2, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 97
    .end local v2    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :cond_1
    :goto_0
    goto :goto_3

    .line 90
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    const-string v0, "[]"

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "bodyStr":Ljava/lang/String;
    :goto_2
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "packetArgs error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiteProcess"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "bodyStr":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 101
    :goto_3
    return-object v2
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;
    .locals 16
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RpcCallClientInvoker invoke begin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "LiteProcess"

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, v1, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 47
    .local v12, "id":I
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;-><init>()V

    move-object v13, v0

    .line 48
    .local v13, "protoDesc":Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 49
    .local v14, "operationTypeValue":Ljava/lang/String;
    iget-object v2, v1, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->getScene()Ljava/lang/String;

    move-result-object v7

    .line 49
    move v3, v12

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v2

    .line 51
    .local v2, "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    sget-object v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 54
    :cond_1
    move-object/from16 v3, p4

    invoke-static {v3, v13}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->a([Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)[B

    move-result-object v4

    .line 55
    .local v4, "argsBody":[B
    const/4 v5, 0x0

    .line 57
    .local v5, "ret":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    :try_end_0
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    check-cast v0, Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    :try_end_2
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v0

    .line 58
    .local v7, "rpcCall":Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;-><init>()V

    move-object v8, v6

    .line 59
    .local v8, "callArgs":Lcom/alipay/mobile/liteprocess/rpc/CallArgs;
    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->className:Ljava/lang/String;

    .line 60
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->methodName:Ljava/lang/String;

    .line 61
    iput-object v4, v8, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->argsBody:[B

    .line 62
    iget-byte v0, v13, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    iput-byte v0, v8, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->protoType:B

    .line 63
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-direct {v0, v10}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;-><init>(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    iput-object v0, v8, Lcom/alipay/mobile/liteprocess/rpc/CallArgs;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "RpcCallClientInvoker call begin "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v11, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v7, v8}, Lcom/alipay/mobile/liteprocess/rpc/RpcCall;->call(Lcom/alipay/mobile/liteprocess/rpc/CallArgs;)Lcom/alipay/mobile/liteprocess/rpc/CallRet;

    move-result-object v0

    .line 67
    .local v0, "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "RpcCallClientInvoker call end "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v11, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-boolean v6, v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->isException:Z
    :try_end_3
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    .line 70
    :try_start_4
    iget-object v6, v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B

    invoke-static {v6}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->a([B)Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;

    move-result-object v6

    const/4 v9, 0x0

    .line 71
    .local v9, "rpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    move-object v9, v6

    if-nez v6, :cond_2

    .line 74
    .end local v9    # "rpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    move-object/from16 v9, p3

    goto :goto_3

    .line 72
    .restart local v9    # "rpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    :cond_2
    nop

    .end local v2    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .end local v4    # "argsBody":[B
    .end local v5    # "ret":Ljava/lang/Object;
    .end local v12    # "id":I
    .end local v13    # "protoDesc":Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    .end local v14    # "operationTypeValue":Ljava/lang/String;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "clazz":Ljava/lang/Class;
    .end local p3    # "method":Ljava/lang/reflect/Method;
    .end local p4    # "args":[Ljava/lang/Object;
    .end local p5    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    throw v9
    :try_end_4
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    .end local v0    # "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .end local v7    # "rpcCall":Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    .end local v8    # "callArgs":Lcom/alipay/mobile/liteprocess/rpc/CallArgs;
    .end local v9    # "rpcException":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    .restart local v2    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .restart local v4    # "argsBody":[B
    .restart local v5    # "ret":Ljava/lang/Object;
    .restart local v12    # "id":I
    .restart local v13    # "protoDesc":Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    .restart local v14    # "operationTypeValue":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "clazz":Ljava/lang/Class;
    .restart local p3    # "method":Ljava/lang/reflect/Method;
    .restart local p4    # "args":[Ljava/lang/Object;
    .restart local p5    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    :catch_0
    move-exception v0

    move-object v6, v7

    goto :goto_1

    .line 75
    .restart local v0    # "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .restart local v7    # "rpcCall":Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    .restart local v8    # "callArgs":Lcom/alipay/mobile/liteprocess/rpc/CallArgs;
    :cond_3
    :try_start_5
    iget-object v6, v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B
    :try_end_5
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v9, p3

    :try_start_6
    invoke-static {v9, v6, v13}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->a(Ljava/lang/reflect/Method;[BLcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 76
    iget-object v6, v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-static {v10, v6}, Lcom/alipay/mobile/liteprocess/rpc/RpcCallClientInvoker;->a(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;)V
    :try_end_6
    .catch Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    .end local v0    # "callRet":Lcom/alipay/mobile/liteprocess/rpc/CallRet;
    .end local v7    # "rpcCall":Lcom/alipay/mobile/liteprocess/rpc/RpcCall;
    .end local v8    # "callArgs":Lcom/alipay/mobile/liteprocess/rpc/CallArgs;
    goto :goto_3

    .line 80
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 79
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v9, p3

    :goto_0
    move-object v6, v7

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_1
    move-object/from16 v9, p3

    goto :goto_4

    .line 80
    :catchall_1
    move-exception v0

    move-object/from16 v9, p3

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RpcCallClientInvoker invoke error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RpcCallClientInvoker invoke end "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v11, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v5

    .line 79
    :catch_4
    move-exception v0

    move-object/from16 v9, p3

    const/4 v6, 0x0

    .local v6, "e":Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
    :goto_4
    throw v0
.end method

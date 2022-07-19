.class public Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 0
    .param p1, "rpcFactory"    # Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 50
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 4
    .param p0, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayUrl(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SerializerFactory"

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    const-string v0, "isSupportRpcV2ForEnv is true"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    const-string v0, "isSupportRpcV2ForEnv is false"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal url config, url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "params"    # [Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 217
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 222
    .local v1, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    const/4 v2, 0x1

    if-eqz p0, :cond_0

    array-length v3, p0

    if-ne v3, v2, :cond_0

    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->isPBBean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    return v2

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->isPBBean(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 225
    return v2

    .line 227
    :cond_1
    return v0

    .line 228
    .end local v1    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SerializerFactory"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 55
    iget-boolean v0, p3, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isRpcV2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 56
    return v1

    .line 60
    :cond_0
    iget-boolean v0, p3, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isGetMethod:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 61
    return v2

    .line 65
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getRpcVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 66
    .local v4, "rpcVersion":Ljava/lang/String;
    move-object v4, v0

    const-string v5, "V2"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    return v1

    .line 68
    :cond_2
    const-string v0, "V1"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    return v2

    .line 72
    :cond_3
    invoke-static {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    return v2

    .line 76
    :cond_4
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a([Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    return v1

    .line 80
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v3

    .line 81
    .local v2, "enableAmnetSetting":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_6

    .line 82
    return v1

    .line 85
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledRpcV2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getContentType(Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/String;
    .locals 1
    .param p1, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 241
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "application/json"

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "application/protobuf"

    return-object v0

    .line 249
    :cond_1
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;
    .param p3, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 192
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimplePBV1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBDeserializer;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    return-object v0

    .line 204
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .locals 8
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "params"    # [Ljava/lang/Object;
    .param p5, "scene"    # Ljava/lang/String;
    .param p6, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p7, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    const/4 v0, 0x0

    .line 119
    .local v0, "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    invoke-direct {p0, p4, p3, p6}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a([Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-static {p4, p3}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a([Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x3

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 122
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 123
    :cond_0
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 124
    iput-byte v2, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 125
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializerV2;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializerV2;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 126
    :cond_1
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    const/4 v1, 0x4

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 129
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 131
    :cond_2
    iput-byte v2, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 132
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 135
    :cond_3
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 137
    const/4 v1, 0x1

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    goto :goto_0

    .line 138
    :cond_4
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-direct {v1, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 142
    .local v2, "jsonSerializer":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
    move-object v2, v1

    invoke-virtual {v1, p5}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->setScene(Ljava/lang/String;)V

    .line 143
    move-object v0, v2

    .line 144
    const/4 v1, 0x0

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 148
    .end local v2    # "jsonSerializer":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
    :goto_0
    new-instance v7, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p6, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isReq2Online()Z

    move-result v5

    move-object v1, v7

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;-><init>(Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 151
    return-object v7

    .line 139
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "alipay.client.executerpc.bytes can\'t use in RpcV1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReq2Online()Z
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getConfig()Lcom/alipay/mobile/common/rpc/Config;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 163
    .local v2, "config":Lcom/alipay/mobile/common/rpc/Config;
    move-object v2, v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "rpc"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "handler.getConfig().getUrl() is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v4

    .line 169
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {v2}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v5, "alipay.com"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 171
    return v4

    .line 173
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 175
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/net/MalformedURLException;
    return v4
.end method

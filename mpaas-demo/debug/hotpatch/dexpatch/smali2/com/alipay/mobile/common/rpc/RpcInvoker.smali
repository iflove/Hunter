.class public Lcom/alipay/mobile/common/rpc/RpcInvoker;
.super Ljava/lang/Object;
.source "RpcInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;
    }
.end annotation


# static fields
.field protected static final EXT_PARAM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:B

.field private d:Lcom/alipay/mobile/common/rpc/RpcFactory;

.field protected rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 2
    .param p1, "rpcFactory"    # Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:B

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    .line 105
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/transport/Response;
    .locals 19
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "operationTypeValue"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p6, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 416
    move-object/from16 v8, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p6}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getSerializer(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v6

    .line 418
    .local v6, "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "operationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",serializerClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v5, "RpcInvoker"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 425
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, v3

    .line 426
    .local v2, "tmpOperType":Ljava/lang/String;
    move-object v2, v1

    const-string v4, "data_serialize"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v1, v3

    .line 430
    .local v1, "body":[B
    :try_start_0
    invoke-interface {v6}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->packet()[B

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v9

    .line 432
    .end local v1    # "body":[B
    .local v18, "body":[B
    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 433
    nop

    .line 435
    if-eqz v18, :cond_1

    .line 439
    new-instance v4, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    iget-object v1, v8, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getConfig()Lcom/alipay/mobile/common/rpc/Config;

    move-result-object v10

    iget-object v1, v8, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    .line 440
    move-object/from16 v15, p6

    invoke-virtual {v1, v15}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getContentType(Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v8, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v9, v4

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p3

    move-object/from16 v14, v18

    move-object v15, v1

    move-object/from16 v17, p5

    invoke-direct/range {v9 .. v17}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 442
    .local v4, "caller":Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
    move-object/from16 v1, p0

    move-object v9, v2

    .end local v2    # "tmpOperType":Ljava/lang/String;
    .local v9, "tmpOperType":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object v10, v3

    move-object v3, v6

    move-object v11, v5

    move-object/from16 v5, p3

    move-object v12, v6

    .end local v6    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .local v12, "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    move-object/from16 v6, v18

    move-object v13, v7

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/protocol/Serializer;Lcom/alipay/mobile/common/rpc/transport/RpcCaller;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 444
    invoke-virtual {v4}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/Response;

    .line 446
    .local v1, "response":Lcom/alipay/mobile/common/transport/Response;
    invoke-virtual {v0, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " operationType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-object v1

    .line 436
    .end local v1    # "response":Lcom/alipay/mobile/common/transport/Response;
    .end local v4    # "caller":Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
    .end local v9    # "tmpOperType":Ljava/lang/String;
    .end local v12    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .restart local v2    # "tmpOperType":Ljava/lang/String;
    .restart local v6    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    :cond_1
    move-object v9, v2

    .end local v2    # "tmpOperType":Ljava/lang/String;
    .restart local v9    # "tmpOperType":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client serializer error. operation type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 432
    .end local v9    # "tmpOperType":Ljava/lang/String;
    .end local v18    # "body":[B
    .local v1, "body":[B
    .restart local v2    # "tmpOperType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v9, v2

    move-object v10, v3

    move-object v12, v6

    move-object v13, v7

    move-object v2, v0

    .end local v2    # "tmpOperType":Ljava/lang/String;
    .end local v6    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .restart local v9    # "tmpOperType":Ljava/lang/String;
    .restart local v12    # "serializer":Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    invoke-static {v9, v4, v10}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v2
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;[I)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 18
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "ts"    # Ljava/lang/String;
    .param p4, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p5, "signCostPtr"    # [I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string/jumbo v4, "ms. "

    const-string v5, "[getSignData] sign time = "

    .line 456
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    move-object v7, v6

    .line 457
    .local v7, "signPlain":Ljava/lang/StringBuffer;
    move-object v7, v0

    const-string v8, "Operation-Type="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v0, "Request-Data="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    const-string v0, "Ts="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "content":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    const-string v11, "RpcInvoker"

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "[getSignData] sign content: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object v0, v3, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAlipayGW(Ljava/lang/String;)Z

    move-result v12

    .line 466
    .local v12, "useSignAtlas":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 467
    .local v13, "startTime":J
    const-string/jumbo v15, "sign"

    invoke-static {v2, v15, v6}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 469
    const/16 v16, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v3, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v7

    .end local v7    # "signPlain":Ljava/lang/StringBuffer;
    .local v17, "signPlain":Ljava/lang/StringBuffer;
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->isReq2Online(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v7

    invoke-static {v0, v6, v7, v10, v12}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;->signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 472
    .local v6, "signCost":J
    long-to-int v1, v6

    aput v1, p5, v16

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    invoke-static {v2, v15, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 469
    .end local v6    # "signCost":J
    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v17    # "signPlain":Ljava/lang/StringBuffer;
    .restart local v7    # "signPlain":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v7

    .end local v7    # "signPlain":Ljava/lang/StringBuffer;
    .restart local v17    # "signPlain":Ljava/lang/StringBuffer;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 472
    .restart local v6    # "signCost":J
    long-to-int v1, v6

    aput v1, p5, v16

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    invoke-static {v2, v15, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    .end local v6    # "signCost":J
    throw v0
.end method

.method private a(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;
    .param p3, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 215
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 216
    .local v0, "retType":Ljava/lang/reflect/Type;
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    invoke-virtual {v1, v0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getDeserializer(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;

    move-result-object v1

    .line 218
    .local v1, "deserializer":Lcom/alipay/mobile/common/rpc/protocol/Deserializer;
    invoke-static {p1, p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 219
    .local v4, "tmpOperType":Ljava/lang/String;
    move-object v4, v2

    const-string v5, "data_deserialize"

    invoke-static {v2, v5, v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/protocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "object":Ljava/lang/Object;
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v6, :cond_0

    .line 223
    sget-object v6, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    nop

    .line 227
    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    return-object v2

    .line 227
    .end local v2    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v2
.end method

.method private a(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/protocol/Serializer;Lcom/alipay/mobile/common/rpc/transport/RpcCaller;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "serializer"    # Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .param p3, "caller"    # Lcom/alipay/mobile/common/rpc/transport/RpcCaller;
    .param p4, "operationType"    # Ljava/lang/String;
    .param p5, "body"    # [B
    .param p6, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 487
    move-object v6, p3

    check-cast v6, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    .line 489
    .local v6, "httpCaller":Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    if-nez v0, :cond_4

    .line 490
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 506
    :cond_0
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    if-eqz v0, :cond_1

    .line 507
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    .line 508
    .local v0, "rpcV2Serializer":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .line 509
    const-string v1, "application/json"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 510
    .end local v0    # "rpcV2Serializer":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;
    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;

    const-string v1, "application/protobuf"

    if-eqz v0, :cond_2

    .line 511
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;

    .line 512
    .local v0, "simpleRpcPBSerializer":Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .end local v0    # "simpleRpcPBSerializer":Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;
    goto :goto_0

    .line 514
    :cond_2
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    if-eqz v0, :cond_3

    .line 515
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    .line 516
    .local v0, "pbSerializer":Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    .end local v0    # "pbSerializer":Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;
    :cond_3
    :goto_0
    nop

    .line 521
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setExtObjectParam(Ljava/util/Map;)V

    .line 522
    const-string v0, "2"

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setRpcVersion(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setScene(Ljava/lang/String;)V

    .line 524
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;)V

    .line 526
    return-void

    .line 492
    :cond_4
    :goto_2
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    if-eqz v0, :cond_5

    .line 493
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    .line 494
    .local v0, "sser":Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setSignData(Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;)V

    .line 496
    .end local v0    # "sser":Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;
    goto :goto_3

    .line 497
    :cond_5
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    .line 498
    .local v0, "sser":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .line 501
    .end local v0    # "sser":Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
    :goto_3
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 502
    const-string v0, "1"

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setRpcVersion(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "returnObj"    # Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "] methodName=["

    const-string v1, "ThreadId=["

    const-string v2, "RpcInvoker"

    if-eqz p2, :cond_0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] returnObj=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] returnObj=[ is null ]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;)V
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "body"    # [B
    .param p4, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p5, "httpCaller"    # Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    .line 674
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/GtsUtils;->get64HexCurrentTimeMillis()Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "timeStampStr":Ljava/lang/String;
    invoke-virtual {p5, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setTimeStamp(Ljava/lang/String;)V

    .line 676
    invoke-static {p1, p4}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->isNeedSign(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    return-void

    .line 680
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    move-object v8, v0

    .line 681
    .local v8, "signCostPtr":[I
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v6

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;[I)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0

    .line 682
    .local v0, "signData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    invoke-virtual {p5, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setSignData(Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;)V

    .line 683
    aget v1, v8, v7

    invoke-virtual {p5, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setSignCost(I)V

    .line 684
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .locals 3
    .param p0, "rpcException"    # Lcom/alipay/mobile/common/rpc/RpcException;

    .line 650
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->isServerError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_1
    :goto_0
    return v1
.end method

.method private a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z
    .locals 7
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p2, "handle"    # Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;

    .line 247
    const/4 v0, 0x1

    .line 249
    .local v0, "ret":Z
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v5, p1, v2

    .line 250
    .local v3, "annotation":Ljava/lang/annotation/Annotation;
    move-object v3, v5

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 251
    .local v5, "c":Ljava/lang/Class;
    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/rpc/RpcFactory;->findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    move-result-object v6

    .line 252
    .local v4, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    move-object v4, v6

    if-eqz v6, :cond_0

    .line 258
    invoke-interface {p2, v4, v3}, Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;->handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    move v0, v6

    if-eqz v6, :cond_1

    .line 249
    .end local v3    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v4    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .end local v5    # "c":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    nop

    .line 271
    return v0

    .line 263
    :catchall_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAnnotations ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RpcInvoker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    instance-of v2, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v2, :cond_2

    .line 266
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v2

    .line 268
    :cond_2
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/rpc/RpcInvoker;)Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 52
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 555
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 556
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 558
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method public static checkMainThread()Z
    .locals 2

    .line 669
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNeedSign(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 607
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->needSignature:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->needSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 609
    .local v0, "tmpNeedSignature":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[isNeedSign] needSignature = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RpcInvoker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return v0

    .line 613
    .end local v0    # "tmpNeedSignature":Z
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    const/4 v1, 0x0

    .line 614
    .local v1, "signCheck":Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    move-object v1, v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 615
    return v2

    .line 618
    :cond_1
    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/annotation/SignCheck;->value()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "no"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static perfLog(Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/String;)Z
    .locals 6
    .param p0, "rpcException"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .param p1, "operationType"    # Ljava/lang/String;

    const-string v0, "RpcInvoker"

    .line 625
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    return v1

    .line 629
    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;

    invoke-direct {v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;-><init>()V

    const/4 v3, 0x0

    .line 630
    .local v3, "pf":Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;
    move-object v3, v2

    const-string v4, "RPC"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->setSubType(Ljava/lang/String;)V

    .line 631
    const-string v2, "RPC_ERROR"

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->setParam1(Ljava/lang/String;)V

    .line 632
    const-string v2, "DEBUG"

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->setParam2(Ljava/lang/String;)V

    .line 633
    const-string v2, "-"

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->setParam3(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string v4, "ERR_CODE"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string v4, "ERR_MSG"

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string v4, "API"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-virtual {v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {v3}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->record(Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    const/4 v0, 0x1

    return v0

    .line 643
    .end local v3    # "pf":Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorLoggerModel;
    :catchall_0
    move-exception v2

    .line 644
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[perfLog] Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method


# virtual methods
.method protected asyncNotifyRpcHeaderUpdateEvent(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "response"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 191
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .line 537
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:B

    .line 538
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "*>;"
        }
    .end annotation

    .line 544
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:B

    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method protected exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;J)V
    .locals 13
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p7, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .param p8, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p9, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            "J)V"
        }
    .end annotation

    .line 329
    move-object v9, p0

    invoke-static/range {p4 .. p5}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    move-object v1, v10

    .line 330
    .local v1, "tmpOperType":Ljava/lang/String;
    move-object v11, v0

    .end local v1    # "tmpOperType":Ljava/lang/String;
    .local v11, "tmpOperType":Ljava/lang/String;
    const-string v12, "exceptionHandle"

    invoke-static {v0, v12, v10}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 333
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p6

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    if-nez v0, :cond_0

    .line 357
    invoke-static {v11, v12, v10}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 358
    return-void

    .line 352
    :cond_0
    :try_start_2
    invoke-static/range {p4 .. p5}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, p4

    move-wide/from16 v3, p9

    :try_start_3
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->printAllTimeLog(Ljava/lang/reflect/Method;Ljava/lang/String;J)V

    .line 353
    nop

    .end local v11    # "tmpOperType":Ljava/lang/String;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "rawResult":[B
    .end local p3    # "clazz":Ljava/lang/Class;
    .end local p4    # "method":Ljava/lang/reflect/Method;
    .end local p5    # "args":[Ljava/lang/Object;
    .end local p6    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local p8    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .end local p9    # "startTime":J
    throw p7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    .restart local v11    # "tmpOperType":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "rawResult":[B
    .restart local p3    # "clazz":Ljava/lang/Class;
    .restart local p4    # "method":Ljava/lang/reflect/Method;
    .restart local p5    # "args":[Ljava/lang/Object;
    .restart local p6    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local p8    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .restart local p9    # "startTime":J
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p4

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    :goto_0
    move-wide/from16 v3, p9

    :goto_1
    invoke-static {v11, v12, v10}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0
.end method

.method public getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 236
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getSerializer(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .locals 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "operationTypeValue"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p6, "protoDesc"    # Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v5

    move v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public getSerializerFactory()Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;
    .locals 23
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

    .line 121
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    const-string/jumbo v15, "rpc_second_half"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadId=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]  invoke. object=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  methodName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpcInvoker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "rpc_task"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rpc_first_half"

    invoke-static {v0, v1, v11}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 132
    .local v8, "startTime":J
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 135
    iget-object v0, v12, Lcom/alipay/mobile/common/rpc/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v16

    .line 137
    .local v16, "id":I
    const/16 v17, 0x0

    .line 138
    .local v17, "response":Lcom/alipay/mobile/common/transport/Response;
    const/16 v18, 0x0

    .line 141
    .local v18, "returnObj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 143
    iget-byte v0, v12, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:B

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;-><init>()V

    .line 145
    .local v0, "protoDesc":Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v5, v16

    move-object/from16 v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v17    # "response":Lcom/alipay/mobile/common/transport/Response;
    .local v1, "response":Lcom/alipay/mobile/common/transport/Response;
    :try_start_1
    invoke-direct {v12, v13, v1, v0, v14}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v18    # "returnObj":Ljava/lang/Object;
    .local v2, "returnObj":Ljava/lang/Object;
    goto :goto_0

    .line 151
    .end local v0    # "protoDesc":Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
    .end local v2    # "returnObj":Ljava/lang/Object;
    .restart local v18    # "returnObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_1

    .line 159
    .end local v1    # "response":Lcom/alipay/mobile/common/transport/Response;
    .restart local v17    # "response":Lcom/alipay/mobile/common/transport/Response;
    :cond_0
    :goto_0
    move-wide/from16 v19, v8

    move-object/from16 v22, v10

    move-object/from16 v21, v15

    move-object v15, v11

    goto :goto_3

    .line 151
    :catch_1
    move-exception v0

    .line 153
    .local v0, "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_1
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v11}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15, v11}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->perfLog(Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/String;)Z

    .line 157
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    .line 158
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_1
    move-object v3, v11

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v19, v8

    .end local v8    # "startTime":J
    .local v19, "startTime":J
    move-object v8, v0

    move-object/from16 v9, p5

    move-object/from16 v22, v10

    move-object/from16 v21, v15

    move-object v15, v11

    move-wide/from16 v10, v19

    invoke-virtual/range {v1 .. v11}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;J)V

    .line 161
    .end local v0    # "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_3
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_2
    move-object v3, v15

    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 164
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v1, v19

    .end local v19    # "startTime":J
    .local v1, "startTime":J
    invoke-virtual {v12, v13, v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->printAllTimeLog(Ljava/lang/reflect/Method;Ljava/lang/String;J)V

    .line 168
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    goto :goto_5

    .line 168
    :cond_3
    move-object/from16 v0, v18

    .line 173
    .end local v18    # "returnObj":Ljava/lang/Object;
    .local v0, "returnObj":Ljava/lang/Object;
    :goto_5
    move-object/from16 v3, v17

    check-cast v3, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v12, v13, v14, v3}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->asyncNotifyRpcHeaderUpdateEvent(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V

    .line 175
    invoke-direct {v12, v13, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 178
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-static {v3, v4, v15}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-static {v3, v4, v15}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    return-object v0

    .line 124
    .end local v0    # "returnObj":Ljava/lang/Object;
    .end local v1    # "startTime":J
    .end local v16    # "id":I
    .end local v17    # "response":Lcom/alipay/mobile/common/transport/Response;
    :cond_4
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "can\'t call rpc in main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReq2Online(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 5
    .param p1, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 578
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RpcInvoker"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 579
    const-string v0, "handler.getConfig().getUrl() is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return v2

    .line 584
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 585
    .local v3, "url":Ljava/net/URL;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "mobilegw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v4, "alipay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v4, "alipay.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 587
    return v2

    .line 589
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 594
    .end local v3    # "url":Ljava/net/URL;
    :cond_2
    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return v2
.end method

.method protected postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 14
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p7, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")V"
        }
    .end annotation

    .line 288
    invoke-static/range {p4 .. p5}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 289
    .local v2, "tmpOperType":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "postHandle"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p0

    move-object/from16 v13, p6

    :try_start_1
    invoke-direct {p0, v13, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    .line 305
    sget-object v12, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v5 .. v12}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->postHandleForBizInterceptor(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Ljava/lang/ThreadLocal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    nop

    .line 310
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->postHandleForPacketSize(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 311
    return-void

    .line 307
    :catchall_0
    move-exception v0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v13, p6

    :goto_0
    move-object/from16 v7, p7

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0
.end method

.method protected preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 18
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p6, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")V"
        }
    .end annotation

    .line 375
    move-object/from16 v7, p0

    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    move-object v1, v8

    .line 376
    .local v1, "tmpOperType":Ljava/lang/String;
    move-object v9, v0

    .end local v1    # "tmpOperType":Ljava/lang/String;
    .local v9, "tmpOperType":Ljava/lang/String;
    const-string/jumbo v10, "preHandle"

    invoke-static {v0, v10, v8}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 379
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/rpc/RpcInvoker$4;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p5

    :try_start_1
    invoke-direct {v7, v1, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    .line 393
    sget-object v16, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    sget-object v17, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-static/range {v11 .. v17}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preHandleForBizInterceptor(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    invoke-static {v9, v10, v8}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 397
    nop

    .line 400
    iget-object v0, v7, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->mockRpcLimit(Landroid/content/Context;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 401
    return-void

    .line 396
    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v1, p5

    :goto_0
    invoke-static {v9, v10, v8}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0
.end method

.method protected printAllTimeLog(Ljava/lang/reflect/Method;Ljava/lang/String;J)V
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "ot"    # Ljava/lang/String;
    .param p3, "startTime"    # J

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 187
    .local v0, "invokeTiming":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] methodName=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] API=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] invokeTiming=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RpcInvoker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

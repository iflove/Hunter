.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;
.source "SimpleRpcPBSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleRpcPBSerializer"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public packet()[B
    .locals 5

    .line 33
    :try_start_0
    const-string v0, "SimpleRpc"

    const-string v1, "====SimpleRpcPBSerializer====packet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    if-eqz v0, :cond_1

    .line 41
    monitor-exit p0

    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->mParams:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 45
    const-string v0, "SimpleRpcPBSerializer"

    const-string/jumbo v2, "mParams is null."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    .line 47
    monitor-exit p0

    return-object v0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->mParams:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 51
    const-string v0, "SimpleRpcPBSerializer"

    const-string/jumbo v2, "mParams not instanceof Object[]."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    .line 53
    monitor-exit p0

    return-object v0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, v2

    .line 57
    .local v3, "params":[Ljava/lang/Object;
    move-object v3, v0

    array-length v0, v0

    if-gtz v0, :cond_4

    .line 58
    const-string v0, "SimpleRpcPBSerializer"

    const-string v2, "Protobuf mParams length=0"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    .line 60
    monitor-exit p0

    return-object v0

    .line 63
    :cond_4
    array-length v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 64
    const-string v0, "SimpleRpcPBSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SimpleRpcService should be 3 params, params.length="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    monitor-exit p0

    return-object v2

    .line 69
    :cond_5
    const/4 v0, 0x1

    aget-object v0, v3, v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    const-string v0, "SimpleRpcPBSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PB Data size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",PB Data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 77
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/SimpleRpcPBSerializer;->a:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "SimpleRpcPBSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method

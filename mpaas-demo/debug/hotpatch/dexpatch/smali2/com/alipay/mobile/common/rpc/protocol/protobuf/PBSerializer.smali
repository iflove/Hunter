.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.source "PBSerializer.java"


# static fields
.field public static final VERSION:B = 0x2t


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->a:I

    .line 48
    return-void
.end method

.method private a()[B
    .locals 6

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 67
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    if-eqz v0, :cond_1

    .line 70
    monitor-exit p0

    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 74
    const-string v0, "PBSerializer"

    const-string/jumbo v2, "mParams is null."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    .line 76
    monitor-exit p0

    return-object v0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 80
    const-string v0, "PBSerializer"

    const-string/jumbo v2, "mParams not instanceof Object[]."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    .line 82
    monitor-exit p0

    return-object v0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, v2

    .line 86
    .local v3, "params":[Ljava/lang/Object;
    move-object v3, v0

    array-length v0, v0

    if-gtz v0, :cond_4

    .line 87
    const-string v0, "PBSerializer"

    const-string v2, "Protobuf mParams length=0"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    .line 89
    monitor-exit p0

    return-object v0

    .line 92
    :cond_4
    array-length v0, v3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    .line 93
    const-string v0, "PBSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Protobuf mParams noly support one inParameter, params.length="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    monitor-exit p0

    return-object v2

    .line 97
    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodecImpl;-><init>()V

    .line 98
    .local v2, "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    move-object v2, v0

    aget-object v4, v3, v1

    invoke-interface {v0, v4}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->isPBBean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 99
    const-string v0, "PBSerializer"

    const-string/jumbo v4, "mParams not protobuf bean!"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    .line 101
    monitor-exit p0

    return-object v0

    .line 105
    :cond_6
    aget-object v0, v3, v1

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    const-string v0, "PBSerializer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PB Data size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". PB Data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PB Object String = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 112
    .end local v2    # "protobufCodec":Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    .end local v3    # "params":[Ljava/lang/Object;
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->b:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0

    .line 112
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

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PBSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->a:I

    return v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 4

    .line 145
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->packet()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 147
    .local v0, "md5Digest":[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 148
    .end local v0    # "md5Digest":[B
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PBSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public packet()[B
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 138
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->a:I

    .line 139
    return-void
.end method

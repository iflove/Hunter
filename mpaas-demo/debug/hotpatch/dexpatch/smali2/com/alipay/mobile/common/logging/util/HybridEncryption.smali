.class public Lcom/alipay/mobile/common/logging/util/HybridEncryption;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:[B

.field private e:[B

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/common/logging/util/AESUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alipay/mobile/common/logging/util/RSAUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alipay/mobile/common/logging/util/Base64;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alipay/mobile/common/logging/util/LoggingUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alipay/mobile/common/logging/util/MD5Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 62
    move-object v2, v1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "Hybrid"

    const-string/jumbo v4, "obtainPublicKey"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "setting.logging.encryption.pubkey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v2, "key":Ljava/lang/String;
    return-object v1

    .line 64
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    .line 49
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    .locals 2

    .line 39
    sget-object v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    if-eqz v0, :cond_0

    .line 42
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encrypt([BII)[B
    .locals 7
    .param p1, "source"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    const-string v1, "encrypt"

    const-string v2, "Hybrid"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v4

    goto :goto_2

    .line 77
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 79
    .local v0, "seed":[B
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 85
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/Throwable;
    iget-boolean v6, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->f:Z

    if-nez v6, :cond_2

    .line 82
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->f:Z

    .line 83
    invoke-static {v2, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 88
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v0, v5

    .line 90
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/AESUtil;->getRawKey([B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    .line 91
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/util/RSAUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    goto :goto_2

    .line 93
    :catchall_1
    move-exception v5

    .line 94
    .restart local v5    # "e":Ljava/lang/Throwable;
    iget-boolean v6, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->g:Z

    if-nez v6, :cond_4

    .line 95
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->g:Z

    .line 96
    invoke-static {v2, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "seed":[B
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:[B

    if-nez v6, :cond_5

    goto :goto_3

    .line 104
    :cond_5
    :try_start_2
    invoke-static {v5, p1, p2, p3}, Lcom/alipay/mobile/common/logging/util/AESUtil;->encrypt([B[BII)[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .local v0, "encrypted":[B
    return-object v1

    .line 107
    .end local v0    # "encrypted":[B
    :catchall_2
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    iget-boolean v5, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->h:Z

    if-nez v5, :cond_6

    .line 109
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->h:Z

    .line 110
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_6
    return-object v4

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    return-object v4
.end method

.method public getSecureSeed()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:[B

    return-object v0
.end method

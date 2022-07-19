.class public Lcom/alipay/mobile/common/logging/util/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;

.field private static b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized decrypt([B[BII)[B
    .locals 5
    .param p0, "rawKey"    # [B
    .param p1, "encrypted"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    const-class v0, Lcom/alipay/mobile/common/logging/util/AESUtil;

    monitor-enter v0

    .line 51
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/logging/util/AESUtil;->b:Ljavax/crypto/Cipher;

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 54
    sput-object v3, Lcom/alipay/mobile/common/logging/util/AESUtil;->b:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 51
    .end local v2    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    move-object v2, v1

    .line 56
    :goto_0
    sget-object v3, Lcom/alipay/mobile/common/logging/util/AESUtil;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .local v2, "source":[B
    monitor-exit v0

    return-object v1

    .line 58
    .end local v2    # "source":[B
    :catchall_0
    move-exception v2

    .line 59
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    sput-object v1, Lcom/alipay/mobile/common/logging/util/AESUtil;->b:Ljavax/crypto/Cipher;

    .line 60
    const-string v3, "LogAESUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    monitor-exit v0

    return-object v1

    .line 50
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local p0    # "rawKey":[B
    .end local p1    # "encrypted":[B
    .end local p2    # "index":I
    .end local p3    # "length":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encrypt([B[BII)[B
    .locals 5
    .param p0, "rawKey"    # [B
    .param p1, "source"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    const-class v0, Lcom/alipay/mobile/common/logging/util/AESUtil;

    monitor-enter v0

    .line 30
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/logging/util/AESUtil;->a:Ljavax/crypto/Cipher;

    if-nez v2, :cond_0

    .line 31
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 33
    sput-object v3, Lcom/alipay/mobile/common/logging/util/AESUtil;->a:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 30
    .end local v2    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    move-object v2, v1

    .line 35
    :goto_0
    sget-object v3, Lcom/alipay/mobile/common/logging/util/AESUtil;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .local v2, "encrypted":[B
    monitor-exit v0

    return-object v1

    .line 37
    .end local v2    # "encrypted":[B
    :catchall_0
    move-exception v2

    .line 38
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    sput-object v1, Lcom/alipay/mobile/common/logging/util/AESUtil;->a:Ljavax/crypto/Cipher;

    .line 39
    const-string v3, "LogAESUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    monitor-exit v0

    return-object v1

    .line 29
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local p0    # "rawKey":[B
    .end local p1    # "source":[B
    .end local p2    # "index":I
    .end local p3    # "length":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRawKey([B)[B
    .locals 6
    .param p0, "seed"    # [B

    .line 67
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .local v1, "kgen":Ljavax/crypto/KeyGenerator;
    move-object v2, v0

    .line 69
    .local v2, "sr":Ljava/security/SecureRandom;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x11

    const-string v5, "SHA1PRNG"

    if-lt v3, v4, :cond_0

    .line 71
    :try_start_1
    const-string v3, "Crypto"

    invoke-static {v5, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 74
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v3

    .line 76
    :cond_0
    :try_start_2
    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    move-object v2, v3

    .line 78
    :goto_0
    invoke-virtual {v2, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 79
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 80
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    return-object v0

    .line 83
    .end local v1    # "kgen":Ljavax/crypto/KeyGenerator;
    .end local v2    # "sr":Ljava/security/SecureRandom;
    :catchall_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LogAESUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

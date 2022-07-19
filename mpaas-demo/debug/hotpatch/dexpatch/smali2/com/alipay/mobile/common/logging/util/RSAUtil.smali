.class public Lcom/alipay/mobile/common/logging/util/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;

.field private static b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    .local v0, "decodedKey":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 42
    .local v1, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    .local v0, "decodedKey":[B
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 49
    .local v1, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized decrypt([BLjava/lang/String;)[B
    .locals 7
    .param p0, "content"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/logging/util/RSAUtil;

    monitor-enter v0

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "decryptData":[B
    const/4 v2, 0x0

    .line 95
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b:Ljavax/crypto/Cipher;

    if-nez v3, :cond_0

    .line 96
    const-string v3, "RSA"

    invoke-static {v3, p1}, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 97
    .local v3, "privateK":Ljava/security/PrivateKey;
    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 98
    sput-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 100
    .end local v3    # "privateK":Ljava/security/PrivateKey;
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 103
    sget-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b:Ljavax/crypto/Cipher;

    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    array-length v5, p0

    sub-int v6, v5, v3

    :cond_1
    invoke-virtual {v4, p0, v3, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 102
    add-int/lit16 v3, v3, 0x80

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 107
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 114
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :goto_1
    goto :goto_2

    .line 115
    :catch_0
    move-exception v3

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 108
    :catch_1
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    sput-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b:Ljavax/crypto/Cipher;

    .line 110
    const-string v4, "LogRSAUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 114
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 120
    :cond_3
    :goto_2
    monitor-exit v0

    return-object v1

    .line 112
    :goto_3
    if-eqz v2, :cond_4

    .line 114
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    goto :goto_4

    .line 115
    :catch_2
    move-exception v4

    .line 117
    :cond_4
    :goto_4
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    .end local v1    # "decryptData":[B
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "content":[B
    .end local p1    # "privateKey":Ljava/lang/String;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encrypt([BLjava/lang/String;)[B
    .locals 7
    .param p0, "content"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/logging/util/RSAUtil;

    monitor-enter v0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "encryptData":[B
    const/4 v2, 0x0

    .line 60
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    if-nez v3, :cond_0

    .line 61
    const-string v3, "RSA"

    invoke-static {v3, p1}, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 62
    .local v3, "pubkey":Ljava/security/PublicKey;
    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 63
    sput-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    .end local v3    # "pubkey":Ljava/security/PublicKey;
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 67
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 68
    sget-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v6, 0x75

    if-ge v5, v6, :cond_1

    array-length v5, p0

    sub-int v6, v5, v3

    :cond_1
    invoke-virtual {v4, p0, v3, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    add-int/lit8 v3, v3, 0x75

    goto :goto_0

    .line 71
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 79
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :goto_1
    goto :goto_2

    .line 80
    :catch_0
    move-exception v3

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 73
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    sput-object v4, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    .line 75
    const-string v4, "LogRSAUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 79
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 85
    :cond_3
    :goto_2
    monitor-exit v0

    return-object v1

    .line 77
    :goto_3
    if-eqz v2, :cond_4

    .line 79
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    goto :goto_4

    .line 80
    :catch_2
    move-exception v4

    .line 82
    :cond_4
    :goto_4
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    .end local v1    # "encryptData":[B
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "content":[B
    .end local p1    # "publicKey":Ljava/lang/String;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

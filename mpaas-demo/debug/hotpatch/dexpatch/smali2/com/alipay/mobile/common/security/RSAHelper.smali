.class public Lcom/alipay/mobile/common/security/RSAHelper;
.super Ljava/lang/Object;
.source "RSAHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .local v0, "decodedKey":[B
    :try_start_1
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 35
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 37
    .end local v0    # "decodedKey":[B
    .end local v2    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 43
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    return-object v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2, p1}, Lcom/alipay/mobile/common/security/RSAHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    move-object v3, v1

    .line 50
    .local v3, "pubkey":Ljava/security/PublicKey;
    move-object v3, v2

    if-nez v2, :cond_1

    .line 51
    return-object v1

    .line 53
    :cond_1
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v4, v1

    .line 54
    .local v4, "cipher":Ljavax/crypto/Cipher;
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 56
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 57
    .local v2, "plaintext":[B
    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 59
    .local v5, "output":[B
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object v6

    .line 63
    .end local v2    # "plaintext":[B
    .end local v3    # "pubkey":Ljava/security/PublicKey;
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "output":[B
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "RSAHelper"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-object v1
.end method

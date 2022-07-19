.class public Lcom/alipay/mobile/common/transport/utils/Des;
.super Ljava/lang/Object;
.source "Des.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "strkey"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    return-object p0

    .line 25
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/Des;->doFinal(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 1
    .param p0, "content"    # [B
    .param p1, "strkey"    # Ljava/lang/String;

    .line 69
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/Des;->doFinal(I[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static doFinal(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "opmode"    # I
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strkey"    # Ljava/lang/String;

    const-string v0, "DES"

    .line 30
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 31
    .local v2, "key":Ljava/security/Key;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v3, v1

    .line 32
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object v3, v0

    invoke-virtual {v0, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object v0, v1

    .line 37
    .local v0, "plaintext":[B
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    .line 38
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 40
    :cond_0
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move-object v0, v6

    .line 42
    :goto_0
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .local v6, "output":[B
    move-object v7, v1

    .line 47
    .local v7, "Ciphertext":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 48
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    move-object v1, v4

    .end local v7    # "Ciphertext":Ljava/lang/String;
    .local v1, "Ciphertext":Ljava/lang/String;
    goto :goto_1

    .line 50
    .end local v1    # "Ciphertext":Ljava/lang/String;
    .restart local v7    # "Ciphertext":Ljava/lang/String;
    :cond_1
    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v7    # "Ciphertext":Ljava/lang/String;
    .restart local v1    # "Ciphertext":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 54
    .end local v0    # "plaintext":[B
    .end local v1    # "Ciphertext":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/Key;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "output":[B
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "opmode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Des"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-object v1
.end method

.method public static doFinal(I[BLjava/lang/String;)[B
    .locals 8
    .param p0, "opmode"    # I
    .param p1, "content"    # [B
    .param p2, "strkey"    # Ljava/lang/String;

    const-string v0, "DES"

    .line 77
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    .local v2, "key":Ljava/security/Key;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v3, v1

    .line 79
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object v3, v0

    invoke-virtual {v0, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object v0, v1

    .line 84
    .local v0, "plaintext":[B
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    .line 85
    invoke-static {p1, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 87
    :cond_0
    move-object v0, p1

    .line 89
    :goto_0
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .local v6, "output":[B
    move-object v7, v1

    .line 94
    .local v7, "Ciphertext":[B
    if-ne p0, v5, :cond_1

    .line 95
    move-object v1, v6

    .end local v7    # "Ciphertext":[B
    .local v1, "Ciphertext":[B
    goto :goto_1

    .line 97
    .end local v1    # "Ciphertext":[B
    .restart local v7    # "Ciphertext":[B
    :cond_1
    invoke-static {v6, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v7    # "Ciphertext":[B
    .restart local v1    # "Ciphertext":[B
    :goto_1
    return-object v1

    .line 101
    .end local v0    # "plaintext":[B
    .end local v1    # "Ciphertext":[B
    .end local v2    # "key":Ljava/security/Key;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "output":[B
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "opmode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Des"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "strkey"    # Ljava/lang/String;

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/Des;->doFinal(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 1
    .param p0, "content"    # [B
    .param p1, "strkey"    # Ljava/lang/String;

    .line 62
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/Des;->doFinal(I[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/alipay/mobile/nebula/util/H5RsaUtil;
.super Ljava/lang/Object;
.source "H5RsaUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final TAG:Ljava/lang/String; = "RsaUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 174
    .local v1, "privateKey":Ljava/security/PrivateKey;
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v3, v0

    .line 175
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object v3, v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 176
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 177
    .local v2, "output":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-object v4

    .line 179
    .end local v1    # "privateKey":Ljava/security/PrivateKey;
    .end local v2    # "output":[B
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyError"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    return-object v3

    .line 183
    :cond_0
    const-string v2, "RsaUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 143
    .local v1, "pubkey":Ljava/security/PublicKey;
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v3, v0

    .line 144
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 146
    .local v2, "plaintext":[B
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 147
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Base64;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 148
    .end local v1    # "pubkey":Ljava/security/PublicKey;
    .end local v2    # "plaintext":[B
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyError"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    return-object v3

    .line 152
    :cond_0
    const-string v2, "RsaUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    return-object v0
.end method

.method private static fastVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "base64Sign"    # Ljava/lang/String;

    const-string v1, "RsaUtil"

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "verified":Z
    const/4 v3, 0x0

    .line 87
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 88
    .local v4, "inputChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 91
    .local v5, "mappedBuffer":Ljava/nio/MappedByteBuffer;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v6, p0

    :try_start_1
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 92
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 93
    move-object v7, v0

    .end local v4    # "inputChannel":Ljava/nio/channels/FileChannel;
    .local v7, "inputChannel":Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    .line 94
    .local v10, "fileSize":J
    move-wide v13, v8

    .end local v10    # "fileSize":J
    .local v13, "fileSize":J
    const-wide/32 v10, 0x10000

    cmp-long v0, v8, v10

    if-ltz v0, :cond_1

    const-wide/32 v8, 0x500000

    cmp-long v0, v13, v8

    if-lez v0, :cond_0

    move-object/from16 v15, p1

    move/from16 v20, v2

    goto/16 :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "NIO verify size="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    const/4 v0, 0x2

    move-object/from16 v15, p1

    :try_start_3
    invoke-static {v15, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 104
    .local v4, "decodedKey":[B
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    move-object v11, v8

    .line 105
    .local v11, "x509":Ljava/security/spec/X509EncodedKeySpec;
    const-string v8, "RSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    move-object v12, v8

    .line 108
    .local v12, "pubKey":Ljava/security/PublicKey;
    move-object/from16 v9, p2

    invoke-static {v9, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 109
    .local v0, "sigToVerify":[B
    const-string v8, "SHA1withRSA"

    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    const/4 v10, 0x0

    .line 110
    .local v10, "signature":Ljava/security/Signature;
    move-object v10, v8

    invoke-virtual {v8, v12}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 112
    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v16, 0x0

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v20, v2

    move-object v2, v10

    .end local v10    # "signature":Ljava/security/Signature;
    .local v2, "signature":Ljava/security/Signature;
    .local v20, "verified":Z
    move-wide/from16 v9, v16

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .end local v11    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .end local v12    # "pubKey":Ljava/security/PublicKey;
    .local v16, "x509":Ljava/security/spec/X509EncodedKeySpec;
    .local v17, "pubKey":Ljava/security/PublicKey;
    move-wide/from16 v11, v18

    :try_start_4
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    move-object v5, v8

    .line 113
    invoke-virtual {v2, v5}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 115
    invoke-virtual {v2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    move v2, v1

    .end local v20    # "verified":Z
    .local v1, "verified":Z
    goto :goto_1

    .line 117
    .end local v0    # "sigToVerify":[B
    .end local v1    # "verified":Z
    .end local v4    # "decodedKey":[B
    .end local v13    # "fileSize":J
    .end local v16    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .end local v17    # "pubKey":Ljava/security/PublicKey;
    .local v2, "verified":Z
    :catchall_0
    move-exception v0

    move/from16 v20, v2

    move-object v4, v7

    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    goto :goto_2

    .line 94
    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    .restart local v13    # "fileSize":J
    :cond_1
    move-object/from16 v15, p1

    move/from16 v20, v2

    .line 96
    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static/range {p0 .. p2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verifyWithStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, v0

    .line 120
    .end local v13    # "fileSize":J
    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    :goto_1
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 121
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    move-object v4, v7

    goto :goto_3

    .line 117
    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    :catchall_1
    move-exception v0

    move-object v4, v7

    goto :goto_2

    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v20, v2

    move-object v4, v7

    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    goto :goto_2

    .end local v7    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    .local v4, "inputChannel":Ljava/nio/channels/FileChannel;
    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v20, v2

    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    goto :goto_2

    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    :catchall_4
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v20, v2

    .line 118
    .end local v2    # "verified":Z
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v20    # "verified":Z
    :goto_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify exception"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 120
    .end local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 121
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    move/from16 v2, v20

    .line 125
    .end local v20    # "verified":Z
    .restart local v2    # "verified":Z
    :goto_3
    return v2

    .line 120
    .end local v2    # "verified":Z
    .restart local v20    # "verified":Z
    :catchall_5
    move-exception v0

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 121
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    .local v0, "keyBytes":[B
    :try_start_1
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 163
    .local v1, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    return-object v2

    .line 166
    .end local v0    # "keyBytes":[B
    .end local v1    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v0, 0x0

    .line 167
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "KeyError"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .line 131
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    .local v0, "decodedKey":[B
    :try_start_1
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 133
    .local v1, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 135
    .end local v0    # "decodedKey":[B
    .end local v1    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v0, 0x0

    .line 136
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "KeyError"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "base64Sign"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    .local v0, "verified":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->isNIOEnabled()Z

    move-result v1

    const-string v2, "RsaUtil"

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verify with NIO "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->fastVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verify with stream "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verifyWithStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "signature verify result "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0
.end method

.method private static verifyWithStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "base64Sign"    # Ljava/lang/String;

    const-string v0, "RsaUtil"

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "verified":Z
    const/4 v2, 0x0

    .line 51
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v3, 0x400

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v3

    .line 54
    .local v3, "buffer":[B
    const/4 v4, 0x2

    :try_start_0
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 55
    .local v5, "decodedKey":[B
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 56
    .local v6, "x509":Ljava/security/spec/X509EncodedKeySpec;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 57
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    .line 59
    .local v7, "pubKey":Ljava/security/PublicKey;
    nop

    .line 60
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 61
    .local v4, "sigToVerify":[B
    const-string v8, "SHA1withRSA"

    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    const/4 v9, 0x0

    .line 62
    .local v9, "signature":Ljava/security/Signature;
    move-object v9, v8

    invoke-virtual {v8, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 63
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v8

    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, "fileSize":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    .line 68
    .local v10, "len":I
    add-int/2addr v8, v10

    .line 69
    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11, v10}, Ljava/security/Signature;->update([BII)V

    goto :goto_0

    .line 71
    .end local v10    # "len":I
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Stream verify size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v9, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .end local v4    # "sigToVerify":[B
    .end local v5    # "decodedKey":[B
    .end local v6    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    .end local v8    # "fileSize":I
    .end local v9    # "signature":Ljava/security/Signature;
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v4

    .line 75
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "verify exception"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 78
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    nop

    .line 80
    return v1

    .line 77
    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 78
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

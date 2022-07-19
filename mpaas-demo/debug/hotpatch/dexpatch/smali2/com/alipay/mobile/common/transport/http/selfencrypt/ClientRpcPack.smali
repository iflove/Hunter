.class public Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;
.super Ljava/lang/Object;
.source "ClientRpcPack.java"


# static fields
.field public static final ASYMMETRIC_ENCRYPT_ECC:B = 0x2t

.field public static final ASYMMETRIC_ENCRYPT_RSA:B = 0x1t

.field public static final ASYMMETRIC_ENCRYPT_SM2:B = 0x3t

.field public static final ASYMMETRIC_ENCRYPT_SM4:B = 0xdt

.field public static final SYMMETRIC_ENCRYPT_3DES:B = 0xct

.field public static final SYMMETRIC_ENCRYPT_AES:B = 0xbt


# instance fields
.field private a:B

.field private b:B

.field private c:I

.field private d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

.field private e:[B

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->b:B

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->isCrypt(Landroid/content/Context;)Z

    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getAsymmetricEncryptMethod(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->a:B

    .line 51
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 52
    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->b:B

    goto :goto_0

    .line 54
    :cond_1
    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->b:B

    .line 57
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->f:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "initResult":Z
    new-instance v2, Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-direct {v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    .line 64
    iget-byte v4, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->a:B

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 65
    iput v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v6, v6}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 67
    :cond_2
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    .line 68
    iput v5, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->f:Ljava/lang/String;

    invoke-virtual {v2, v6, v1, v6}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 70
    :cond_3
    if-ne v4, v3, :cond_4

    .line 71
    iput v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->f:Ljava/lang/String;

    invoke-virtual {v2, v6, v6, v1}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 75
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to init client,error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->error()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientRpcPack"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_5
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "pubKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pubKey: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientRpcPack"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method private a([B[B)[B
    .locals 10
    .param p1, "encryptedKey"    # [B
    .param p2, "encryptedBody"    # [B

    const-string v0, "ClientRpcPack"

    .line 157
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    array-length v2, p2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 162
    .local v1, "result":[B
    :cond_0
    const/4 v2, 0x0

    .line 163
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 165
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v4

    .line 166
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v4

    .line 169
    iget-byte v4, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->a:B

    .line 170
    .local v4, "aSymEncryType":B
    array-length v5, p1

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/utils/NumArrayUtils;->mediumToByteArray(I)[B

    move-result-object v5

    .line 172
    .local v5, "encryptedKeyLen":[B
    iget-byte v6, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->b:B

    .line 173
    .local v6, "symEncryType":B
    array-length v7, p2

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/NumArrayUtils;->mediumToByteArray(I)[B

    move-result-object v7

    .line 175
    .local v7, "encryptedBodyLen":[B
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 176
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 178
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 179
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 180
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "asymType: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",encryptedKeyLen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",symType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",encryptedBodyLen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 186
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v8

    .line 190
    .end local v4    # "aSymEncryType":B
    .end local v5    # "encryptedKeyLen":[B
    .end local v6    # "symEncryType":B
    .end local v7    # "encryptedBodyLen":[B
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :goto_1
    goto :goto_2

    .line 198
    :catch_1
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 203
    :goto_2
    return-object v1

    .line 188
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 190
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    goto :goto_3

    .line 191
    :catch_2
    move-exception v5

    .line 192
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 197
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 200
    goto :goto_4

    .line 198
    :catch_3
    move-exception v5

    .line 199
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    throw v4

    .line 158
    .end local v1    # "result":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    :cond_3
    :goto_5
    return-object v1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 3
    .param p1, "encodeData"    # [B

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->e:[B

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->decode([B[BI)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    .local v1, "decryptBody":[B
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/GzipUtils;->unGzip([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-object v0

    .line 137
    .end local v1    # "decryptBody":[B
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decrypt ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->error()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientRpcPack"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v0
.end method

.method public encrypt([B)[B
    .locals 5
    .param p1, "data"    # [B

    .line 102
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->generateRandomStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 103
    .local v0, "seed":[B
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/GzipUtils;->toGzip([B)[B

    move-result-object v1

    move-object p1, v1

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->c:I

    invoke-virtual {v1, v0, p1, v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->encode([B[BI)[[B

    move-result-object v1

    .line 106
    .local v1, "encodeResult":[[B
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->e:[B

    .line 107
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 108
    .local v2, "encryptedBody":[B
    const/4 v3, 0x2

    aget-object v3, v1, v3

    .line 111
    .local v3, "encryptedKey":[B
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->a([B[B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v4

    .line 114
    .end local v0    # "seed":[B
    .end local v1    # "encodeResult":[[B
    .end local v2    # "encryptedBody":[B
    .end local v3    # "encryptedKey":[B
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encrypt ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->error()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientRpcPack"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method protected finalize()V
    .locals 4

    .line 209
    const-string v0, "ClientRpcPack"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->d:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->exit()V

    .line 211
    const-string v1, "client exit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v1

    .line 215
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finalize ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

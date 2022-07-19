.class public Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;
.super Ljava/lang/Object;
.source "SelfEncryptUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedContent([BLcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;)[B
    .locals 5
    .param p0, "encryptData"    # [B
    .param p1, "clientPack"    # Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

    .line 94
    const-string v0, "SelfEncryptUtils"

    const-string/jumbo v1, "start decrypted..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isNeedSelfEncrypt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->decrypt([B)[B

    move-result-object v1

    .line 98
    .local v1, "decryptContent":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after decrypted,len: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object v1

    .line 101
    .end local v1    # "decryptContent":[B
    :cond_0
    return-object p0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDecryptedContent ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    throw v1
.end method

.method public static getEncryptedEntity([BLcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "clientPack"    # Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;
    .param p2, "originRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 69
    const-string v0, "SelfEncryptUtils"

    const-string/jumbo v1, "start encrypted..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isNeedSelfEncrypt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;->encrypt([B)[B

    move-result-object v1

    .line 77
    .local v1, "encryptRequestData":[B
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData([B)V

    .line 78
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 81
    .local v2, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after encrypted,len: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v1    # "encryptRequestData":[B
    .end local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 85
    .restart local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v2

    .line 86
    .end local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEncryptedEntity ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    throw v1
.end method

.method public static isDefaultGlobalCrypt()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->isDefaultGlobalCrypt(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isInGwWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "gwUrl"    # Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getGWWhiteList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    return v0
.end method

.method public static isNeedSelfEncrypt()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->isCrypt(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isRpcEncryptSwitchOn()Z
    .locals 2

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_SELF_ENCTYPT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

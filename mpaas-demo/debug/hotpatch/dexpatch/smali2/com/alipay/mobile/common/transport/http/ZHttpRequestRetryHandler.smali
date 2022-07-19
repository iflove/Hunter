.class public Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "ZHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field public static final MAX_TIMES:B = 0x3t

.field static final TAG:Ljava/lang/String; = "ZHttpRequestRetryHandler"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->a:Z

    return-void
.end method

.method private static a(Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 173
    const-string v0, "NET_CONTEXT"

    invoke-interface {p0, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 174
    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isRetryForRpc(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p0, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 227
    const-string v0, "ZHttpRequestRetryHandler"

    if-eqz p0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "host":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeOldIpsAndUpdateDns,host=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->removeIpsInIpRank(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->setErrorByHost(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    .end local v1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void

    .line 237
    :cond_0
    :goto_0
    return-void
.end method

.method public static final getRetryCount(Lorg/apache/http/protocol/HttpContext;)I
    .locals 4
    .param p0, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 268
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "httpRetryCount"

    invoke-interface {p0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 269
    .local v2, "counter":Ljava/lang/Integer;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 270
    return v0

    .line 272
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 273
    .end local v2    # "counter":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ZHttpRequestRetryHandler"

    const-string v3, "getRetryCount"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static final isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z
    .locals 4
    .param p0, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 285
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseHttpStdRetryModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 286
    return v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 289
    .local v2, "requestMethod":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "GET"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const-string v0, "PUT"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "HEAD"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UseHttpStdRetryStrategy model, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request method don\'t support retry!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHttpRequestRetryHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    return v0

    .line 295
    :cond_1
    return v1
.end method

.method public static isRetryForRpc(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p1, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 178
    if-nez p1, :cond_0

    .line 179
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 182
    :cond_0
    iget-byte v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 183
    return-object v2

    .line 186
    :cond_1
    const-string/jumbo v0, "operationType"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 187
    .local v1, "operationType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    return-object v2

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    move-object v3, v2

    .line 192
    .local v3, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v3, v0

    if-nez v0, :cond_3

    .line 193
    return-object v2

    .line 196
    :cond_3
    const-string v0, "Retryable2"

    invoke-interface {v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 197
    .local v2, "header":Lorg/apache/http/Header;
    move-object v2, v0

    const-string v4, "ZHttpRequestRetryHandler"

    if-eqz v0, :cond_4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "opeType: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,rpc allow retry"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 202
    :cond_4
    const-string/jumbo v0, "rpc can\'t retry"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isShutdown(Ljava/io/IOException;)Z
    .locals 4
    .param p0, "exception"    # Ljava/io/IOException;

    .line 207
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 208
    return v0

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 211
    .local v3, "rootCause":Ljava/lang/Throwable;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 212
    return v0

    .line 214
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v2, "s":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    return v0

    .line 218
    :cond_2
    const-string v1, "Connection already shutdown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_3
    return v0
.end method


# virtual methods
.method protected isRepeatable(Lorg/apache/http/protocol/HttpContext;)Z
    .locals 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    const-string v0, "ZHttpRequestRetryHandler"

    .line 250
    const-string v1, "alipay_isRepeatable"

    invoke-interface {p1, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    .local v2, "isRepeatableObj":Ljava/lang/Object;
    move-object v2, v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 253
    const/4 v1, 0x0

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    return v3

    .line 256
    :cond_0
    const-string v3, "isRepeatable==false, no retry."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return v1

    .line 258
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isRepeatable exceptoin=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]  no retry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return v1

    .line 263
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method protected logRetry(Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 242
    :try_start_0
    const-string v0, "NET_CONTEXT"

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x0

    .line 243
    .local v1, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "RETRY"

    const-string v3, "T"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v1    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    return-void

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logRetry exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZHttpRequestRetryHandler"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected removeOldIpsWhenUserTimeout(Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 158
    const-string v0, "NET_CONTEXT"

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x0

    .line 159
    .local v1, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 161
    const-string v0, "ZHttpRequestRetryHandler"

    const-string/jumbo v2, "removeOldIpsWhenUserTimeout. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 164
    :cond_0
    return-void
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 10
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "retryRequest: executionCount=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], exception["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHttpRequestRetryHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, " >= 3,  no retry"

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt p2, v2, :cond_0

    .line 52
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v3

    .line 57
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "httpRetryCount"

    invoke-interface {p3, v5, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    if-lt p2, v2, :cond_1

    .line 61
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return v3

    .line 65
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    const-string v0, "Network unavailable, no retry"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v3

    .line 70
    :cond_2
    const-string/jumbo v0, "originRequest"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x0

    move-object v4, v2

    .line 71
    .local v4, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v4, v0

    if-nez v0, :cond_3

    .line 72
    const-string v0, "httpUrlRequest is null, what happened?"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v3

    .line 77
    :cond_3
    invoke-virtual {p0, p3, v4}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->removeOldIpsWhenUserTimeout(Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 79
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "httpUrlRequest is already canceled"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v3

    .line 85
    :cond_4
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    return v3

    .line 90
    :cond_5
    invoke-static {p3, v4}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->a(Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v2

    .line 91
    .local v5, "x":Ljava/lang/Boolean;
    move-object v5, v0

    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 95
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isShutdown(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    const-string v0, "Connection shutdown, no retry"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return v3

    .line 101
    :cond_7
    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v2

    .line 102
    .local v6, "targetHostObj":Ljava/lang/Object;
    move-object v6, v0

    if-eqz v0, :cond_9

    instance-of v0, v6, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 103
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v2, "targetHost":Ljava/lang/String;
    move-object v2, v0

    const-string v7, "127.0.0.1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "localhost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "host=["

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] no retry."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return v3

    .line 112
    .end local v2    # "targetHost":Ljava/lang/String;
    :cond_9
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    const-string v7, "isRepeatable==false, no retry"

    const-string v8, " retry. exception:"

    const/4 v9, 0x1

    if-nez v0, :cond_f

    instance-of v0, p1, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_a

    goto/16 :goto_2

    .line 127
    :cond_a
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_e

    instance-of v0, p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_b

    goto :goto_1

    .line 138
    :cond_b
    nop

    .line 139
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 140
    .local v2, "b":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    .line 144
    .local v0, "sent":Z
    :goto_0
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isRepeatable(Lorg/apache/http/protocol/HttpContext;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return v3

    .line 148
    :cond_d
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->logRetry(Lorg/apache/http/protocol/HttpContext;)V

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sent=["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]  retry."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return v9

    .line 133
    .end local v0    # "sent":Z
    .end local v2    # "b":Ljava/lang/Boolean;
    :cond_e
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->logRetry(Lorg/apache/http/protocol/HttpContext;)V

    .line 135
    return v9

    .line 115
    :cond_f
    :goto_2
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 117
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isRepeatable(Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v3

    .line 122
    :cond_10
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->logRetry(Lorg/apache/http/protocol/HttpContext;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return v9
.end method

.class public Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;
.super Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;
.source "DjgHttpWorker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 38
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 115
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 122
    :cond_0
    const-string v0, "HttpWorker"

    const-string/jumbo v2, "processDegrade,net hijack, try https"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "IMG_DOWN"

    const-string v3, "T"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 128
    .local v0, "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v2

    .line 131
    .local v2, "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->abort()V

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {p1, v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->executeDowngradeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3

    .line 136
    .end local v0    # "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    :cond_2
    return-object p2
.end method

.method private a()V
    .locals 5

    .line 177
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "djg_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/GtsUtils;->get64HexCurrentTimeMillis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "uuid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "User-Agent"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v0, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v1    # "userAgent":Ljava/lang/String;
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/Throwable;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "canRetry"    # Z

    .line 274
    const-string v0, "HttpWorker"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    const-string v2, "Network unavailable, not downgrade"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v1

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const-string v2, "Not need to downgrade to https"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v1

    .line 284
    :cond_1
    instance-of v2, p1, Ljava/io/IOException;

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    goto :goto_1

    .line 285
    :cond_3
    :goto_0
    const-string v2, "ifCanDowngrade, return true"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :catchall_0
    move-exception v2

    .line 289
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return v1
.end method


# virtual methods
.method protected addCookie2Header()V
    .locals 0

    .line 149
    return-void
.end method

.method protected addRequestHeaders()V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 157
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->a()V

    .line 158
    const-string v0, "HttpWorker"

    const-string v1, "add header log:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 160
    return-void
.end method

.method protected copyHeaders()V
    .locals 0

    .line 144
    return-void
.end method

.method protected executeExtClientRequest()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method protected executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->setTimeout()V

    .line 84
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 88
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    move-object v1, p2

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    return-object v1

    .line 92
    .end local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method protected getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;
    .locals 1
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 190
    const-string v0, ""

    return-object v0
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 7
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "resCode"    # I
    .param p4, "resMsg"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 53
    .local v0, "responseEntity":Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object v3, v2

    .line 55
    .local v3, "entity":Lorg/apache/http/entity/InputStreamEntity;
    if-eqz v0, :cond_1

    .line 57
    new-instance v2, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v2, v4, v5, v6, p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    .line 59
    .local v2, "networkInputStreamWrapper":Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v1

    .line 64
    new-instance v4, Lcom/alipay/mobile/common/transport/http/ZInputStreamEntityWrapper;

    invoke-direct {v4, v1, v0}, Lcom/alipay/mobile/common/transport/http/ZInputStreamEntityWrapper;-><init>(Ljava/io/InputStream;Lorg/apache/http/HttpEntity;)V

    move-object v3, v4

    .line 66
    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 67
    .end local v2    # "networkInputStreamWrapper":Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;
    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->noRespContent:Z

    .line 71
    :goto_0
    new-instance v4, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    invoke-direct {v4, v5, p3, p4, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;Ljava/io/InputStream;)V

    .line 72
    .local v2, "djgHttpUrlResponse":Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;
    move-object v2, v4

    invoke-virtual {v4, p2}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 73
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 74
    invoke-virtual {p0, v2, p2}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 75
    return-object v2
.end method

.method protected processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;
    .locals 4
    .param p1, "exceptionName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "canForceRetry"    # Z

    .line 229
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->a(Ljava/lang/Throwable;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "HttpWorker"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processException,code=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] canRetry=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] e=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "IMG_DOWN"

    const-string v3, "T"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "DjgHttpWorker#processException, downgrade by https"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 242
    .local v0, "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v1

    .line 245
    .local v1, "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->abort()V

    .line 248
    :cond_1
    nop

    .line 249
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v2, v0, v1, v3}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->executeDowngradeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-super {p0, v2, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v2

    return-object v2

    .line 230
    .end local v0    # "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v1    # "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    :cond_2
    :goto_0
    const-string v0, "DjgHttpWorker#processException,  can\'t downgrade"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "downgrade exception"

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0, v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1

    return-object v1
.end method

.method protected putSubCommonMonitor()V
    .locals 9

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 197
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v3, "Content-Length"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 198
    .local v7, "reqContentLength":J
    move-wide v7, v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v3, "REQ_SIZE"

    .line 200
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    move-object v3, v1

    .line 205
    .local v3, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v3, v0

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    if-eqz v0, :cond_2

    .line 207
    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    move-object v4, v1

    .line 209
    .local v4, "djgHttpUrlRequest":Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    move-object v4, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getInnerBizType()Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v5, "DJG_BIZ"

    .line 211
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getInnerBizType()Ljava/lang/Byte;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getUpMediaType()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v1, "upMediaType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v5, "UP_MT"

    invoke-static {v0, v5, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v1    # "upMediaType":Ljava/lang/String;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v4    # "djgHttpUrlRequest":Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    .end local v7    # "reqContentLength":J
    :cond_2
    return-void

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DjgHttpWorker#putSubCommonMonitor.ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected resetRequestHeaders()V
    .locals 3

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetRequestHeaders ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

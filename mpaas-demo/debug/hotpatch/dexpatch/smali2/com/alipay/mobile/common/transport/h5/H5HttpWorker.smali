.class public Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;
.super Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;
.source "H5HttpWorker.java"


# instance fields
.field private a:Ljava/lang/Boolean;

.field protected noRespContent:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->noRespContent:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 62
    instance-of v0, p2, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isPrintUrlToMonitorLog()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->printUrlToMonitorLog:Z

    .line 68
    :cond_0
    instance-of v0, p2, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getUseCache()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    .line 71
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 130
    const-string v1, "h5_app_type"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    .local v1, "h5AppType":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mini_app"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "HttpWorker"

    const-string v2, "Current request from miniApp"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a:Ljava/lang/Boolean;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 5

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 457
    .local v2, "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    const-string/jumbo v0, "x-ldcid-level"

    invoke-interface {v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 461
    .local v1, "firstHeader":Lorg/apache/http/Header;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 462
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v3, "ldcid-level"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v1    # "firstHeader":Lorg/apache/http/Header;
    .end local v2    # "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    return-void

    .line 465
    :catchall_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    const-string/jumbo v2, "putH5IdcidLevel2Log fail. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method protected addCookie2Header()V
    .locals 0

    .line 330
    return-void
.end method

.method protected addRequestHeaders()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/HttpSignUtil;->signHttpRequest2Headers(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->copyHeaders()V

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->addCookie2Header()V

    .line 94
    const-string v0, "HttpWorker"

    const-string v1, "add header log:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 96
    return-void
.end method

.method protected copyHeaders()V
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 317
    .local v1, "headers":Ljava/util/ArrayList;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 319
    .local v2, "header":Lorg/apache/http/Header;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 320
    .end local v2    # "header":Lorg/apache/http/Header;
    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v2, "Accept-Encoding"

    invoke-interface {v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 324
    return-void
.end method

.method protected doExecuteRequestByHttpClient(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "NETTUNNEL"

    const-string v2, "HC"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->doExecuteRequestByHttpClient(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public doMonitorLog()Ljava/lang/String;
    .locals 4

    .line 289
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "SUB_TYPE"

    const-string/jumbo v2, "mini_app"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getCurrentThreadPoolExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    .local v1, "currentThreadPoolExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TH_PO_ATC"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getActiveCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TH_PO_AC"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->b()V

    .line 300
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->doMonitorLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected etagRpcv2Adapter(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 216
    return-void
.end method

.method protected executeExtClientRequest()Lorg/apache/http/HttpResponse;
    .locals 8

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getH5HttpUrlRequest()Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isGoSpdy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    return-object v1

    .line 158
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdyForH5()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string v0, "HttpWorker"

    const-string v2, "isCanUseSpdyForH5==false."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v2, 0x2

    iput v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    .line 165
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    move-object v2, v1

    .line 166
    .local v2, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "spdy-proxy-url"

    invoke-interface {v0, v4, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "h5_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/GtsUtils;->get64HexCurrentTimeMillis()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "uuid":Ljava/lang/String;
    const-string/jumbo v3, "spdy-h5-uuid"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v0, v5, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 176
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->executeExtClientRequest()Lorg/apache/http/HttpResponse;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    .line 177
    .local v6, "response":Lorg/apache/http/HttpResponse;
    move-object v6, v5

    if-nez v5, :cond_2

    .line 187
    invoke-interface {v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 188
    invoke-interface {v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 178
    return-object v1

    .line 182
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v5, "NETTUNNEL"

    const-string v7, "SPDY"

    invoke-static {v1, v5, v7}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "x-spdy-proxy"

    const-string v7, "1"

    invoke-direct {v1, v5, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    nop

    .line 187
    invoke-interface {v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 188
    invoke-interface {v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 185
    return-object v6

    .line 187
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v1

    invoke-interface {v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 188
    invoke-interface {v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    throw v1
.end method

.method protected executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected extNoteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 4
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 439
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->extNoteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 440
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 441
    .local v1, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v1, v0

    if-eqz v0, :cond_2

    instance-of v0, v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    if-nez v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 446
    .local v0, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isPrintUrlToMonitorLog()Z

    move-result v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/transport/utils/MonitorLogRecordUtil;->recordCtrlPrintURLFlagToDataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Z)V

    .line 448
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getRefer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 449
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getRefer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "h5_refer"

    invoke-virtual {p1, v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 452
    :cond_1
    return-void

    .line 442
    .end local v0    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_2
    :goto_0
    return-void
.end method

.method protected getAllowedRetryDuration()I
    .locals 1

    .line 472
    const v0, 0x9c40

    return v0
.end method

.method protected getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;
    .locals 1
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 433
    const-string v0, ""

    return-object v0
.end method

.method public getH5HttpUrlRequest()Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    return-object v0
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 6
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "resCode"    # I
    .param p4, "resMsg"    # Ljava/lang/String;

    .line 246
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

    .line 247
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 248
    .local v0, "responseEntity":Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 249
    .local v1, "networkInputStreamWrapper":Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;
    if-eqz v0, :cond_0

    .line 250
    new-instance v2, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    move-object v1, v2

    goto :goto_0

    .line 252
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->noRespContent:Z

    .line 254
    :goto_0
    new-instance v2, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v3

    invoke-direct {v2, v3, p3, p4, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;Ljava/io/InputStream;)V

    const/4 v3, 0x0

    .line 255
    .local v3, "h5Response":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    move-object v3, v2

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 256
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 257
    invoke-virtual {p0, v3, p2}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 259
    return-object v3
.end method

.method protected handleResponseForRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0
    .param p1, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p2, "httpParams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 265
    return-object p3
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 307
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    .line 308
    .local v0, "header":Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 309
    .local v4, "h":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v4    # "h":Lorg/apache/http/Header;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-object v0
.end method

.method protected isCanUseExtTransport()Z
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOtherProcess(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "HttpWorker"

    const-string v3, "T"

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SUB_PROC_SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    const-string v0, "Don\'t use spdy, because sub process spdy switch it\'s off."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return v1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SMALL_SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    const-string v0, "Don\'t use spdy, because small spdy switch it\'s off."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v1

    .line 121
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected monitorLog()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    .local v1, "currentDataContainer":Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    move-object v1, v0

    const-string v2, ""

    if-nez v0, :cond_0

    .line 272
    return-object v2

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->noRespContent:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->monitorLog()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    const-string v0, "ERROR"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    return-object v2

    .line 284
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->monitorLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected preCheck()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->preCheck()V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->H5_HTTP_CACHE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const-string v0, "HttpWorker"

    const-string/jumbo v1, "preCheck: hCacheSwitch is false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    .line 87
    :cond_0
    return-void
.end method

.method protected processExtTransException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 194
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 196
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isGoHttp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string/jumbo v0, "\u6269\u5c55\u4f20\u8f93\u6a21\u5757\u8fde\u63a5\u5931\u8d25,\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5"

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "DOWN"

    const-string v2, "T"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 197
    :cond_0
    throw p1
.end method

.method protected processRespCookies(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 208
    return-void
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 6
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 224
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 225
    .local v2, "statusLine":Lorg/apache/http/StatusLine;
    move-object v2, v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 226
    .local v0, "resCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpWorker"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, p1, v5}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 228
    if-eqz v3, :cond_1

    .line 230
    :try_start_0
    const-string v3, "When a redirect, release connection."

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 232
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "redirectRequested abort exception"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;->handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1

    return-object v1
.end method

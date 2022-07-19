.class public Lcom/alipay/mobile/common/transport/download/DownloadWorker;
.super Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;
.source "DownloadWorker.java"


# static fields
.field private static j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

.field private f:I

.field private final g:I

.field private h:I

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->j:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 3
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->g:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->h:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->i:J

    .line 70
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->createCacheFile(Landroid/content/Context;Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    .line 76
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->i:J

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isWiFiMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->h:I

    .line 84
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 765
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v0

    const-string v1, "DownloadWorker"

    if-eqz v0, :cond_2

    .line 768
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v2, 0x0

    .line 769
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 772
    :cond_0
    const-string/jumbo v0, "processDowngrade,net hijack,try https"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "IMG_DOWN"

    const-string v3, "T"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 778
    .local v0, "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v1

    .line 781
    .local v1, "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->abort()V

    .line 784
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {p1, v0, v1, v3}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->executeDowngradeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3

    .line 786
    .end local v0    # "urlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v1    # "httpClient":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    const-string v0, "handleResponseForDowngrade,needn\'t downgrade to https"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-object p2
.end method

.method private a()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isOnlyWifiRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isWiFiMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->addNetworkSensitiveTask(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)V

    .line 111
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const-string v2, "https"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 107
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The current task can only be downloaded under wifi."

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "resCode"    # I

    .line 551
    const/16 v0, 0x190

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isAllowRetryForErrorHttpStatusCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_RETRY_FOR_IG_HTTP_ST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    return-void

    .line 561
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download failed! illegal http status code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[handleIllegalResCode] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 553
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 11
    .param p1, "hasReaded"    # J

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 569
    .local v0, "time":J
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 571
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 572
    .local v2, "cacheLength":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writed cache file length = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownloadWorker"

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    sub-long v7, v2, p1

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v9, v4, v0

    .line 573
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b(Ljava/lang/String;JJ)V

    .line 575
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    .line 576
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b()Z

    move-result v0

    const-string v1, "DownloadWorker"

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->canRetryException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNLOAD_EXT_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v2, "T"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "already retry many times,throw ex,retryCount:"

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->i:J

    sub-long/2addr v4, v6

    .line 330
    .local v4, "stalledTime":J
    iget v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    iget v6, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->h:I

    if-ge v0, v6, :cond_1

    if-le v0, v3, :cond_0

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 334
    .end local v4    # "stalledTime":J
    :cond_0
    return-void

    .line 331
    .restart local v4    # "stalledTime":J
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskStalled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    throw p1

    .line 336
    .end local v4    # "stalledTime":J
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    if-gt v0, v3, :cond_3

    .line 341
    return-void

    .line 337
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    throw p1

    .line 322
    :cond_4
    const-string v0, "canRetryException return false"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    throw p1

    .line 316
    :cond_5
    const-string/jumbo v0, "network isn\'t available,don\'t retry"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    throw p1

    .line 310
    :cond_6
    const-string v0, "checkIfCanRetry,downerrRetry switch is off"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    throw p1
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "hasReaded"    # J
    .param p4, "contentLength"    # J

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    sub-long v1, p4, p2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->checkDataAvailableSpace(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->checkFileDirWRPermissions(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    invoke-direct {p0, p1, p4, p5}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b(Ljava/lang/String;J)V

    .line 653
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWN_CHECK_SD_PERMISSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 654
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 655
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sdcard write fail"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    return-void

    .line 663
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadFileBlackSet contains this url"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_3
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache dir create fail"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_4
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cache space less than "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, p4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJLorg/apache/http/Header;Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;)V
    .locals 16
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "contentLength"    # J
    .param p4, "historyLength"    # J
    .param p6, "header"    # Lorg/apache/http/Header;
    .param p7, "responseSizeModel"    # Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p7

    const/4 v5, 0x0

    .line 586
    .local v5, "isUseGzip":Z
    const-string v6, "T"

    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 587
    const/4 v5, 0x1

    .line 589
    iget-object v7, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v7

    const-string v8, "DWN_GZIP"

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contentLength["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "] isUseGzip["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] compressedSize["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->compressedSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "] rawSize["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->rawSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "] cacheFile.length["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 594
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "errMsg":Ljava/lang/String;
    const-string v8, "DownloadWorker"

    invoke-static {v8, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    if-gtz v11, :cond_1

    .line 598
    return-void

    .line 602
    :cond_1
    iget-object v11, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-lez v13, :cond_7

    .line 610
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v11

    sget-object v12, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNLOAD_GZIP_CHECK:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 611
    .local v12, "gzipCheck":Ljava/lang/String;
    move-object v12, v11

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    const/16 v13, 0x16

    if-eqz v11, :cond_3

    if-eqz v5, :cond_3

    .line 612
    iget-wide v8, v4, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->compressedSize:J

    cmp-long v6, v8, v2

    if-nez v6, :cond_2

    .line 613
    return-void

    .line 615
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",compressedSize not equal contentLength"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 616
    .end local v7    # "errMsg":Ljava/lang/String;
    .local v6, "errMsg":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    iget-object v8, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v13, v1, v8, v6}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 618
    .end local v6    # "errMsg":Ljava/lang/String;
    .restart local v7    # "errMsg":Ljava/lang/String;
    :cond_3
    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    .line 619
    const-string v6, "gzip check is off"

    invoke-static {v8, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void

    .line 623
    :cond_4
    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    sub-long v14, v14, p4

    move-wide v8, v9

    .line 624
    .local v8, "currentReadedLen":J
    move-wide v8, v14

    cmp-long v6, v14, v2

    if-nez v6, :cond_5

    .line 625
    return-void

    .line 628
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",currentReadedLen:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\uff0cnot equal contentLength:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    .end local v7    # "errMsg":Ljava/lang/String;
    .restart local v6    # "errMsg":Ljava/lang/String;
    cmp-long v7, v8, v2

    if-ltz v7, :cond_6

    .line 634
    return-void

    .line 631
    :cond_6
    new-instance v7, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    iget-object v10, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v13, v1, v10, v6}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 603
    .end local v6    # "errMsg":Ljava/lang/String;
    .end local v8    # "currentReadedLen":J
    .end local v12    # "gzipCheck":Ljava/lang/String;
    .restart local v7    # "errMsg":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",cache was cleaned"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 604
    .end local v7    # "errMsg":Ljava/lang/String;
    .restart local v6    # "errMsg":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    const/16 v8, 0x14

    iget-object v9, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v1, v9, v6}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DownloadWorker"

    .line 158
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/GtsUtils;->get64HexCurrentTimeMillis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "uuid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; pv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "userAgent":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "User-Agent"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v1, v3, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 166
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RSRC_WITH_CACHE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 170
    invoke-virtual {v3, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 171
    .local v6, "switchVal":Ljava/lang/String;
    const-string v7, "T"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move-wide v9, v4

    .line 176
    .local v9, "lastModify":J
    move-wide v9, v7

    cmp-long v3, v7, v4

    if-lez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "lastModified":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "If-Modified-Since"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "If-Modified-Since:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v3    # "lastModified":Ljava/lang/String;
    .end local v6    # "switchVal":Ljava/lang/String;
    .end local v9    # "lastModify":J
    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 185
    .local v6, "length":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 186
    .local v8, "lastModify":J
    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    cmp-long v3, v8, v4

    if-lez v3, :cond_3

    .line 187
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Range:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "lastModified":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "If-Range"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "If-Range:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "userAgent":Ljava/lang/String;
    .end local v3    # "lastModified":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v8    # "lastModify":J
    :cond_3
    return-void

    .line 195
    :catchall_0
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    .locals 5
    .param p0, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p1, "file"    # Ljava/io/File;

    .line 712
    const-string v0, "DownloadWorker"

    :try_start_0
    const-string v1, "Last-Modified"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 713
    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 714
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 715
    .local v2, "lastModified":J
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 716
    const-string/jumbo v4, "setLastModified error"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "lastModified":J
    :cond_0
    return-void

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proc get Last-Modifie exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 9
    .param p1, "newRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 271
    const-string v0, "Range"

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 272
    const-string v1, "If-Range"

    invoke-interface {p1, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RSRC_RETRY_WITH_RANGE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 275
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 276
    const-string v3, "T"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 283
    .local v2, "length":J
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 284
    .local v4, "lastModify":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 285
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "lastModified":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v6, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Range:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",If-Range:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "DownloadWorker"

    invoke-static {v6, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v0    # "lastModified":Ljava/lang/String;
    .end local v2    # "length":J
    .end local v4    # "lastModify":J
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 11
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "contentLength"    # J

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const-string v0, "DownloadWorker"

    const-string v1, "[copyFile] srcFile not exists"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->COPY_FILE_BY_FILECHANNL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 528
    .local v0, "isUseFileChannel":Z
    const/4 v1, 0x0

    .line 529
    .local v1, "isCopySuccess":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 531
    .local v2, "startTimeOfCopy":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    const-string v6, "CP_TIME"

    if-ge v4, v5, :cond_3

    if-nez v1, :cond_3

    .line 532
    if-eqz v0, :cond_1

    .line 533
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v5, v7}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->copyFileEnhanced(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    move v1, v5

    goto :goto_1

    .line 535
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v5, v7}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->streamCopyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    move v1, v5

    .line 537
    :goto_1
    if-nez v1, :cond_2

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v4    # "i":I
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 544
    .local v7, "endTimeOfCopy":J
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v5

    sub-long v9, v7, v2

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v7    # "endTimeOfCopy":J
    throw v4

    .line 543
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 544
    .local v4, "endTimeOfCopy":J
    iget-object v7, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v4    # "endTimeOfCopy":J
    nop

    .line 546
    return v1
.end method

.method private b(Ljava/lang/String;J)V
    .locals 5
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "contentLength"    # J

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->checkFileDirWRPermissions(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->checkDataOrSdcardAvailableSpace(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    return-void

    .line 676
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "target space less than "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "targe dir create fail"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;JJ)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "socketTime"    # J

    .line 737
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    .line 738
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    .line 739
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 741
    .local v1, "statType":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " socketSpend: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " netDetail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "monitor"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private static b()Z
    .locals 2

    .line 344
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNLOADERR_RETRY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "downerrRetry":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const/4 v1, 0x0

    return v1

    .line 349
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private c()V
    .locals 4

    .line 682
    const-string v0, "DownloadWorker"

    const-string v1, "deleteAllFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 686
    .local v1, "deletePathFile":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deletePathFile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .end local v1    # "deletePathFile":Z
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 690
    .local v1, "deleteCacheFile":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteCacheFile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1    # "deleteCacheFile":Z
    :cond_1
    return-void

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method protected addRequestHeaders()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/HttpSignUtil;->signHttpRequest2Headers(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 119
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->copyHeaders()V

    .line 122
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->addCookie2Header()V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    .local v1, "alipayLocaleDes":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 138
    return-void
.end method

.method protected canRetryCurrTaskForSubBiz(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 868
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->canRetryException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->canRetryCurrTaskForSubBiz(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public canRetryException(Ljava/lang/Throwable;)Z
    .locals 8
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 799
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const-string v1, "DownloadWorker"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 800
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 802
    .local v3, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v3, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v0

    const/16 v4, 0x1ad

    if-ne v0, v4, :cond_0

    .line 803
    return v2

    .line 806
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v0

    const/16 v4, 0x34

    if-ne v0, v4, :cond_1

    .line 807
    return v2

    .line 810
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpException;->isCanRetry()Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    const-string v0, "[canRetryException] HttpException can\'t retry."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return v2

    .line 817
    .end local v3    # "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    :cond_2
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    if-eqz v0, :cond_6

    .line 818
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 819
    .local v3, "downloadIOException":Lcom/alipay/mobile/common/transport/http/HttpException;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v0

    move v4, v2

    .line 820
    .local v4, "errcode":I
    move v4, v0

    const/16 v5, 0xe

    const-string v6, ",don\'t retry"

    const-string v7, "errorcode="

    if-eq v0, v5, :cond_9

    const/16 v0, 0xf

    if-eq v4, v0, :cond_9

    const/16 v0, 0x11

    if-eq v4, v0, :cond_9

    const/16 v0, 0x12

    if-eq v4, v0, :cond_9

    const/16 v0, 0x13

    if-ne v4, v0, :cond_4

    goto :goto_1

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isWiFiMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 830
    const/16 v0, 0x10

    if-eq v4, v0, :cond_5

    const/16 v0, 0x14

    if-ne v4, v0, :cond_6

    .line 831
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return v2

    .line 838
    .end local v3    # "downloadIOException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .end local v4    # "errcode":I
    :cond_6
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 839
    .local v3, "rootCause":Ljava/lang/Throwable;
    move-object v3, v0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->isRetryException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 840
    return v4

    .line 842
    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->isRetryException(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 843
    return v4

    .line 847
    .end local v3    # "rootCause":Ljava/lang/Throwable;
    :cond_8
    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    .line 846
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return v2

    .line 825
    .local v3, "downloadIOException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .restart local v4    # "errcode":I
    :cond_9
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return v2
.end method

.method protected executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 751
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->isNeedToDowngradeToHttps(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 755
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    move-object v1, p2

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 756
    return-object v1
.end method

.method protected finallyProcess()V
    .locals 2

    .line 876
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->finallyProcess()V

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isOnlyWifiRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->removeNetworkSensitiveTask(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)V

    .line 882
    :cond_0
    return-void
.end method

.method protected getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;
    .locals 1
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 794
    const-string v0, ""

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v0, "headers":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    return-object v0

    .line 149
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Ljava/util/ArrayList;)V

    .line 151
    return-object v0
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 20

    .line 357
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v0, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 360
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v1

    const/16 v7, 0xc8

    const-string v13, "DownloadWorker"

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "Redownload is true"

    invoke-static {v13, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    .line 363
    if-ne v0, v7, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 365
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download failed! code must be equal to 200  code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_1
    :goto_0
    const/16 v1, 0x130

    const/4 v14, 0x0

    if-ne v0, v1, :cond_3

    .line 370
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent()V

    goto :goto_1

    .line 373
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->abort()V

    .line 375
    :goto_1
    const-string v1, "HttpStatus is 304, redirect return."

    invoke-static {v13, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v2

    invoke-direct {v1, v2, v0, v11, v14}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    return-object v1

    .line 379
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 381
    if-eqz v8, :cond_14

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current cache file len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_13

    .line 391
    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_12

    .line 398
    if-eq v0, v7, :cond_5

    const/16 v1, 0xce

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 400
    :cond_4
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    .line 402
    invoke-direct {v9, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(I)V

    .line 403
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_5
    :goto_2
    if-ne v0, v7, :cond_6

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    .line 410
    :cond_6
    nop

    .line 413
    if-ne v0, v7, :cond_7

    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_7
    :try_start_0
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    move-wide v5, v1

    .line 414
    :goto_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 416
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v17, v3

    move-wide v3, v5

    move-wide v14, v5

    move-wide/from16 v5, v17

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 419
    const/16 v5, 0x14

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    if-ne v0, v7, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    invoke-direct {v6, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 426
    nop

    .line 428
    :try_start_2
    invoke-virtual {v9, v8, v14, v15, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;

    move-result-object v16

    .line 430
    invoke-direct {v9, v14, v15}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(J)V

    .line 433
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v3, v17

    move-object/from16 v19, v6

    const/16 v8, 0x14

    move-wide v5, v14

    const/16 v14, 0x14

    move-object/from16 v8, v16

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Ljava/lang/String;JJLorg/apache/http/Header;Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;)V

    .line 436
    move-wide/from16 v1, v17

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_9

    .line 437
    iget-object v3, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    const-string v4, "RES_SIZE"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_9
    new-instance v3, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v11, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 442
    invoke-virtual {v9, v3, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 445
    iget-object v0, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 448
    invoke-direct {v9, v12, v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b(Ljava/lang/String;J)V

    .line 450
    invoke-direct {v9, v12, v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Ljava/lang/String;J)Z

    move-result v0

    .line 451
    if-eqz v0, :cond_b

    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    .line 466
    :cond_a
    iget-object v0, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 469
    iget-object v0, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v10, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    nop

    .line 498
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 501
    goto :goto_5

    .line 499
    :catch_0
    move-exception v0

    .line 505
    :goto_5
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 470
    return-object v3

    .line 452
    :cond_b
    :goto_6
    :try_start_5
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "]\uff0ccopy success ["

    const-string v3, "]\uff0ctarget file exist ["

    if-eqz v1, :cond_c

    .line 453
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->j:Ljava/util/Set;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    const/16 v4, 0x10

    iget-object v5, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add blackset,cacheFile exist ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 455
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 456
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v12, v5, v0}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_c
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;

    iget-object v4, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cacheFile exist ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 460
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 461
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "],cache was cleaned"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v12, v4, v0}, Lcom/alipay/mobile/common/transport/download/DownloadFileIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 471
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v19, v6

    :goto_7
    move-object/from16 v14, v19

    goto :goto_8

    .line 420
    :catch_1
    move-exception v0

    const/16 v14, 0x14

    .line 421
    :try_start_7
    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    iget-object v2, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 423
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache file read fail"

    invoke-direct {v1, v14, v12, v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 425
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 471
    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    .line 473
    :goto_8
    :try_start_8
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    goto :goto_9

    .line 477
    :cond_d
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 478
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 482
    :cond_e
    :goto_9
    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    iget-object v1, v9, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-static {v10, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 486
    instance-of v1, v0, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    if-nez v1, :cond_10

    .line 489
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_f

    .line 490
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 492
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download failed! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 487
    :cond_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKDownloadIOException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    check-cast v0, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 496
    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_11

    .line 498
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 501
    goto :goto_a

    .line 499
    :catch_2
    move-exception v0

    .line 505
    :cond_11
    :goto_a
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    throw v1

    .line 392
    :cond_12
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    .line 394
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The user has sent too many requests in a given amount of time."

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_13
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c()V

    .line 387
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    const-string v1, "httpStatus: 416 Requested Range Not Satisfiable (HTTP/1.1 - RFC 2616) "

    invoke-direct {v0, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_14
    if-eqz v8, :cond_15

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent()V

    goto :goto_b

    .line 511
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->abort()V

    .line 513
    :goto_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public isRetryException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 856
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/http/client/ClientProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 862
    .local v0, "result":Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRetryException,exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",canRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    return v0
.end method

.method protected preCheck()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->preCheck()V

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 96
    return-void
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 7

    .line 204
    const-string v0, "DownloadWorker"

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 205
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 206
    const-wide/16 v3, -0x1

    .line 207
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 208
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 211
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " resCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",contentLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processResponse,exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 221
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->abort()V

    .line 226
    :cond_1
    if-eqz p1, :cond_2

    .line 227
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 231
    :cond_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Ljava/lang/Exception;)V

    .line 234
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DOWNLOADERR_RETRY switch is on,retryCount="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    .line 243
    iget-object p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object p1

    const-string v0, "RETRY"

    const-string v1, "T"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object p1

    iget v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RETRYCOUNT"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object p1

    .line 248
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 249
    nop

    .line 250
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/alipay/mobile/common/transport/utils/DownloadUtils;->constructHttpUriRequestWithURI(Ljava/net/URI;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 255
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 258
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 260
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string v0, "http.route.forced-route"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    .line 262
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    .line 262
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object p1

    return-object p1

    .line 235
    :cond_3
    const-string/jumbo p1, "request is canceled,can\'t retry"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    throw v1
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "resCode"    # I
    .param p2, "resMsg"    # Ljava/lang/String;

    .line 726
    const/16 v0, 0xce

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 729
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;
.super Lcom/alipay/mobile/common/transport/http/HttpManager;
.source "DjgHttpManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 69
    if-eqz p0, :cond_2

    .line 73
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request#uri is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request#getRequestLine is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;)I
    .locals 5
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "HttpManager"

    .line 124
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "task_timeout_second"

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/transport/utils/HttpClientUtils;->removeIntParamter(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)I

    move-result v2

    move v3, v1

    .line 125
    .local v3, "taskTimeout":I
    move v3, v2

    if-gtz v2, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    const/4 v2, 0x5

    if-ge v3, v2, :cond_1

    .line 129
    const-string v2, "[getTaskTimeoutByRequestParam] Task timeout minimum 5 seconds. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x5

    .line 132
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[getTaskTimeoutByRequestParam] Finished. taskTimeout = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return v3

    .line 134
    .end local v3    # "taskTimeout":I
    :catchall_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getTaskTimeoutByRequestParam] Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 111
    return-void
.end method

.method protected createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 119
    new-instance v0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .line 87
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->setHeaders(Ljava/util/ArrayList;)V

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute url=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request#url is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4

    .line 31
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;->createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    move-result-object v0

    .line 33
    invoke-super {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;->b(Lorg/apache/http/client/methods/HttpUriRequest;)I

    move-result p1

    .line 37
    if-lez p1, :cond_0

    .line 38
    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/common/transport/Response;

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/common/transport/Response;

    .line 42
    :goto_0
    check-cast p1, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string v1, "CancellationException"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    throw v0

    .line 56
    :catch_1
    move-exception p1

    .line 57
    const-string v1, "TimeoutException"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NETWORK_TASK_TIME_OUT_ERROR"

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 48
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 50
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpException;

    throw p1

    .line 53
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NETWORK_UNKNOWN_ERROR"

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    throw v0

    .line 43
    :catch_3
    move-exception p1

    .line 44
    const-string v1, "InterruptedException"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NETWORK_CANCEL_ERROR"

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw v0
.end method

.method public generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1
    .param p1, "rpcHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 105
    new-instance v0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpManager;->coreHttpManager:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getDjgHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

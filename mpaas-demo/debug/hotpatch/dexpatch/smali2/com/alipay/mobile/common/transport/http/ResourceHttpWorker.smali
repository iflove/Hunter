.class public Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;
.super Lcom/alipay/mobile/common/transport/http/HttpWorker;
.source "ResourceHttpWorker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->getAllowedRetryDuration()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    .line 19
    return-void
.end method


# virtual methods
.method protected canRetryByRunTimeAndRetries()Z
    .locals 7

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-wide v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 97
    .local v4, "taskTimeCost":J
    move-wide v4, v0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->getAllowedRetryDuration()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[canRetryByRunTimeAndRetries] taskTimeCost not conditions, taskTimeCost = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected canRetryCurrTaskForSubBiz(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HttpWorker"

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "[canRetryCurrTaskForSubBiz] User cancelled."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v1

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 31
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->isCanRetry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const-string v0, "[canRetryCurrTaskForSubBiz] HttpException can\'t retry."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const-string v0, "[canRetryCurrTaskForSubBiz] Can\'t retry for std http request."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v1

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->canRetryByRunTimeAndRetries()Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    const-string v0, "[canRetryCurrTaskForSubBiz] Can\'t retry for times."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v1

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "[canRetryCurrTaskForSubBiz] sleep exception: "

    if-nez v0, :cond_4

    .line 55
    :try_start_0
    const-string v0, "[canRetryCurrTaskForSubBiz] Network unavailable., sleep 1s. "

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 58
    .local v0, "e1":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    const-string v0, "[canRetryCurrTaskForSubBiz] After 1 second the user canceled."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v1

    .line 68
    :cond_4
    const/16 v0, 0x1f4

    .line 69
    .local v0, "tSleepTime":I
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/ResourceHttpWorker;->mRetryTimes:I

    const/16 v4, 0xf

    if-le v1, v4, :cond_5

    .line 70
    const/16 v0, 0x3e8

    .line 73
    :cond_5
    :try_start_1
    const-string v1, "[canRetryCurrTaskForSubBiz] Network available, sleep 500ms. "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "tSleepTime":I
    :cond_6
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method protected canRetryForNetworkAvailable()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected getAllowedRetryDuration()I
    .locals 1

    .line 114
    const v0, 0xea60

    return v0
.end method

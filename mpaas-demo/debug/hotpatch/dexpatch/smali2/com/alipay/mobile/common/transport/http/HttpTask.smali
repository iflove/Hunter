.class public Lcom/alipay/mobile/common/transport/http/HttpTask;
.super Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/http/HttpWorker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;I)V
    .locals 0
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .param p2, "taskType"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;-><init>(Ljava/util/concurrent/Callable;I)V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 28
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 95
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected cancelAll(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 84
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->cancel(Z)Z

    .line 88
    :cond_1
    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 89
    return-void
.end method

.method public done()V
    .locals 6

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->mTaskState:I

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->mObservable:Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    .local v2, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    move-object v3, v1

    .line 41
    .local v3, "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->done()V

    .line 43
    return-void

    .line 41
    :cond_0
    move-object v0, v1

    .line 47
    .local v0, "response":Lcom/alipay/mobile/common/transport/Response;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/Response;

    move-object v0, v4

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V

    .line 80
    :cond_2
    return-void

    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpTask;->cancelAll(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 74
    :catch_0
    move-exception v4

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing http request"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 75
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :goto_1
    const-string v4, "CancellationException"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 76
    invoke-interface {v3, v2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 80
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_2
    return-void

    .line 57
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "====done ExecutionException===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HttpWorker"

    invoke-static {v5, v4, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_2

    .line 53
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setFailedException(Ljava/lang/Throwable;)V

    .line 55
    const/4 v4, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 99
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setException(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 101
    .local v2, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    .line 102
    .local v1, "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setFailedException(Ljava/lang/Throwable;)V

    .line 104
    const/4 v0, 0x7

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isH5Task()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/h5/H5HttpWorker;

    return v0
.end method

.method public run()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->run()V

    .line 33
    return-void
.end method

.method public setCurrentThreadPoolExecutor(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V
    .locals 1
    .param p1, "currentThreadPoolExecutor"    # Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    if-nez p1, :cond_1

    .line 126
    return-void

    .line 128
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->setCurrentThreadPoolExecutor(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V

    .line 129
    return-void
.end method

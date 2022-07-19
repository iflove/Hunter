.class public Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZHttpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

.field private b:I

.field private c:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    .line 38
    return-void
.end method

.method private a()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->c()I

    move-result v0

    const/4 v1, 0x0

    .line 66
    .local v1, "timeOut":I
    move v1, v0

    if-gtz v0, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d()Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;

    move-result-object v0

    const/4 v2, 0x0

    .line 70
    .local v2, "timeoutMonitor":Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;
    move-object v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->setExecuteTime(J)V

    .line 71
    add-int/lit16 v0, v1, 0x12c

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 93
    return-void

    .line 86
    :cond_2
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "write timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ZHttpOutputStream"

    const-string v2, "cancel fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private c()I
    .locals 3

    .line 99
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    return v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTP_WRITE_TIMEOUT_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 104
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 105
    iput v1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    .line 106
    return v1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 113
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    nop

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-static {v0}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    goto :goto_0

    .line 114
    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_0
    move-exception v0

    .line 115
    iput v1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    .line 116
    return v1

    .line 125
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b:I

    return v0
.end method

.method private d()Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->c:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;

    if-eqz v0, :cond_0

    .line 130
    return-object v0

    .line 132
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;-><init>(Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->c:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;

    return-object v0
.end method


# virtual methods
.method public getTimeoutScheduler()Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public setHttpWorker(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 0
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 54
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 43
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a()V

    .line 48
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->b()V

    .line 50
    return-void
.end method

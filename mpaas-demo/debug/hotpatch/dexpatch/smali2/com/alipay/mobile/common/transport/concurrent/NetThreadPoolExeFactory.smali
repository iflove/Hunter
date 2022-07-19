.class public final Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;
.super Ljava/lang/Object;
.source "NetThreadPoolExeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;,
        Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;
    }
.end annotation


# static fields
.field protected static final PREFIX_THREAD_NAME:Ljava/lang/String; = "HttpManager.HttpWorker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 2
    .param p0, "netType"    # I

    .line 323
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 324
    .local v0, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->c(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    .line 333
    goto :goto_0

    .line 335
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    .line 336
    goto :goto_0

    .line 329
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->c(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    .line 330
    goto :goto_0

    .line 326
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->d(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    .line 327
    nop

    .line 341
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V
    .locals 2
    .param p0, "threadPoolConfig"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    .line 346
    const-string/jumbo v0, "wifi"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 347
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 348
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 349
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 351
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V
    .locals 2
    .param p0, "threadPoolConfig"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    .line 354
    const-string v0, "4g"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 355
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 356
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 357
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 359
    return-void
.end method

.method private static c(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V
    .locals 2
    .param p0, "threadPoolConfig"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    .line 362
    const-string v0, "3g"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 363
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 364
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    .line 365
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 366
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 368
    return-void
.end method

.method private static d(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V
    .locals 2
    .param p0, "threadPoolConfig"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    .line 371
    const-string v0, "2g"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 372
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 373
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 374
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 376
    return-void
.end method

.method private static e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 11
    .param p0, "config"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createThreadPoolExeByConfig.   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetThreadPoolExeFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    iget v3, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    iget v4, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    iget-wide v5, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v10, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v1, 0x0

    .line 388
    .local v1, "executor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 389
    return-object v1
.end method

.method public static getAmrThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 75
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 76
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 79
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 81
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getAmrThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 260
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 261
    .local v1, "netType":I
    move v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    const/4 v2, 0x0

    .line 262
    .local v2, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    move-object v2, v0

    new-instance v3, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v4, "amr"

    invoke-direct {v3, v4}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 263
    const-string v0, "NetThreadPoolExeFactory"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 279
    return-object v2

    .line 275
    :cond_0
    const-string v3, "amr 4g/WI-FI threadCount=[2]"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 277
    goto :goto_0

    .line 269
    :cond_1
    const-string v5, "amr 3g threadCount=[1]"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput v3, v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 271
    iput v4, v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    .line 272
    goto :goto_0

    .line 265
    :cond_2
    const-string v4, "amr 2g threadCount=[1]"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 267
    nop

    .line 281
    :goto_0
    return-object v2
.end method

.method public static getAmrUrgentThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 88
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrUrgentThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 89
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 92
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 94
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getAmrUrgentThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    .local v1, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v3, "amr-urgent"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 289
    return-object v1
.end method

.method public static getBgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 39
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getBgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 40
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 41
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 43
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 45
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getBgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 200
    .local v1, "netType":I
    move v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    const/4 v2, 0x0

    .line 201
    .local v2, "bgThreadConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    move-object v2, v0

    new-instance v3, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v4, "bg"

    invoke-direct {v3, v4}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 205
    .local v0, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    const/4 v3, 0x1

    const-string v4, "]"

    const-string v5, "NetThreadPoolExeFactory"

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 217
    const-string v3, "No default case!"

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BG_3G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v3

    .line 213
    .local v3, "countOf3g":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bg 3g threadCount=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 215
    goto :goto_0

    .line 207
    .end local v3    # "countOf3g":I
    :cond_1
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v3

    .line 208
    .local v3, "countOf2g":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bg 2g threadCount=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 210
    nop

    .line 221
    .end local v3    # "countOf2g":I
    :goto_0
    return-object v2
.end method

.method public static getFgMultimediaThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgMultimediaThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 156
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 159
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 161
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getFgMultimediaThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 3

    .line 312
    const/4 v0, 0x0

    .local v0, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 313
    move-object v0, v1

    const-string v2, "all"

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 314
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v2, "media"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 315
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 316
    const-wide/16 v1, 0x5

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 317
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    .line 318
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 319
    return-object v0
.end method

.method public static getFgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 107
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 108
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 112
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getFgThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 3

    .line 169
    const/4 v0, 0x0

    .local v0, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 170
    move-object v0, v1

    const-string v2, "all"

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v2, "fg"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 172
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 173
    const-wide/16 v1, 0x1e

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 174
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    .line 175
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 176
    return-object v0
.end method

.method public static getH5ThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getH5ThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 120
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 121
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 123
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 125
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getH5ThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 3

    .line 181
    const/4 v0, 0x0

    .local v0, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 182
    move-object v0, v1

    const-string v2, "all"

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 183
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v2, "h5"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 184
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 185
    const-wide/16 v1, 0x1e

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 186
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    .line 187
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 188
    return-object v0
.end method

.method public static getImgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 57
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getImgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 58
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 59
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getImgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 226
    .local v2, "netType":I
    move v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    const/4 v3, 0x0

    .line 227
    .local v3, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    move-object v3, v0

    new-instance v4, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v5, "img"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 231
    .local v0, "config":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .local v1, "threadCount2":I
    const/4 v4, 0x1

    const-string v5, "]"

    const-string v6, "NetThreadPoolExeFactory"

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 249
    return-object v3

    .line 234
    :cond_0
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IMG_4G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "img 4g/wifi threadCount=["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 237
    goto :goto_0

    .line 244
    :cond_1
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IMG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "img 3g threadCount=["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 247
    goto :goto_0

    .line 239
    :cond_2
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IMG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "img 2g threadCount=["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 242
    nop

    .line 251
    :goto_0
    return-object v3
.end method

.method public static getUrgentThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getUrgentThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 138
    .local v0, "config":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    if-nez p1, :cond_0

    .line 139
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0

    .line 141
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 143
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->e(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    return-object v1
.end method

.method public static final getUrgentThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 3

    .line 297
    const/4 v0, 0x0

    .local v0, "threadPoolConfig":Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 298
    move-object v0, v1

    const-string v2, "all"

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 299
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v2, "urgent"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 300
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V

    .line 301
    const-wide/16 v1, 0x14

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 302
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    .line 303
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 304
    return-object v0
.end method

.method protected static setPoolSize(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;I)V
    .locals 0
    .param p0, "threadPoolConfig"    # Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .param p1, "threadCount2"    # I

    .line 255
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 256
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    .line 257
    return-void
.end method

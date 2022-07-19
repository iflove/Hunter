.class public Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;
.super Ljava/lang/Object;
.source "H5ThreadPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;,
        Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ThreadPoolFactory"

.field private static orderedExecutor:Ljava/util/concurrent/Executor;

.field private static scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    const-class v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0x8

    const/16 v4, 0x20

    const-wide/16 v5, 0x3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$1;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$1;-><init>()V

    new-instance v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v10}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    const-class v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x3

    new-instance v3, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$2;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$2;-><init>()V

    new-instance v4, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    const/4 v1, 0x0

    .line 32
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 60
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    const/4 v1, 0x0

    .line 62
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 65
    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSingleThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 11

    const-class v0, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x28

    invoke-direct {v8, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string v2, "H5_SingleThreadExecutor_for_log"

    invoke-direct {v9, v2}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v10}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;

    .line 95
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->orderedExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

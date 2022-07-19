.class public Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;
.super Ljava/lang/Object;
.source "ThreadsWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->a:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    if-eqz v0, :cond_0

    .line 25
    return-object v0

    .line 27
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->a:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    if-eqz v1, :cond_1

    .line 29
    monitor-exit v0

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->a:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public watch(Ljava/lang/Thread;J)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "afterMs"    # J

    .line 56
    if-nez p1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->watch(Ljava/util/concurrent/Future;Ljava/lang/Thread;J)V

    .line 63
    return-void
.end method

.method public watch(Ljava/util/concurrent/Future;Ljava/lang/Thread;J)V
    .locals 8
    .param p1, "future"    # Ljava/util/concurrent/Future;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "afterMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Thread;",
            "J)V"
        }
    .end annotation

    .line 42
    if-nez p2, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    .line 46
    return-void

    .line 48
    :cond_1
    if-nez p1, :cond_2

    .line 49
    new-instance v0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;-><init>(Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;Ljava/lang/Thread;J)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p3, p4, v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 51
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;-><init>(Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;Ljava/util/concurrent/Future;Ljava/lang/Thread;J)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p3, p4, v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 53
    return-void
.end method

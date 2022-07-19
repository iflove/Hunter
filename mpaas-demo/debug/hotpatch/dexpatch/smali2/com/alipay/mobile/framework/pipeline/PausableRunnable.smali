.class public Lcom/alipay/mobile/framework/pipeline/PausableRunnable;
.super Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;
.source "PausableRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/PausableRunnable$PausableIgnore;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:J

.field private static c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static d:Ljava/util/concurrent/locks/Condition;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->a:Z

    .line 19
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->b:J

    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->d:Ljava/util/concurrent/locks/Condition;

    .line 22
    const/4 v0, 0x7

    sput v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->e:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method private static a()V
    .locals 5

    .line 53
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 55
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->a:Z

    if-eqz v0, :cond_1

    .line 56
    sget-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->e:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->resume()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    return-void

    .line 61
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->d:Ljava/util/concurrent/locks/Condition;

    sget v1, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->e:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    :goto_1
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static getAwaitTime()I
    .locals 1

    .line 97
    sget v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->e:I

    return v0
.end method

.method public static obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/PausableRunnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 40
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 33
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable$PausableIgnore;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/PausableRunnable;

    move-result-object v0

    return-object v0
.end method

.method static pause()V
    .locals 2

    .line 71
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->b:J

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static resume()V
    .locals 2

    .line 81
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    const-wide/16 v0, -0x1

    :try_start_0
    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->b:J

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->a:Z

    .line 85
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static setAwaitTime(I)V
    .locals 0
    .param p0, "awaitTime"    # I

    .line 92
    sput p0, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->e:I

    .line 93
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->setAwaitTime(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->a()V

    .line 49
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->run()V

    .line 50
    return-void
.end method

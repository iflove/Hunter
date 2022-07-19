.class public Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
.super Lcom/alipay/mobile/framework/pipeline/StandardPipeline;
.source "TimeoutPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile c:J

.field private static volatile d:I


# instance fields
.field private volatile b:Z

.field private e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->getAwaitTime()I

    move-result v0

    sput v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    new-instance v8, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/alipay/mobile/framework/pipeline/PausableScheduledThreadPool;-><init>(I)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;JLjava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;JLjava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "timeout"    # J
    .param p5, "overTimeExecutor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 59
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;-><init>(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->f:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;

    .line 113
    iput-wide p3, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    .line 114
    iput-object p5, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 115
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;J)V
    .locals 5
    .param p1, "runnable"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;
    .param p2, "timeout"    # J

    .line 157
    iget-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->f:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;->setTargetTask(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->f:Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline$TimeoutTask;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set a watch dog, timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeoutPipeline"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->g:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->b:Z

    return p1
.end method

.method public static pause()V
    .locals 3

    .line 77
    const-class v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    monitor-enter v0

    .line 78
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a:Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->c:J

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resume()V
    .locals 3

    .line 84
    const-class v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;

    monitor-enter v0

    .line 85
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a:Z

    .line 86
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->c:J

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setAwaitTime(I)V
    .locals 0
    .param p0, "awaitTime"    # I

    .line 118
    sput p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->d:I

    .line 119
    return-void
.end method


# virtual methods
.method protected execute(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V
    .locals 8
    .param p1, "runnable"    # Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 135
    .local v4, "currentWaitTime":J
    move-wide v4, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v6, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->d:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 136
    sput-boolean v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a:Z

    .line 137
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->c:J

    .line 138
    iget-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;J)V

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v1, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 141
    .local v0, "restPauseTime":J
    iget-wide v2, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    add-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;J)V

    .line 144
    .end local v0    # "restPauseTime":J
    .end local v4    # "currentWaitTime":J
    goto :goto_0

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->b:Z

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 147
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->b:Z

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->a(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;J)V

    .line 152
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->execute(Lcom/alipay/mobile/framework/pipeline/PipelineRunnable;)V

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOverTimeExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 92
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 127
    iput-wide p1, p0, Lcom/alipay/mobile/framework/pipeline/TimeoutPipeline;->mTimeout:J

    .line 128
    return-void
.end method

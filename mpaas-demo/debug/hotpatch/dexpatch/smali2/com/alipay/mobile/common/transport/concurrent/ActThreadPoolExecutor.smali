.class public Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ActThreadPoolExecutor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field protected mPauseCondition:Ljava/util/concurrent/locks/Condition;

.field protected mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mPaused:Z


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 38
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 52
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 45
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 61
    return-void
.end method

.method private a()V
    .locals 1

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 162
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 86
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    const/4 v1, 0x0

    .line 88
    .local v1, "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ","

    const-string v3, "beforeExecute: "

    const-string v4, "ActThreadPoolExecutor"

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v1    # "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 166
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 170
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    const/4 v1, 0x0

    .line 172
    .local v1, "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ","

    const-string v3, "beforeExecute.await: "

    const-string v4, "ActThreadPoolExecutor"

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    :cond_1
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 99
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 101
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setTaskState(I)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 67
    :try_start_0
    instance-of v0, p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    const/4 v1, 0x0

    .line 69
    .local v1, "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setTaskState(I)V

    .line 71
    .end local v1    # "httpTask":Lcom/alipay/mobile/common/transport/http/HttpTask;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 75
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "ActThreadPoolExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    nop

    .line 82
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTaskType()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b:I

    return v0
.end method

.method public getTaskTypeName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isHighPriorityThreadPool()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    return v0

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 109
    :try_start_0
    const-string v0, "ActThreadPoolExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTaskTypeName\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    :try_start_0
    const-string v0, "ActThreadPoolExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTaskTypeName\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setTaskType(I)V
    .locals 0
    .param p1, "taskType"    # I

    .line 140
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b:I

    .line 141
    return-void
.end method

.method public setTaskTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskTypeName"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 133
    return-void
.end method

.class public final Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static INSTANCE:Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor; = null

.field static final MAXIMUM_POOL_SIZE:I

.field private static final NAME_GLOBAL_STANDARD_PIPELINE:Ljava/lang/String; = "GlobalStandardPipeline"

.field public static final TAG:Ljava/lang/String; = "AsyTskExecutor"

.field private static final THREADFACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private volatile PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private SCHEDULED_TIMER:Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;

.field private final SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalStandardPipline:Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

.field private mTransactionExecutor:Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 43
    sput v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->CORE_POOL_SIZE:I

    .line 45
    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->MAXIMUM_POOL_SIZE:I

    .line 50
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor$1;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 104
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v9, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->CORE_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x3

    move-object v0, v8

    move v1, v9

    move v2, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v9, v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 87
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_TIMER:Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 123
    return-void
.end method

.method private getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mGlobalStandardPipline:Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    if-eqz v0, :cond_0

    .line 367
    return-object v0

    .line 369
    :cond_0
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mGlobalStandardPipline:Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    if-eqz v0, :cond_1

    .line 371
    monitor-exit p0

    return-object v0

    .line 373
    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    const-string v1, "GlobalStandardPipeline"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mGlobalStandardPipline:Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    .line 374
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->start()I

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mGlobalStandardPipline:Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    monitor-exit p0

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;
    .locals 1

    .line 131
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    return-object v0
.end method

.method private getTransactionExecutor()Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mTransactionExecutor:Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    if-eqz v0, :cond_0

    .line 353
    return-object v0

    .line 355
    :cond_0
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mTransactionExecutor:Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    if-eqz v0, :cond_1

    .line 357
    monitor-exit p0

    return-object v0

    .line 359
    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    const-string v1, "TransactionPipeline"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mTransactionExecutor:Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    .line 360
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->start()I

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->mTransactionExecutor:Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    monitor-exit p0

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final addTransaction(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 301
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    .line 305
    .local v0, "_runnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getTransactionExecutor()Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 306
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    .end local v0    # "_runnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addTransaction(Ljava/lang/Runnable;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 318
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    .line 322
    .local v0, "_runnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getTransactionExecutor()Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 323
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 319
    .end local v0    # "_runnable":Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 233
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 149
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 153
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 154
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeSerially(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "weight"    # I

    .line 164
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 168
    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 169
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 179
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GlobalStandardPipeline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    const/4 v1, 0x0

    .line 187
    .local v1, "standardPipeline":Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p1, v2}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 189
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->start()I

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 194
    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 196
    .end local v1    # "standardPipeline":Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
    return-void

    .line 183
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 184
    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    return-void

    .line 180
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "weight"    # I

    .line 207
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GlobalStandardPipeline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    const/4 v1, 0x0

    .line 215
    .local v1, "standardPipeline":Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p1, v2}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 217
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->start()I

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 222
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v0

    .line 221
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    .line 224
    .end local v1    # "standardPipeline":Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
    return-void

    .line 211
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    .line 212
    invoke-virtual {v1, p2, p3, p4}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->addTask(Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;)V

    return-void

    .line 208
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public final getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public final removeTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 332
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getTransactionExecutor()Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->nextTransaction()I

    .line 336
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"id\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 249
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "initialDelay"    # J
    .param p5, "period"    # J
    .param p7, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 270
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_TIMER:Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/asynctask/ScheduleTimer;->schedule(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    move-result-object v0

    return-object v0
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "initialDelay"    # J
    .param p5, "delay"    # J
    .param p7, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 287
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/quinox/asynctask/PipelineRunnable;

    move-result-object v2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \"threadName\" can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .line 342
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getTransactionExecutor()Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->stop()I

    .line 343
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getGlobalStandardPipline()Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->stop()I

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;

    .line 345
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->stop()I

    .line 346
    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 349
    return-void
.end method

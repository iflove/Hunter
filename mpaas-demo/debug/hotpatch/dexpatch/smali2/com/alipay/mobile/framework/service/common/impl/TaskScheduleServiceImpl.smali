.class public Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.source "TaskScheduleServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$IdleCheckTask;,
        Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    }
.end annotation


# static fields
.field public static final URGENT_ALL_IN_ONE_PREFIX:Ljava/lang/String; = "URGENT_"

.field private static final a:J


# instance fields
.field private b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Z

.field private o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private s:Ljava/util/concurrent/ThreadPoolExecutor;

.field private t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/framework/service/common/OrderedExecutor<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 108
    const-string v0, "TaskScheduleService"

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;-><init>()V

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getNumberOfCPUCores()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "in constructor"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "revise to dual core, cpuCoresNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    .line 121
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 123
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)V

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->setGlobalRunnableHandler(Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;)V

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a()V

    .line 135
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3

    .line 349
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 354
    :catchall_0
    move-exception p1

    .line 355
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueFromJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TaskScheduleService"

    invoke-interface {v0, v1, p2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return p3

    .line 350
    :cond_1
    :goto_0
    return p3
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 3

    .line 364
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    const/4 v1, 0x2

    if-gez v0, :cond_1

    .line 365
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_0

    .line 366
    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 368
    :cond_0
    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 371
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 373
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_3

    .line 374
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_2

    .line 375
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 377
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 380
    :cond_3
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 382
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_4

    .line 383
    const/16 v0, 0x2d

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 385
    :cond_4
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 387
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_5

    .line 388
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 390
    :cond_5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 392
    :goto_3
    return-object p1
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 18

    .line 676
    move-object/from16 v1, p2

    const-string v2, "create normal executor, create a new executor"

    if-eqz v1, :cond_4

    .line 679
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createExecutor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskScheduleService"

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    sget-object v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$4;->$SwitchMap$com$alipay$mobile$framework$service$common$TaskScheduleService$ScheduleType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 702
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->taskType:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    iget v5, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v6, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    iget v2, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    int-to-long v7, v2

    iget-object v9, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v10, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->allowCoreTimeout:Z

    iget-object v11, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v12, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->factory:Ljava/util/concurrent/ThreadFactory;

    iget-object v13, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->rejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;IIJLjava/util/concurrent/TimeUnit;ZLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 704
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_0

    .line 705
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;->setNotPausable(Z)V

    .line 709
    :cond_0
    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 699
    :cond_1
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/BizSpecificThreadPoolExecutor;

    iget v4, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v5, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    iget v2, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    int-to-long v6, v2

    iget-object v8, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v10, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->factory:Ljava/util/concurrent/ThreadFactory;

    iget-object v11, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->rejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/alipay/mobile/framework/service/common/threadpool/BizSpecificThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 700
    move-object/from16 v3, p0

    goto :goto_1

    .line 684
    :cond_2
    move-object/from16 v3, p0

    :try_start_0
    iget-object v0, v3, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 686
    instance-of v5, v0, Lcom/alipay/mobile/framework/pipeline/PausableThreadPoolExecutor;

    if-eqz v5, :cond_3

    .line 687
    nop

    .line 688
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "create normal executor, use AsyncTaskExecutor executor"

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    iget-object v8, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->taskType:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    iget v9, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v10, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    iget v5, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    int-to-long v11, v5

    iget-object v13, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v14, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->allowCoreTimeout:Z

    iget-object v15, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->factory:Ljava/util/concurrent/ThreadFactory;

    iget-object v6, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->rejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v7, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v7 .. v17}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;IIJLjava/util/concurrent/TimeUnit;ZLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 691
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :goto_0
    goto :goto_1

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    iget-object v6, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->taskType:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    iget v7, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v8, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    iget v5, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    int-to-long v9, v5

    iget-object v11, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v12, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->allowCoreTimeout:Z

    iget-object v13, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v14, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->factory:Ljava/util/concurrent/ThreadFactory;

    iget-object v15, v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->rejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;IIJLjava/util/concurrent/TimeUnit;ZLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 695
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    nop

    .line 709
    :goto_1
    return-object v0

    .line 677
    :cond_4
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfg is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 5

    .line 279
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->IO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const/4 v2, 0x1

    const-string v3, "IO_THREAD_"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 280
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const/4 v3, 0x5

    const-string v4, "URGENT_"

    invoke-direct {v0, v1, v3, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 281
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->NORMAL:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "NORMAL_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 282
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->RPC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "RPC_INVOKE_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 283
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->MMS_HTTP:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "MMS_HTTP_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 284
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "MMS_DJANGO_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 285
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->ORDERED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v4, "ORDERED_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 286
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const/16 v2, 0xa

    const-string v4, "URGENT_DISP_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 287
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const/16 v2, 0x8

    const-string v4, "URGENT_HOME_"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 288
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v2, "URGENT_BIZ_SPECIFIC_THREAD_"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TaskScheduleService"

    const-string v3, "initializeThreadPools"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    .line 306
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 334
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 339
    const-string v0, "coreSize"

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-direct {p0, p2, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    .line 340
    const-string/jumbo v0, "maxSize"

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-direct {p0, p2, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    .line 341
    const-string/jumbo v0, "queueSize"

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {p0, p2, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    .line 342
    const-string v0, "keepAlive"

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    invoke-direct {p0, p2, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    goto :goto_0

    .line 343
    :catchall_0
    move-exception p1

    .line 344
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setValueFromJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TaskScheduleService"

    invoke-interface {p2, v0, p3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    :goto_0
    return-void

    .line 335
    :cond_1
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .line 189
    const-string v0, "TaskScheduleService"

    if-nez p1, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    if-eqz v1, :cond_1

    .line 194
    check-cast p1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    .line 195
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->shutdownValidly()V

    .line 196
    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/framework/service/common/threadpool/ScheduledPoolExecutor;

    if-eqz v1, :cond_2

    .line 197
    check-cast p1, Lcom/alipay/mobile/framework/service/common/threadpool/ScheduledPoolExecutor;

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/common/threadpool/ScheduledPoolExecutor;->shutdownValidly()V

    .line 199
    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_3

    .line 200
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 202
    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    if-eqz v1, :cond_4

    .line 203
    check-cast p1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 204
    invoke-virtual {p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->shutdown()V

    .line 205
    goto :goto_0

    .line 206
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdownExecutorCommonly, no such type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    goto :goto_1

    .line 210
    :catchall_0
    move-exception p1

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    .line 987
    invoke-virtual {p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;->getThreadCount()I

    move-result v0

    .line 988
    invoke-virtual {p3}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object p3

    .line 989
    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "]"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 990
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->p:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private b(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 3

    .line 396
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    const/4 v1, 0x2

    if-gez v0, :cond_1

    .line 397
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_0

    .line 398
    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 400
    :cond_0
    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 403
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 405
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_3

    .line 406
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_2

    .line 407
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 409
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 412
    :cond_3
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 414
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_4

    .line 415
    const/16 v0, 0xa

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 417
    :cond_4
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 419
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_5

    .line 420
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 422
    :cond_5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 424
    :goto_3
    return-object p1
.end method

.method private b()V
    .locals 3

    .line 309
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 310
    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TaskScheduleService"

    const-string v2, "initializePoolCfgs: application is NULL"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 315
    :cond_0
    const-string/jumbo v1, "thread_pool_config"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    return-void

    .line 320
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string v2, "io"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "urgent"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "normal"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "rpc"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "mmsHttp"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "mmsDjango"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "ordered"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "urgentDisplay"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string/jumbo v2, "urgentHomePage"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    const-string v2, "bizSpecific"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private c(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 3

    .line 428
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    if-gez v0, :cond_1

    .line 429
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 430
    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 432
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 434
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 435
    iput v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_1

    .line 438
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 440
    :cond_2
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_3

    .line 441
    const/16 v0, 0x20

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_2

    .line 443
    :cond_3
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 445
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_4

    .line 446
    const/4 v0, 0x3

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_3

    .line 448
    :cond_4
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 450
    :goto_3
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    const/4 v1, 0x1

    if-gez v0, :cond_5

    .line 452
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_4

    .line 454
    :cond_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 456
    :goto_4
    return-object p1
.end method

.method private c()Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 825
    new-instance v7, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$IdleCheckTask;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$IdleCheckTask;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$1;)V

    .line 826
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0xa

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 828
    iput-object v0, v7, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$IdleCheckTask;->taskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 829
    return-object v0
.end method

.method private d(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 3

    .line 463
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    const/16 v1, 0x20

    if-gez v0, :cond_0

    .line 465
    iput v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 470
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 472
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_1

    .line 473
    iput v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 475
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 477
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_2

    .line 478
    const/4 v0, 0x3

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 480
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 482
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_3

    .line 483
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 485
    :cond_3
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 487
    :goto_3
    return-object p1
.end method

.method private d()V
    .locals 3

    .line 923
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->n:Z

    const-string v1, "TaskScheduleService"

    if-eqz v0, :cond_0

    .line 924
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "executeIdleTasks: already executed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return-void

    .line 927
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->n:Z

    .line 930
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    .line 932
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 938
    goto :goto_1

    .line 936
    :catchall_1
    move-exception v0

    .line 937
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 939
    :goto_1
    return-void
.end method

.method private e(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 2

    .line 494
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    if-gez v0, :cond_0

    .line 495
    const/4 v0, 0x4

    iget v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 497
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 499
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_1

    .line 500
    const v0, 0x7fffffff

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 502
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 504
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_2

    .line 505
    const/4 v0, 0x5

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 507
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 509
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_3

    .line 510
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 512
    :cond_3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 514
    :goto_3
    return-object p1
.end method

.method private e()V
    .locals 4

    .line 942
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    sget-wide v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:J

    .line 943
    const-string v3, "com.alipay.mobile.TASK_SCHEDULE_SERVICE_IDLE_TASK"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 953
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 954
    return-void
.end method

.method private f(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 3

    .line 521
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    if-gez v0, :cond_0

    .line 522
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 523
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 524
    iput v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 527
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 529
    :cond_1
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_2

    .line 530
    const/16 v0, 0x20

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 532
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 534
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_3

    .line 535
    const/16 v0, 0xa

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 537
    :cond_3
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 539
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    const/4 v1, 0x1

    if-gez v0, :cond_4

    .line 541
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 543
    :cond_4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 545
    :goto_3
    return-object p1
.end method

.method private f()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 958
    instance-of v1, v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    if-eqz v1, :cond_0

    .line 959
    check-cast v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;

    .line 960
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolExecutor;->setThreadPriority(I)V

    .line 962
    :cond_0
    return-void
.end method

.method private g(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 4

    .line 554
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-gez v0, :cond_1

    .line 555
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_0

    .line 556
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 558
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 561
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v3, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 563
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_3

    .line 564
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v1, :cond_2

    .line 565
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 567
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 570
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 572
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_4

    .line 573
    const/16 v0, 0x14

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 575
    :cond_4
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 577
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_5

    .line 578
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/LifoBlockingDeque;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/common/threadpool/LifoBlockingDeque;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 580
    :cond_5
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/LifoBlockingDeque;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/LifoBlockingDeque;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 582
    :goto_3
    return-object p1
.end method

.method private h(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;
    .locals 4

    .line 589
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-gez v0, :cond_1

    .line 590
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v2, :cond_0

    .line 591
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 593
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    goto :goto_0

    .line 596
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v3, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_coreSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->coreSize:I

    .line 598
    :goto_0
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    if-gez v0, :cond_3

    .line 599
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    if-gt v0, v2, :cond_2

    .line 600
    iput v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 602
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    goto :goto_1

    .line 605
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->maxSize:I

    .line 607
    :goto_1
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    if-gez v0, :cond_4

    .line 608
    const/16 v0, 0xa

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    goto :goto_2

    .line 610
    :cond_4
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_keepAlive:I

    iput v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->keepAlive:I

    .line 612
    :goto_2
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    if-gez v0, :cond_5

    .line 613
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_3

    .line 615
    :cond_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->pushed_workQueue:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 617
    :goto_3
    return-object p1
.end method


# virtual methods
.method public acquireBizSpecificExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 769
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public acquireBizSpecificScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 4

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2

    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 777
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->BIZ_SPECIFIC_SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v2, "URGENT_BIZ_SPECIFIC_SCHEDULED_THREAD_"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;I)V

    .line 779
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 780
    iget v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    const/16 v2, 0x8

    .line 781
    :cond_0
    new-instance v3, Lcom/alipay/mobile/framework/service/common/threadpool/BizSpecificScheduledExecutor;

    invoke-direct {v3, v2, v0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/BizSpecificScheduledExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 786
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 788
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    .line 622
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    if-ne p1, v0, :cond_0

    .line 623
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TaskScheduleService"

    const-string v2, "acquire URGENT_DISPLAY executor, pls ensure your usage!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "TaskScheduleService"

    const-string v1, "acquire URGENT_DISPLAY executor, pls ensure your usage!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 627
    if-eqz v0, :cond_1

    .line 628
    return-object v0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 632
    if-eqz v1, :cond_2

    .line 633
    monitor-exit v0

    return-object v1

    .line 635
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaskScheduleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireExecutor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v2, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$4;->$SwitchMap$com$alipay$mobile$framework$service$common$TaskScheduleService$ScheduleType:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 664
    :pswitch_0
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->BIZ_SPECIFIC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->k:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    goto :goto_0

    .line 661
    :pswitch_1
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->MMS_DJANGO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 662
    goto :goto_0

    .line 658
    :pswitch_2
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->MMS_HTTP:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 659
    goto :goto_0

    .line 656
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ThreadPool of type SYNC is not supported yet, please considering another type!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :pswitch_4
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->RPC:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->e:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 654
    goto :goto_0

    .line 650
    :pswitch_5
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->d:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 651
    goto :goto_0

    .line 647
    :pswitch_6
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 648
    goto :goto_0

    .line 644
    :pswitch_7
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_HOME_PAGE:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->j:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 645
    goto :goto_0

    .line 641
    :pswitch_8
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT_DISPLAY:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 642
    goto :goto_0

    .line 638
    :pswitch_9
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->IO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 639
    nop

    .line 667
    :goto_0
    if-eqz v1, :cond_3

    .line 670
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    monitor-exit v0

    .line 672
    return-object v1

    .line 668
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create executor of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acquireOrderedExecutor()Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/framework/service/common/OrderedExecutor<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    if-nez v0, :cond_1

    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    if-nez v0, :cond_0

    .line 736
    sget-object v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->ORDERED:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->h:Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$PoolCfg;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 737
    new-instance v1, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireBizSpecificExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    .line 739
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$2;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->setRunnableHandler(Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;)V

    .line 756
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    return-object v0
.end method

.method public acquireScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2

    .line 715
    monitor-enter p0

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;

    sget-object v1, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    const-string v2, "SCHEDULED_"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/threadpool/TaskFactory;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;Ljava/lang/String;I)V

    .line 718
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 719
    iget v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->m:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    const/16 v2, 0x8

    .line 720
    :cond_0
    new-instance v3, Lcom/alipay/mobile/framework/service/common/threadpool/ScheduledPoolExecutor;

    sget-object v4, Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;->SCHEDULED:Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/alipay/mobile/framework/service/common/threadpool/ScheduledPoolExecutor;-><init>(Lcom/alipay/mobile/framework/service/common/threadpool/TaskPoolRunnable$TaskType;ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 726
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 728
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public addIdleTask(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    if-nez p1, :cond_0

    const-string/jumbo v0, "no task"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
    .locals 8

    .line 844
    if-eqz p1, :cond_6

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 850
    nop

    .line 853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 855
    const/4 v2, 0x0

    const-string v3, "TaskScheduleService"

    if-nez v1, :cond_0

    .line 856
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", addIdleTask: MicroApplicationContext is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return v2

    .line 860
    :cond_0
    const/16 v4, 0xa

    if-le p3, v4, :cond_1

    .line 861
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", addIdleTask: taskWeight > MAX_TASK_WEIGHT (10), now value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v5, v3, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/16 p3, 0xa

    .line 865
    :cond_1
    sget-wide v4, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:J

    const-string v6, "com.alipay.mobile.TASK_SCHEDULE_SERVICE_IDLE_TASK"

    invoke-interface {v1, v6, v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v1

    .line 866
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 867
    :cond_2
    if-eqz v2, :cond_3

    .line 868
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 870
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "addIdleTask"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    const-string v1, ", taskName: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v0, ", threadName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string p2, ", taskWeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    if-nez v2, :cond_4

    .line 875
    const-string p2, ", there is no such pipeline whose type is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return v2

    .line 848
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The thread name is empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The task is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    .line 969
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 970
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 971
    goto :goto_0

    .line 972
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 974
    const-string v2, "SCHEDULE"

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->t:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    if-eqz v1, :cond_2

    .line 977
    const-string v1, "ORDERED"

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 979
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_3
    return-object v0

    .line 972
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOrderedExecutorCore()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireOrderedExecutor()Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 174
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/Object;)V

    .line 180
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    monitor-enter p1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 183
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a(Ljava/lang/Object;)V

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    monitor-exit p1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onPipelineFinished(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 883
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TaskScheduleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pipeline (event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") has finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->p:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 886
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 887
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->p:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 890
    const-string v0, "com.alipay.mobile.PORTAL_IDLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->c()Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 894
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "TaskScheduleService"

    const-string/jumbo v1, "prepareIdleCheckTask as target pipelines have finished!"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->acquireScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl$3;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;)V

    const-wide/16 v1, 0xb4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 915
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "TaskScheduleService"

    const-string/jumbo v1, "schedule timeout for IdleCheckTask"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 920
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 882
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public parallelExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public pause(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
    .locals 0

    .line 1081
    return-void
.end method

.method public pauseAll()V
    .locals 0

    .line 1024
    return-void
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->removeTransaction(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public restore(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
    .locals 0

    .line 1160
    return-void
.end method

.method public resume(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
    .locals 0

    .line 1106
    return-void
.end method

.method public resumeAll()V
    .locals 0

    .line 1056
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
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

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
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

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
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

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public serialExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public serialExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->o:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public yield(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)V
    .locals 0

    .line 1133
    return-void
.end method

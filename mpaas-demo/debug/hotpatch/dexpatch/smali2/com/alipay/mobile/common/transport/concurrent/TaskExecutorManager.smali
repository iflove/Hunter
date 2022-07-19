.class public Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;,
        Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskExecutorManager"

.field public static final TASK_TYPE_AMR:I = 0x3

.field public static final TASK_TYPE_AMR_URGENT:I = 0x8

.field public static final TASK_TYPE_BG_RPC:I = 0x1

.field public static final TASK_TYPE_FG_MULTIMEDIA:I = 0x5

.field public static final TASK_TYPE_FG_RPC:I = 0x0

.field public static final TASK_TYPE_H5:I = 0x6

.field public static final TASK_TYPE_IMG:I = 0x2

.field public static final TASK_TYPE_LOG:I = 0x7

.field public static final TASK_TYPE_URGENT:I = 0x4

.field private static a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private k:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

.field private l:Landroid/content/Context;

.field private m:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 58
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 63
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 65
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 67
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 69
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 74
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 58
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 63
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 65
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 67
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 69
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 74
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private a(I)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 3
    .param p1, "taskType"    # I

    .line 208
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 250
    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getAmrExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 251
    .local v0, "amrExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_AMR"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 253
    return-object v0

    .line 245
    .end local v0    # "amrExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getAmrUrgentExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 246
    .local v0, "amrUrgentExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_AMR_URGENT"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 248
    return-object v0

    .line 240
    .end local v0    # "amrUrgentExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getLogExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 241
    .local v0, "logExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_LOG"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 243
    return-object v0

    .line 235
    .end local v0    # "logExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getH5Executor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 236
    .local v0, "h5Executor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_H5"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 238
    return-object v0

    .line 230
    .end local v0    # "h5Executor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getFgMultimediaExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 231
    .local v0, "fgMultimediaExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_FG_MULTIMEDIA"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 233
    return-object v0

    .line 225
    .end local v0    # "fgMultimediaExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_5
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getUrgentExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 226
    .local v0, "urgentExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_URGENT"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 228
    return-object v0

    .line 220
    .end local v0    # "urgentExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_6
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getImgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 221
    .local v0, "rsrcExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_IMG"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 223
    return-object v0

    .line 215
    .end local v0    # "rsrcExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 216
    .local v0, "bgEexecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_BG_RPC"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 218
    return-object v0

    .line 210
    .end local v0    # "bgEexecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :pswitch_8
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    .line 211
    .local v0, "fgExecutor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    move-object v0, v1

    const-string v2, "TASK_TYPE_FG_RPC"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 213
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 291
    return-object v0

    .line 294
    :cond_0
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 296
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getBgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 298
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    if-eqz v0, :cond_0

    .line 274
    return-object v0

    .line 276
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;-><init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 277
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)Ljava/lang/String;
    .locals 5
    .param p1, "executor"    # Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 477
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": TaskTypeName = %s, Active Task = %d, Completed Task = %d, All Task = %d, Queue Size = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 483
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 484
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 485
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 486
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    .line 485
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 478
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-object v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dumpPerf log exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskExecutorManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V
    .locals 3
    .param p1, "futureTask"    # Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
    .param p2, "executor"    # Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 127
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "perf":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "TaskExecutorManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 314
    return-object v0

    .line 317
    :cond_0
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 319
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getBgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 320
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v2, "log"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 322
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->m:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;-><init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->m:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->m:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 337
    return-object v0

    .line 340
    :cond_0
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 342
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 344
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 359
    return-object v0

    .line 362
    :cond_0
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 364
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getH5ThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 365
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string v2, "h5"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 367
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 382
    return-object v0

    .line 385
    :cond_0
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 387
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgMultimediaThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 389
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 405
    return-object v0

    .line 408
    :cond_0
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 410
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getImgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 412
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 427
    return-object v0

    .line 430
    :cond_0
    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 432
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 434
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    if-eqz v0, :cond_0

    .line 90
    return-object v0

    .line 93
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    .line 97
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    return-object v0

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private h(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 444
    return-object v0

    .line 447
    :cond_0
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 449
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrUrgentThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 451
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 460
    return-object v0

    .line 463
    :cond_0
    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 465
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getUrgentThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 467
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeAllSingleThreadPool()V
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 175
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 178
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 181
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 184
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 187
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 190
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 193
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 170
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeThreadPool exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskExecutorManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public execute(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 4
    .param p1, "futureTask"    # Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;

    .line 107
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->getTaskType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(I)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 109
    .local v0, "executor":Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    instance-of v1, p1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v1, :cond_0

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setCurrentThreadPoolExecutor(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V

    .line 113
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->addDoneObserver(Ljava/util/Observer;)V

    .line 118
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 123
    return-object p1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskExecutorManager"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAmrExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getAmrUrgentExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getFgMultimediaExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getH5Executor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getImgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getLogExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getUrgentExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

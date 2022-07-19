.class final Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FIFOPolicy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$1;

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 260
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    move-object v2, v1

    .line 262
    .local v2, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;

    if-eqz v0, :cond_0

    .line 263
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;

    .line 264
    .local v1, "task":Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
    move-object v1, v0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Time out."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->fail(Ljava/lang/Throwable;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "FIFOPolicy give up, taskId: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TaskExecutorManager"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v1    # "task":Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 269
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

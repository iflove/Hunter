.class public Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;
.super Ljava/lang/Object;
.source "OrderedExecutor.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper$BizSpecificIgnore;
.implements Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable$AnalysedIgnore;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/util/concurrent/Executor;

.field private volatile d:Z

.field private e:J

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)V
    .locals 1

    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    .line 127
    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$000(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    .line 128
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .locals 2

    .line 131
    if-nez p1, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    nop

    .line 143
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->c:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$100(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 144
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->getInstance()Lcom/alipay/mobile/framework/pipeline/TaskControlManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->c:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$100(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    .line 148
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 150
    :cond_1
    if-eqz v0, :cond_3

    .line 151
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$000(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    .line 154
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :cond_2
    if-eqz v0, :cond_3

    .line 159
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$000(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    .line 162
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    :cond_3
    :goto_0
    return-void

    .line 141
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public run()V
    .locals 7

    .line 171
    const-string/jumbo v0, "task run finally: "

    const-string v1, "OrderedExecutor"

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    :try_start_0
    iget-boolean v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    return-void

    .line 176
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    nop

    .line 181
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->this$0:Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
    invoke-static {v3}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$200(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    move-result-object v3

    .line 182
    if-nez v3, :cond_1

    .line 183
    # getter for: Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
    invoke-static {}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->access$300()Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    move-result-object v3

    .line 185
    :cond_1
    if-eqz v3, :cond_2

    .line 186
    iget-wide v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    invoke-interface {v3, v2, v4, v5}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;->handleBeforeRun(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v2

    .line 188
    :cond_2
    if-nez v2, :cond_3

    .line 189
    return-void

    .line 192
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 200
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 202
    nop

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    goto :goto_1

    .line 210
    :catchall_0
    move-exception v2

    .line 211
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 216
    :goto_1
    nop

    .line 217
    return-void

    .line 213
    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 196
    :catchall_2
    move-exception v2

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_5
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 200
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 202
    nop

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->e:J

    .line 206
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 213
    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    goto :goto_3

    .line 210
    :catchall_3
    move-exception v4

    .line 211
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    .line 214
    :goto_3
    throw v2

    .line 213
    :catchall_4
    move-exception v0

    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->d:Z

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 179
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.class public Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
.super Ljava/lang/Object;
.source "MACWorkerMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public processingAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->a:J

    .line 38
    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->c:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->b:J

    return-wide v0
.end method


# virtual methods
.method public getStackTraceString(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 7
    .param p1, "threadReference"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    move-object v2, v0

    .line 162
    .local v2, "thread":Ljava/lang/Thread;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object v3, v0

    .line 164
    .local v3, "ste":[Ljava/lang/StackTraceElement;
    move-object v3, v1

    if-eqz v1, :cond_2

    array-length v1, v3

    if-lez v1, :cond_2

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 167
    .local v0, "steItem":Ljava/lang/StackTraceElement;
    move-object v0, v6

    if-eqz v6, :cond_0

    .line 168
    const-string v6, "\tat "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .end local v0    # "steItem":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v3    # "ste":[Ljava/lang/StackTraceElement;
    :cond_2
    return-object v0
.end method

.method public handleFrameWorkerPending(JILjava/lang/String;)V
    .locals 6
    .param p1, "waitTime"    # J
    .param p3, "waitCount"    # I
    .param p4, "stack"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 132
    .local v2, "params":Ljava/util/Map;
    move-object v2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "waitTime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "waitCount"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v0, "stackFrame"

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    const-string/jumbo v3, "processingAppId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->getThreadsStackTrace()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 142
    .local v3, "threadsTrace":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const-string/jumbo v0, "threadsTrace"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleFrameWorkerPending waitTime:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " waitCount:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stack:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MACWorkerMonitor"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "BIZ_FRAME"

    const-string v4, "FRAME_MAC_WORKER_STUCK"

    const-string v5, "1000"

    invoke-static {v0, v4, v5, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->logAllThreadsTraces()V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    .line 156
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    const-string v4, "2009"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleMicroAppStartupFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 7
    .param p1, "x"    # Ljava/lang/String;

    .line 53
    if-nez p1, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    const-string v0, ">>>>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor$MacWorkerMonitorRunnable;-><init>(Lcom/alipay/mobile/core/impl/MACWorkerMonitor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    sget-wide v4, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 60
    :cond_1
    const-string v0, "<<<<<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->d:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 63
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 64
    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 67
    :cond_2
    return-void
.end method

.method public setWorkerThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->c:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

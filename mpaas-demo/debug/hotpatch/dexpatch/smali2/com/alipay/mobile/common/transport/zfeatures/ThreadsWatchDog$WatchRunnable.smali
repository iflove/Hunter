.class Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;
.super Ljava/lang/Object;
.source "ThreadsWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchRunnable"
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:J

.field private c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;Ljava/lang/Thread;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;
    .param p2, "observedThread"    # Ljava/lang/Thread;
    .param p3, "afterMs"    # J

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->this$0:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->c:Ljava/util/concurrent/Future;

    .line 74
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    .line 75
    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->b:J

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;Ljava/util/concurrent/Future;Ljava/lang/Thread;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;
    .param p2, "future"    # Ljava/util/concurrent/Future;
    .param p3, "observedThread"    # Ljava/lang/Thread;
    .param p4, "afterMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Thread;",
            "J)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->this$0:Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->c:Ljava/util/concurrent/Future;

    .line 79
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    .line 80
    iput-wide p4, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->b:J

    .line 81
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->c:Ljava/util/concurrent/Future;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/Thread$State;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/Thread$State;

    const-string v0, "ThreadsWatchDog"

    .line 110
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v2, 0x0

    .line 111
    .local v2, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v1

    const-string v3, "ThreadWatch"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    .line 113
    const-string v1, "RPC"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 114
    const-string v1, "FATAL"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "id"

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "state"

    invoke-virtual {p1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "time"

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[perfLog] Time is too long. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[perfLog] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    .local v1, "state":Ljava/lang/Thread$State;
    move-object v1, v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_3

    .line 99
    return-void

    .line 101
    :cond_3
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a(Ljava/lang/Thread$State;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog$WatchRunnable;->a:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->logThreadStackTrace(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v1    # "state":Ljava/lang/Thread$State;
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[run] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreadsWatchDog"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

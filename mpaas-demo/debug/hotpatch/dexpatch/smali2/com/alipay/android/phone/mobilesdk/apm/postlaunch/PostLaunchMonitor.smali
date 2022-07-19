.class public Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;
.super Ljava/lang/Object;
.source "PostLaunchMonitor.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;


# static fields
.field private static volatile a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;


# instance fields
.field private final b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

.field private final c:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

.field private final d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

.field private final e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->g:Z

    .line 38
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 39
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->c:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 40
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 41
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 42
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    .line 45
    invoke-virtual {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    .line 46
    invoke-virtual {v2, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    .line 47
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;

    .line 34
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startWatch()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->start()V

    .line 57
    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 11

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 74
    .local v0, "i":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listener onStopped:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PostLaunchMonitor"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "all watcher are stopped"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e()Ljava/util/Map;

    move-result-object v1

    .line 80
    .local v1, "threadInfo":Ljava/util/Map;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e()Ljava/util/Map;

    move-result-object v2

    .line 81
    .local v2, "trafficInfo":Ljava/util/Map;
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->c:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e()Ljava/util/Map;

    move-result-object v4

    .line 82
    .local v4, "sensitiveInfo":Ljava/util/Map;
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e()Ljava/util/Map;

    move-result-object v5

    .line 84
    .local v5, "renderInfo":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "threadInfo:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", trafficInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sensitiveInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " renderInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    move-object v8, v7

    .line 87
    .local v8, "info":Ljava/util/Map;
    move-object v8, v6

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    invoke-interface {v8, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    invoke-interface {v8, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 92
    new-instance v6, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;-><init>()V

    .line 93
    .local v7, "builder":Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;
    move-object v7, v6

    const-string/jumbo v9, "post_launch"

    invoke-virtual {v6, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setSubType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 94
    const/4 v6, 0x2

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setLoggerLevel(I)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 96
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 97
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 98
    nop

    .end local v9    # "key":Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->build()Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object v6

    .line 100
    .local v6, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "threadInfo":Ljava/util/Map;
    .end local v2    # "trafficInfo":Ljava/util/Map;
    .end local v4    # "sensitiveInfo":Ljava/util/Map;
    .end local v5    # "renderInfo":Ljava/util/Map;
    .end local v6    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .end local v7    # "builder":Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;
    .end local v8    # "info":Ljava/util/Map;
    return-void

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "post launch monitor logger failed."

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->g:Z

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PostLaunchMonitor"

    const-string/jumbo v2, "post launch monitor start watching.."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->c:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/PostLaunchMonitor;->g:Z

    .line 69
    return-void
.end method

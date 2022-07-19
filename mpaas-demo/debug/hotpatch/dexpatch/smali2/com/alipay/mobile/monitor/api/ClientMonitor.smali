.class public Lcom/alipay/mobile/monitor/api/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/monitor/api/ClientMonitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    const-class v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.alipay.android.phone.mobilesdk.monitor.MonitorFactoryBinder"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 26
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "bind"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v1

    .line 27
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 28
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v7

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    nop

    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MonitorFactory"

    const-string v3, "create"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/ClientMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    .line 43
    :cond_0
    sget-object v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    if-eqz v0, :cond_0

    .line 51
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public autoWakeupReceiver()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/MonitorContext;->autoWakeupReceiver()V

    .line 114
    return-void
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/api/MonitorContext;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/MonitorContext;->loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public noteTraficConsume(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqSize"    # J
    .param p4, "respSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJLcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "reqSize"    # J
    .param p5, "respSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJLcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJLcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "reqSize"    # J
    .param p5, "respSize"    # J
    .param p7, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p8, "diagnose"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    move-object v0, p7

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p8

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    .local v1, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v1, v0

    iput-object p1, v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorContext;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MonitorFactory"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public updateTraficDegradeCfg(Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/api/MonitorContext;->updateTraficDegradeCfg(Ljava/lang/String;)V

    .line 104
    return-void
.end method

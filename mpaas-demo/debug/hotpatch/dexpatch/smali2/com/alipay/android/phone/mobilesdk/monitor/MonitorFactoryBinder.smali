.class public Lcom/alipay/android/phone/mobilesdk/monitor/MonitorFactoryBinder;
.super Ljava/lang/Object;
.source "MonitorFactoryBinder.java"


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorFactoryBinder;->a:Z

    const-string v1, "MonitorFactory"

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "MonitorFactory.bind repeated"

    .line 46
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void

    .line 49
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorFactoryBinder;->a:Z

    .line 52
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    .line 55
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 56
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->createInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    .line 57
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/TimeTicksHandler;

    .line 58
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 59
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    .line 60
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    .line 61
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    .line 62
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    .line 63
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    .line 64
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    .line 65
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    .line 69
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "monitorContext":Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TimestampInfoImpl;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "timestampInfo":Lcom/alipay/mobile/monitor/api/TimestampInfo;
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;-><init>(Landroid/content/Context;)V

    .line 72
    .local v4, "mpaasTrafficMonitor":Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->bind(Lcom/alipay/mobile/monitor/api/MonitorContext;Lcom/alipay/mobile/monitor/api/TimestampInfo;Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;)V

    .line 73
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;

    invoke-direct {v5, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {v5}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->bind(Lcom/alipay/tianyan/mobilesdk/TianyanContext;)V

    .line 75
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;

    invoke-direct {v5, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;-><init>(Landroid/content/Context;)V

    .line 76
    .local v5, "smoothnessMonitor":Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;
    invoke-static {}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->getInstance()Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->setProxy(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;)V

    .line 79
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->a()V

    .line 80
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onProcessLaunch()V

    .line 81
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->b()V

    .line 84
    :try_start_0
    const-string v6, "com.alipay.mobile.tianyanadapter.monitor.MonitorReflectedEntry"

    const-string/jumbo v7, "onSetupMonitor"

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v10

    invoke-static {v6, v7, v8, v9, v0}, Lcom/alipay/mobile/monitor/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

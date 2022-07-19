.class public Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;
.super Ljava/lang/Object;
.source "MonitorContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/MonitorContext;


# static fields
.field private static final a:J


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x2"    # Landroid/content/Intent;

    .line 46
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 6

    .line 86
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;)V

    .line 93
    .local v0, "commonReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 94
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MonitorContext"

    const-string/jumbo v5, "register common receiver"

    invoke-interface {v3, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 141
    if-nez p0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCommonReceive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorContext"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a()Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "device_shutdown_by_push"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;Z)V

    .line 153
    :cond_1
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->acceptTimeTicksMadly()V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "applog"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    return-void

    .line 158
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a()Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    move-result-object v1

    const-string/jumbo v2, "power_connected_by_push"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_3
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a()Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    move-result-object v1

    const-string/jumbo v2, "power_disconnected_by_push"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no such action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private c()V
    .locals 2

    .line 106
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "classToBundleHandler":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;)V

    invoke-static {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->putCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z

    .line 120
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;)V

    invoke-static {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->putMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b()V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->c()V

    .line 67
    return-void
.end method

.method public autoStartWhitelistStatus()I
    .locals 2

    .line 273
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    move-result-object v0

    const-string v1, "autoStartWhitelistStatus"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized autoWakeupReceiver()V
    .locals 9

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MonitorContext"

    const-string v2, "autoWakeupReceiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".action.monitor.wakeup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "autoWakeup"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "MonitorContext"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 189
    .local v2, "checkSender":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->a:J

    add-long/2addr v5, v7

    .line 192
    .local v5, "wakeupTime":J
    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "checkSender":Landroid/app/PendingIntent;
    .end local v5    # "wakeupTime":J
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MonitorContext"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 173
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public collectAliveStatus()[Ljava/lang/String;
    .locals 5

    .line 316
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    move-result-object v0

    const-string v1, "autoStartWhitelistStatus"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Ljava/lang/String;)[I

    move-result-object v0

    .line 317
    .local v0, "autoStart":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v4, v3, :cond_0

    const-string v4, "A"

    goto :goto_0

    :cond_0
    const-string v4, "R"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "autoStartStatus":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v2

    .line 319
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->keepAliveWhitelistStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    .line 320
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->recentLockedWhitelistStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 318
    return-object v4
.end method

.method public flushMonitorData()V
    .locals 2

    .line 330
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(I)V

    .line 331
    return-void
.end method

.method public getDevicePerformanceToolset()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
    .locals 1

    .line 347
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentCallback()Lcom/alipay/mobile/monitor/api/MonitorInstrumentCallback;
    .locals 1

    .line 351
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    move-result-object v0

    return-object v0
.end method

.method public handleSmoothnessEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 307
    return-void
.end method

.method public isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p2, "diagnose"    # Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->c()Z

    move-result v0

    return v0
.end method

.method public isSmoothnessSampleWork()Z
    .locals 1

    .line 301
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a()Z

    move-result v0

    return v0
.end method

.method public isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p2, "url"    # Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public keepAliveWhitelistStatus()I
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public kickOnNetworkBindService(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "isBindFailed"    # Z
    .param p3, "failedReason"    # Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kickOnNetworkBindService"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 238
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, ", serviceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, ", isBindFailed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    const-string v0, ", failedReason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonitorContext"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-nez p2, :cond_0

    .line 244
    return-void

    .line 248
    :cond_0
    return-void
.end method

.method public kickOnNetworkDiagnose(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isNetworkBroken"    # Z
    .param p2, "brokenReason"    # Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kickOnNetworkDiagnose"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 254
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, ", isNetworkBroken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, ", brokenReason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonitorContext"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    return-void

    .line 259
    :cond_1
    :goto_0
    return-void
.end method

.method public kickOnSystemBroadcastReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "actionName"    # Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kickOnSystemBroadcastReceived, actionName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorContext"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 1

    .line 231
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->d()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 0
    .param p1, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 201
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V

    .line 202
    return-void
.end method

.method public noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 1
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 211
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 212
    return-void
.end method

.method public notificationWhitelistStatus()I
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/manufacturer/ManufacturerUtils;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 290
    .local v2, "state":I
    move v2, v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 291
    return v3

    .line 292
    :cond_0
    if-ne v2, v3, :cond_1

    .line 293
    const/4 v0, 0x2

    return v0

    .line 295
    :cond_1
    return v1
.end method

.method public notifyReceiveBootComplete()V
    .locals 0

    .line 325
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->c()V

    .line 326
    return-void
.end method

.method public onTinyAppPageUrlChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a(Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public recentLockedWhitelistStatus()I
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public setTinyAppPageFluencyEnable(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 335
    sput-boolean p1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b:Z

    .line 336
    return-void
.end method

.method public updateTraficDegradeCfg(Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public uploadLogByManualTrigger(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 311
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 312
    return-void
.end method

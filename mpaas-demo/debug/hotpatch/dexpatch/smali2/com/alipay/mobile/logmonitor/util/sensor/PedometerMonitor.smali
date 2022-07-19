.class public Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;
.super Ljava/lang/Object;
.source "PedometerMonitor.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;


# instance fields
.field private d:Landroid/content/Context;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a:J

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;
    .locals 2

    .line 52
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->c:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->c:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->c:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    .line 48
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->c:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c()V
    .locals 4

    .line 88
    const-string v0, "PedoMeter"

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v1

    const-string/jumbo v2, "revertStepProvider"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->e(Ljava/lang/String;)Z

    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->d(Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    const-string v3, "com.alipay.android.phone.businesscommon.healthcommon.util.StepSPProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    .local v1, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "revertStepProvider: end"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v2

    .line 101
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v2    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private d()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcessExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 140
    return v0
.end method

.method private e()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    .line 148
    const-string v1, "NewPedoMeter"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "startup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 5

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "deviceSupport":Z
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    .local v1, "mSensorManager":Landroid/hardware/SensorManager;
    const/4 v2, 0x0

    .line 158
    .local v2, "mSensor":Landroid/hardware/Sensor;
    const/16 v3, 0x13

    if-eqz v1, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 164
    .end local v1    # "mSensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "mSensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 161
    .restart local v2    # "mSensor":Landroid/hardware/Sensor;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v3, :cond_1

    .line 162
    const/4 v0, 0x1

    .line 166
    .end local v2    # "mSensor":Landroid/hardware/Sensor;
    :cond_1
    goto :goto_2

    .line 164
    :catchall_1
    move-exception v1

    const/4 v1, 0x0

    .line 165
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    .line 167
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 107
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->e:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-wide v4, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->e:J

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "isCMD"    # Z

    const-string v0, "PedoMeter"

    .line 116
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryToStartExtProcess by source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 120
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v1

    const-string/jumbo v4, "source"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const-string v1, "cmd"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    const-string v1, "com.alipay.mobile.healthcommon.stepcounter.APExtStepService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 127
    .local v1, "clazz":Ljava/lang/Class;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->d:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "push start APExtStepService by source "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryToStartExtProcess, error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public final b()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isStartupByAnyActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PedoMeter"

    const-string v2, "isStartupByAnyActivity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "process_launch_by_main"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;Z)V

    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor$1;-><init>(Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;)V

    sget-wide v2, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 82
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->c()V

    .line 85
    :cond_3
    return-void
.end method

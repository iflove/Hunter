.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;
.super Ljava/lang/Object;
.source "ProcessAliveHandler.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessLaunchMonitor;

.field private d:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;

.field private e:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f:I

    .line 67
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->e()V

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 39
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f:I

    return p1
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;
    .locals 2

    .line 60
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    if-eqz v0, :cond_0

    .line 63
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 56
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static c()V
    .locals 5

    .line 160
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v0

    const-string v1, "autostart_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;I)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getDeviceCurrentRebootExactTime()J

    move-result-wide v0

    .line 162
    .local v0, "currentReboot":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v2

    const-string v3, "autostart_reboot_time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;J)V

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBootCompleted, rebootTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessAlive"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static d()V
    .locals 12

    .line 291
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    return-void

    .line 297
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string v1, "gotoForegroundTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v6, v2

    .line 298
    .local v6, "fgTimestamp":J
    move-wide v6, v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 299
    return-void

    .line 302
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v4, "onForegroundTimespan"

    invoke-virtual {v0, v4, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v2

    .line 303
    .local v2, "totalTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 304
    .local v8, "currentTime":J
    sub-long v10, v8, v6

    add-long/2addr v2, v10

    .line 305
    move-wide v5, v8

    .line 307
    .end local v6    # "fgTimestamp":J
    .local v5, "fgTimestamp":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v7, 0x0

    .line 308
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v7, v0

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v7, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "threadName":Ljava/lang/String;
    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 315
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void
.end method

.method private e()V
    .locals 2

    .line 102
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    .line 103
    const-string v1, "ProcessDataReporter"

    invoke-static {v1, v0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;->putTimeTickTriggerDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;)Z

    .line 104
    return-void
.end method

.method private f()V
    .locals 4

    .line 134
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method private g()V
    .locals 17

    .line 185
    const-string v0, "checkAutoStartStatus"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a(Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    .line 189
    .local v0, "startReason":Ljava/util/Map;
    const/4 v2, 0x0

    .line 190
    .local v2, "isStartupForBoot":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 191
    const-string v5, "ActionName"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    const-string v5, "RecordType"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ReceiverData"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 197
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getDeviceCurrentRebootExactTime()J

    move-result-wide v5

    .line 199
    .local v5, "currentReboot":J
    const-string v7, "autostart_status"

    const-string v8, "autostart_reboot_time"

    const-string v9, "ProcessAlive"

    if-eqz v2, :cond_2

    .line 200
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;I)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v3

    invoke-virtual {v3, v8, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;J)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "checkAutoStartStatus, isStartupForBoot"

    invoke-interface {v3, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 207
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v10

    sget-wide v11, Lcom/alipay/mobile/monitor/api/TimestampInfo;->TIME_FUZZ_SCALE:J

    neg-long v11, v11

    invoke-virtual {v10, v8, v11, v12}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->b(Ljava/lang/String;J)J

    move-result-wide v10

    .line 208
    .local v10, "previousReboot":J
    sub-long v12, v5, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sget-wide v14, Lcom/alipay/mobile/monitor/api/TimestampInfo;->TIME_FUZZ_SCALE:J

    cmp-long v16, v12, v14

    if-gez v16, :cond_3

    const/4 v3, 0x1

    .line 210
    :cond_3
    if-eqz v3, :cond_4

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "checkAutoStartStatus, isSameReboot"

    invoke-interface {v3, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v3

    invoke-virtual {v3, v8, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;J)V

    .line 216
    const-wide/16 v3, 0x0

    cmp-long v8, v10, v3

    if-lez v8, :cond_5

    .line 218
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a(Ljava/lang/String;I)V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "checkAutoStartStatus, be sure no, previousReboot: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "checkAutoStartStatus\uff0cnot sure, previousReboot: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private h()V
    .locals 4

    .line 232
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method

.method private static i()Z
    .locals 8

    .line 334
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 340
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string v3, "gotoForegroundTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v6

    .line 342
    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    .line 344
    return v2

    .line 348
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)V

    .line 352
    return v2

    .line 356
    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2
    .param p1, "trigger"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final b()V
    .locals 4

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f()V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->c:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessLaunchMonitor;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessLaunchMonitor;->a()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->d:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a()V

    .line 120
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->h()V

    .line 125
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_3
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ProcessAlive"

    const-string/jumbo v3, "onProcessLaunch"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b(Ljava/lang/String;)[I
    .locals 6
    .param p1, "trigger"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    .line 173
    .local v0, "resultWeight":I
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;->a()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 174
    .local v3, "autoStartStatus":I
    move v3, v1

    if-nez v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 176
    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->f:I

    .line 178
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", getAutoStartStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", weight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessAlive"

    invoke-interface {v1, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1
.end method

.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
.super Ljava/lang/Object;
.source "ClientAutoEventHandler.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;


# instance fields
.field private b:Z

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Landroid/content/Context;

.field private n:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b:Z

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c:J

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d:J

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e:J

    .line 55
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f:J

    .line 56
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->g:Z

    .line 58
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h:Z

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->i:J

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->j:J

    .line 61
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->k:J

    .line 62
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->l:J

    .line 83
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->m:Landroid/content/Context;

    .line 85
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setMonitorBackground(Z)V

    .line 86
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setFrameworkBackground(Z)V

    .line 87
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setStrictBackground(Z)V

    .line 88
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setRelaxedBackground(Z)V

    .line 89
    return-void
.end method

.method private a()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientCurrentStartupTime()J

    .line 101
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientPreviousStartupTime()J

    .line 103
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f()V

    .line 104
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;J)V
    .locals 6

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 304
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getBrandName()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getDisplayID()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getFingerPrint()Ljava/lang/String;

    move-result-object v4

    .line 310
    const-string/jumbo v5, "romVersion"

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "manufacturer"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, "phoneBrand"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "displayId"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "phoneFinger"

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getDeviceCurrentRebootExactTime()J

    move-result-wide v0

    .line 317
    invoke-static {v0, v1}, Lcom/alipay/mobile/monitor/util/FormatUtils;->formatLimitedSimpleDatePerf(J)Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string/jumbo v1, "reboot"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pid"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sb_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    goto :goto_1

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ClientAutoEventHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_2

    .line 343
    const-string v1, "ComponentName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sr_component"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "ActionName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sr_action"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "RecordType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sr_record"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "TARGETAPPID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sr_appId"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "toString"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "sr_toString"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v0

    .line 352
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessPreviousLaunchTime()J

    move-result-wide v2

    .line 353
    invoke-static {v2, v3}, Lcom/alipay/mobile/monitor/util/FormatUtils;->formatLimitedSimpleDatePerf(J)Ljava/lang/String;

    move-result-object v4

    .line 354
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v1, "launch_previous"

    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "launch_delta"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 360
    invoke-static {p1, p2}, Lcom/alipay/mobile/monitor/util/FormatUtils;->formatLimitedSimpleDatePerf(J)Ljava/lang/String;

    move-result-object p1

    .line 361
    const-string/jumbo p2, "reportTimeS"

    invoke-virtual {p0, p2, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11
    .param p1, "trigger"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setMonitorBackground(Z)V

    .line 192
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setStrictBackground(Z)V

    .line 193
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setRelaxedBackground(Z)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 196
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "auto_event @ resume"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "processAlias":Ljava/lang/String;
    const-string v2, ", process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 201
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    return-void

    .line 204
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    .local v8, "reportTime":J
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClientAutoEventHandler"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    .line 219
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    .line 222
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "reportTime":J
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    .locals 3
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/StringBuilder;
    .param p3, "reportTime"    # J

    .line 225
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->b()V

    .line 226
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c(Ljava/lang/String;Ljava/lang/StringBuilder;J)J

    move-result-wide v0

    .line 230
    .local v0, "deltaUptime":J
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->m:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/alipay/tianyan/mobilesdk/ClientAutoEventDispatcher;->onMonitorForeground(Landroid/content/Context;Ljava/lang/String;J)V

    .line 231
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;J)V
    .locals 1
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "reportTime"    # J

    .line 398
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b(Ljava/lang/StringBuilder;J)V

    .line 400
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b()V

    .line 401
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->b()V

    .line 402
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a()Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->b()V

    .line 403
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b()V

    .line 404
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/StringBuilder;
    .param p3, "x3"    # J

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 33
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/StringBuilder;
    .param p3, "x3"    # J

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b(Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # J

    .line 33
    invoke-static {p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # J

    .line 33
    invoke-static {p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c(Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setFrameworkBackground(Z)V

    .line 278
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->g()J

    .line 279
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11
    .param p1, "trigger"    # Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 235
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "auto_event @ leavehint"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "processAlias":Ljava/lang/String;
    const-string v2, ", process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 240
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b(Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    return-void

    .line 243
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 244
    .local v8, "reportTime":J
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClientAutoEventHandler"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$2;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    .line 258
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    .line 261
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "reportTime":J
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    .locals 3
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/StringBuilder;
    .param p3, "reportTime"    # J

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d(Ljava/lang/String;Ljava/lang/StringBuilder;J)J

    move-result-wide v0

    .line 265
    .local v0, "deltaUptime":J
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->m:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/alipay/tianyan/mobilesdk/ClientAutoEventDispatcher;->onMonitorBackground(Landroid/content/Context;Ljava/lang/String;J)V

    .line 267
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMpaasTrafficMonitor()Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;->report(J)V

    .line 269
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->c()V

    .line 270
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setMonitorBackground(Z)V

    .line 274
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;J)V
    .locals 9
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "reportTime"    # J

    .line 407
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 408
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "processAlias":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 410
    const-string v2, "launch"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->isProcessLaunchFirstly()Z

    move-result v2

    .line 413
    .local v2, "isLaunchFirstly":Z
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "launch_firstly"

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->d()J

    move-result-wide v3

    .line 417
    .local v3, "lastAliveStartTime":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e()J

    move-result-wide v5

    .line 418
    .local v5, "lastAliveTime":J
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pushProcessLastAlive"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pushProcessLastAliveStart"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v3    # "lastAliveStartTime":J
    .end local v5    # "lastAliveTime":J
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;J)V

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    const-string v3, "extLaunch"

    .line 436
    .local v3, "seedID":Ljava/lang/String;
    const-string v4, ", bizType: pedometer"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v4, "pedometer"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 440
    .end local v3    # "seedID":Ljava/lang/String;
    goto :goto_1

    .line 441
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "alias":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Launch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v4, "mpaasLaunch"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    .end local v3    # "alias":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v3, "auto_event"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 430
    const-string v3, "Push"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 431
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 446
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 448
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 449
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reportProcessLaunch:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClientAutoEventHandler"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-nez v3, :cond_4

    .line 452
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d()V

    .line 454
    :cond_4
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/StringBuilder;J)J
    .locals 16
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/StringBuilder;
    .param p3, "reportTime"    # J

    .line 516
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    .line 517
    .local v1, "deltaUptime":J
    const-wide/16 v3, -0x1

    .line 518
    .local v3, "deltaElasped":J
    const-string v5, ""

    .line 519
    .local v5, "deltaUptimeS":Ljava/lang/String;
    const-string v6, ""

    .line 521
    .local v6, "deltaElaspedS":Ljava/lang/String;
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c:J

    const-string v9, "ClientAutoEventHandler"

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-lez v12, :cond_0

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e:J

    .line 523
    iget-wide v12, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c:J

    sub-long/2addr v7, v12

    .line 524
    move-wide v1, v7

    invoke-static {v7, v8}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v5

    .line 525
    iput-wide v10, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c:J

    goto :goto_0

    .line 527
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "reportMonitorForeground: uptime error"

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d:J

    cmp-long v12, v7, v10

    if-lez v12, :cond_1

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f:J

    .line 532
    iget-wide v12, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d:J

    sub-long/2addr v7, v12

    .line 533
    move-wide v3, v7

    invoke-static {v7, v8}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v6

    .line 534
    iput-wide v10, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d:J

    goto :goto_1

    .line 536
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "reportMonitorForeground: elasped error"

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_1
    new-instance v7, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 540
    .local v7, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "processAlias":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 542
    const-string/jumbo v10, "resume"

    invoke-virtual {v7, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 544
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "stayTime"

    invoke-virtual {v7, v11, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "elapsed"

    invoke-virtual {v7, v11, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v10, "stayTimeS"

    invoke-virtual {v7, v10, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v10, "elapsedS"

    invoke-virtual {v7, v10, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v10, "trigger"

    move-object/from16 v11, p1

    invoke-virtual {v7, v10, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-boolean v10, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->g:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "resume_firstly"

    invoke-virtual {v7, v12, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-wide/from16 v12, p3

    invoke-static {v7, v12, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;J)V

    .line 554
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 556
    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v10

    const/4 v14, 0x0

    move-object/from16 v15, p2

    invoke-static {v15, v10, v14}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 557
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reportMonitorForeground:"

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-wide v1
.end method

.method private c()V
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h()J

    .line 283
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setFrameworkBackground(Z)V

    .line 284
    return-void
.end method

.method private static c(Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "reportTime"    # J

    .line 487
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d(Ljava/lang/StringBuilder;J)V

    .line 488
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    .line 72
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 68
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/StringBuilder;J)J
    .locals 16
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/StringBuilder;
    .param p3, "reportTime"    # J

    .line 563
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    .line 564
    .local v1, "deltaUptime":J
    const-wide/16 v3, -0x1

    .line 565
    .local v3, "deltaElasped":J
    const-string v5, ""

    .line 566
    .local v5, "deltaUptimeS":Ljava/lang/String;
    const-string v6, ""

    .line 568
    .local v6, "deltaElaspedS":Ljava/lang/String;
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e:J

    const-string v9, "ClientAutoEventHandler"

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-lez v12, :cond_0

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c:J

    .line 570
    iget-wide v12, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e:J

    sub-long/2addr v7, v12

    .line 571
    move-wide v1, v7

    invoke-static {v7, v8}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v5

    .line 572
    iput-wide v10, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e:J

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "reportMonitorBackground: uptime error"

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_0
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f:J

    cmp-long v12, v7, v10

    if-lez v12, :cond_1

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d:J

    .line 579
    iget-wide v12, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f:J

    sub-long/2addr v7, v12

    .line 580
    move-wide v3, v7

    invoke-static {v7, v8}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v6

    .line 581
    iput-wide v10, v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->f:J

    goto :goto_1

    .line 583
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "reportMonitorBackground: elasped error"

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_1
    new-instance v7, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 587
    .local v7, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "processAlias":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 589
    const-string v10, "leavehint"

    invoke-virtual {v7, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 591
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "stayTime"

    invoke-virtual {v7, v11, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "elapsed"

    invoke-virtual {v7, v11, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v10, "stayTimeS"

    invoke-virtual {v7, v10, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v10, "elapsedS"

    invoke-virtual {v7, v10, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v10, "trigger"

    move-object/from16 v11, p1

    invoke-virtual {v7, v10, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getStartupPerfData()Ljava/util/Map;

    move-result-object v10

    const/4 v12, 0x0

    move-object v13, v12

    .line 608
    .local v13, "perfData":Ljava/util/Map;
    move-object v13, v10

    if-eqz v10, :cond_2

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v10

    if-eqz v10, :cond_2

    .line 610
    const-string v10, "MonitorLinkType"

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "pf_mlType"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string/jumbo v10, "timePreLaunch"

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "pf_preLaunch"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v10, "launchTime"

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "pf_launchTime"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string/jumbo v10, "shouldReportTimeStartup"

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "pf_shouldReport"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->buildLinkedExtParams(Z)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "linkedExtParams":Ljava/lang/String;
    const-string v14, "LINKED_EXT_PARAMS"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v10    # "linkedExtParams":Ljava/lang/String;
    :cond_2
    sget-boolean v10, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->isResumeByStartup:Z

    const-string/jumbo v14, "resumeBy"

    if-eqz v10, :cond_7

    .line 618
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    .line 621
    :cond_3
    const-string v10, "coldStart"

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 622
    .local v10, "coldStart":Ljava/lang/Object;
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 623
    const-string v15, "2"

    invoke-virtual {v7, v14, v15}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 624
    :cond_4
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 625
    const-string v15, "3"

    invoke-virtual {v7, v14, v15}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 627
    :cond_5
    const-string v15, "4"

    invoke-virtual {v7, v14, v15}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_2
    const/4 v14, 0x0

    sput-boolean v14, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->isResumeByStartup:Z

    .line 630
    .end local v10    # "coldStart":Ljava/lang/Object;
    goto :goto_4

    .line 619
    :cond_6
    :goto_3
    const-string v10, "1"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 632
    :cond_7
    const-string v10, "5"

    invoke-virtual {v7, v14, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :goto_4
    move-wide/from16 v14, p3

    invoke-static {v7, v14, v15}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;J)V

    .line 637
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 639
    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10, v12}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 640
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reportMonitorBackground:"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 643
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->d()V

    .line 646
    :cond_8
    return-wide v1
.end method

.method private static d()V
    .locals 3

    .line 287
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "auto_event @ info"

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 291
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 292
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 287
    const-string v1, ", "

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->concatArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ClientAutoEventHandler"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private static d(Ljava/lang/StringBuilder;J)V
    .locals 17
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "reportTime"    # J

    .line 491
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 492
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "processAlias":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 494
    const-string/jumbo v2, "startup"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientCurrentStartupTime()J

    move-result-wide v2

    .line 497
    .local v2, "currentStartupTime":J
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientPreviousStartupTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 498
    .local v6, "previousStratupTime":J
    move-wide v6, v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/monitor/util/FormatUtils;->formatLimitedSimpleDatePerf(J)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "previousStratupTimeS":Ljava/lang/String;
    sub-long v8, v2, v6

    invoke-static {v8, v9}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "deltaStartupTimeS":Ljava/lang/String;
    const-string/jumbo v8, "startup_previous"

    invoke-virtual {v0, v8, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v8, "startup_delta"

    invoke-virtual {v0, v8, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v8

    .line 504
    .local v8, "currentLaunchTime":J
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->formatTimespanToHHmmssSSS(J)Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, "deltaLaunchTimeS":Ljava/lang/String;
    const-string v11, "fromLaunch"

    invoke-virtual {v0, v11, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-wide/from16 v11, p1

    invoke-static {v0, v11, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;J)V

    .line 509
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v13

    invoke-interface {v13, v0}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 511
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v15, p0

    invoke-static {v15, v13, v14}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->fillBufferWithParams(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;)V

    .line 512
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v16, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    const-string/jumbo v0, "reportClientStartup:"

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ClientAutoEventHandler"

    invoke-interface {v13, v14, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private e()V
    .locals 8

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 367
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "auto_event @ launch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "processAlias":Ljava/lang/String;
    const-string v2, ", process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v2

    const-string/jumbo v3, "monitor_perfDelayOpen"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->e(Ljava/lang/String;)Z

    move-result v2

    .line 372
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isStartupByAnyActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 375
    .local v2, "reportTime":J
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ClientAutoEventHandler"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$3;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/StringBuilder;J)V

    .line 389
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    .line 392
    .end local v2    # "reportTime":J
    .end local v4    # "runnable":Ljava/lang/Runnable;
    return-void

    .line 393
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/StringBuilder;J)V

    .line 395
    return-void
.end method

.method private f()V
    .locals 8

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 458
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "auto_event @ startup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "processAlias":Ljava/lang/String;
    const-string v2, ", process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 463
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c(Ljava/lang/StringBuilder;J)V

    return-void

    .line 466
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 467
    .local v2, "reportTime":J
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ClientAutoEventHandler"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$4;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$4;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/StringBuilder;J)V

    .line 481
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;

    .line 484
    .end local v2    # "reportTime":J
    .end local v4    # "runnable":Ljava/lang/Runnable;
    return-void
.end method

.method private g()J
    .locals 9

    .line 650
    const-wide/16 v0, -0x1

    .line 653
    .local v0, "deltaUptime":J
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->i:J

    const-string v4, "ClientAutoEventHandler"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    .line 654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->k:J

    .line 655
    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->i:J

    sub-long v0, v2, v7

    .line 656
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->i:J

    goto :goto_0

    .line 658
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "reportFrameworkForeground: uptime error"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_0
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->j:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->l:J

    .line 664
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->j:J

    goto :goto_1

    .line 666
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "reportFrameworkForeground: elasped error"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_1
    return-wide v0
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;
    .locals 2

    .line 76
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    if-eqz v0, :cond_0

    .line 79
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()J
    .locals 9

    .line 673
    const-wide/16 v0, -0x1

    .line 676
    .local v0, "deltaUptime":J
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->k:J

    const-string v4, "ClientAutoEventHandler"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->i:J

    .line 678
    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->k:J

    sub-long v0, v2, v7

    .line 679
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->k:J

    goto :goto_0

    .line 681
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "reportFrameworkBackground: uptime error"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->l:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->j:J

    .line 687
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->l:J

    goto :goto_1

    .line 689
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "reportFrameworkBackground: elasped error"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public onFrameworkBackground()V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h:Z

    .line 139
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->c()V

    .line 141
    :cond_0
    return-void
.end method

.method public onFrameworkForeground()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->h:Z

    .line 131
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b()V

    .line 133
    :cond_0
    return-void
.end method

.method public onMonitorBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;

    .line 120
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b:Z

    .line 123
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onMonitorForeground(Ljava/lang/String;)V
    .locals 2
    .param p1, "trigger"    # Ljava/lang/String;

    .line 107
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b:Z

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->b:Z

    .line 110
    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->g:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a()V

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/String;)V

    .line 115
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->g:Z

    .line 117
    :cond_1
    return-void
.end method

.method public onProcessLaunch()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    .line 93
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchElapsedTime()J

    .line 94
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessPreviousLaunchTime()J

    .line 96
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->e()V

    .line 97
    return-void
.end method

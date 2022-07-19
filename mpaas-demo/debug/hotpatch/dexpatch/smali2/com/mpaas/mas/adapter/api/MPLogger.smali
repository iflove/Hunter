.class public Lcom/mpaas/mas/adapter/api/MPLogger;
.super Ljava/lang/Object;


# static fields
.field private static final HALF_HOUR:J = 0x1b7740L

.field private static final KEY_IS_FIRST_START:Ljava/lang/String; = "key_is_first_start"

.field private static final KEY_START_TIME:Ljava/lang/String; = "performance_startup"

.field private static final TAG:Ljava/lang/String; = "MPLogger"

.field private static hasMonitorLaunchTime:Z

.field private static isAAR:Z

.field private static lastReportClientLaunchTime:J

.field private static reportClientLaunchInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunchInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static disableAutoLog()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackPage(Z)V

    .line 104
    return-void
.end method

.method public static disableUpload()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v1, Lcom/mpaas/mas/adapter/api/MPLogger$2;

    invoke-direct {v1}, Lcom/mpaas/mas/adapter/api/MPLogger$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setLogCustomerControl(Lcom/alipay/mobile/common/logging/api/LogCustomerControl;)V

    .line 217
    return-void
.end method

.method public static enableAutoLog()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackPage(Z)V

    .line 100
    return-void
.end method

.method public static enableUpload()V
    .locals 2

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setLogCustomerControl(Lcom/alipay/mobile/common/logging/api/LogCustomerControl;)V

    .line 224
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 251
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    return-void
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1
    .param p0, "logId"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "logId"    # Ljava/lang/String;
    .param p1, "bizType"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "logId"    # Ljava/lang/String;
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "MPLogger"

    const-string v1, "logId can\'t be empty!"

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "logId"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mpaas/mas/adapter/api/MPLogger;->event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 1

    .line 291
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastReportClientLaunchTime()J
    .locals 2

    .line 308
    sget-wide v0, Lcom/mpaas/mas/adapter/api/MPLogger;->lastReportClientLaunchTime:J

    return-wide v0
.end method

.method public static getReportClientLaunchInterval()J
    .locals 2

    .line 304
    sget-wide v0, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunchInterval:J

    return-wide v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .line 333
    const-string v0, "MPLogger"

    if-nez p0, :cond_0

    .line 334
    const-string v1, "init, application can\'t be null!"

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 337
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mpaas/mas/adapter/api/MPLogger;->isAAR:Z

    .line 338
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPLogger;->recordLaunchStartTime(Landroid/content/Context;)V

    .line 339
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->init(Landroid/content/Context;)V

    .line 340
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorFactoryBinder;->bind(Landroid/content/Context;)V

    .line 341
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->beforeSetupApplication(Landroid/app/Application;)V

    .line 343
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v1

    new-instance v2, Lcom/mpaas/mas/adapter/api/MPLogger$3;

    invoke-direct {v2, p0}, Lcom/mpaas/mas/adapter/api/MPLogger$3;-><init>(Landroid/app/Application;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/monitor/track/AutoTracker;->launch(Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;)V

    .line 356
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/tianyanadapter/autotracker/AutoTrackerAdapterImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/tianyanadapter/autotracker/AutoTrackerAdapterImpl;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/monitor/track/AutoTracker;->setAutoTrackerAdapter(Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;)V

    .line 357
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->enableAutoLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    return-void

    .line 358
    :catchall_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init autotracker error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static isAAR()Z
    .locals 1

    .line 326
    sget-boolean v0, Lcom/mpaas/mas/adapter/api/MPLogger;->isAAR:Z

    return v0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 320
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isOfflineMode()Z
    .locals 1

    .line 316
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0

    return v0
.end method

.method public static monitorActivityLifecycle(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 368
    if-nez p0, :cond_0

    .line 369
    const-string v0, "MPLogger"

    const-string v1, "monitorActivityLifecycle, application can\'t be null!"

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 373
    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method private static recordLaunchStartTime(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 377
    .local v0, "launchStartTime":J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 378
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "performance_startup"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    return-void
.end method

.method public static reportClientLaunch()V
    .locals 7

    .line 47
    const-wide/16 v0, 0x0

    .local v0, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 48
    move-wide v0, v2

    invoke-static {v2, v3}, Lcom/mpaas/mas/adapter/api/MPLogger;->shouldReportClientLaunch(J)Z

    move-result v2

    const-string v3, "MPLogger"

    if-eqz v2, :cond_2

    .line 50
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    sget-wide v2, Lcom/mpaas/mas/adapter/api/MPLogger;->lastReportClientLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ClientEvent_ClientLaunch"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->clientLaunch()V

    .line 59
    :goto_0
    sput-wide v0, Lcom/mpaas/mas/adapter/api/MPLogger;->lastReportClientLaunchTime:J

    return-void

    .line 61
    :cond_1
    const-string v2, "deviceId is empty, reportClientLaunch skipped."

    invoke-static {v3, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "need not to reportClientLaunch, report interval is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunchInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static reportClientLaunch(Ljava/lang/String;)V
    .locals 0
    .param p0, "deviceId"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/mpaas/mas/adapter/api/MPLogger;->setDeviceId(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunch()V

    .line 76
    return-void
.end method

.method public static reportLaunchTime(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 139
    .local v0, "end":J
    sget-boolean v2, Lcom/mpaas/mas/adapter/api/MPLogger;->hasMonitorLaunchTime:Z

    if-eqz v2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mpaas/mas/adapter/api/MPLogger;->hasMonitorLaunchTime:Z

    .line 143
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mpaas/mas/adapter/api/MPLogger$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger$1;-><init>(Landroid/content/Context;J)V

    const-string v4, "mpaas_report_launch_time_thread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v0    # "end":J
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MPLogger"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static reportUserLogin(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setUserId(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "userLogin"

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static resetMonitorLaunchTime(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mpaas/mas/adapter/api/MPLogger;->hasMonitorLaunchTime:Z

    .line 183
    nop

    .line 184
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "performance_startup"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .locals 1
    .param p0, "channelId"    # Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setChannelId(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setDeviceId(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static setLastReportClientLaunchTime(J)V
    .locals 0
    .param p0, "time"    # J

    .line 312
    sput-wide p0, Lcom/mpaas/mas/adapter/api/MPLogger;->lastReportClientLaunchTime:J

    .line 313
    return-void
.end method

.method public static setLogEncryptEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setLogNeedEncrypt(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static setMPLogEncryptor(Lcom/mpaas/mas/adapter/api/MPLogEncryptor;)V
    .locals 2
    .param p0, "encryptor"    # Lcom/mpaas/mas/adapter/api/MPLogEncryptor;

    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v1, Lcom/mpaas/mas/adapter/api/MPLogger$4;

    invoke-direct {v1, p0}, Lcom/mpaas/mas/adapter/api/MPLogger$4;-><init>(Lcom/mpaas/mas/adapter/api/MPLogEncryptor;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)V

    .line 407
    return-void
.end method

.method public static setReportClientLaunchInterval(J)V
    .locals 0
    .param p0, "interval"    # J

    .line 300
    sput-wide p0, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunchInterval:J

    .line 301
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setUserId(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private static shouldReportClientLaunch(J)Z
    .locals 5
    .param p0, "now"    # J

    .line 79
    sget-wide v0, Lcom/mpaas/mas/adapter/api/MPLogger;->lastReportClientLaunchTime:J

    sub-long v0, p0, v0

    sget-wide v2, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunchInterval:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static uploadAll()V
    .locals 2

    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 193
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->uploadAfterSync(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    return-void
.end method

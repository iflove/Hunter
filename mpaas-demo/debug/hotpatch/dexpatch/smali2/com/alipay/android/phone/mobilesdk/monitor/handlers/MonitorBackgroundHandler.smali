.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;
.super Ljava/lang/Object;
.source "MonitorBackgroundHandler.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private f:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->a:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;
    .locals 2

    .line 43
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->c:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    if-eqz v0, :cond_0

    .line 46
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->c:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->c:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;

    .line 39
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->c:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->f:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 59
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->f:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 60
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 61
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MonitorBackgroundHandler"

    const-string/jumbo v2, "onMonitorForeground, unregister background jobs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d()V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setStrictBackground(Z)V

    .line 68
    invoke-static {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;->setRelaxedBackground(Z)V

    .line 69
    return-void
.end method

.method public final c()V
    .locals 13

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MonitorBackgroundHandler"

    const-string/jumbo v2, "onMonitorBackground, register background jobs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d()V

    .line 75
    const-string/jumbo v0, "monitor_MonitorBgDisable"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "bgDisable":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "onMonitorBackground, return by config"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 81
    :cond_0
    const-wide/16 v3, 0x0

    .line 82
    .local v3, "delayTime_0":J
    sget-wide v5, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->a:J

    .line 83
    .local v5, "delayTime_1":J
    sget-wide v7, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->b:J

    .line 85
    .local v7, "delayTime_2":J
    const-string/jumbo v9, "monitor_MonitorBgDelayTime_0"

    invoke-static {v9, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "delayValue_0":Ljava/lang/String;
    const-string/jumbo v10, "monitor_MonitorBgDelayTime_1"

    invoke-static {v10, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "delayValue_1":Ljava/lang/String;
    const-string/jumbo v11, "monitor_MonitorBgDelayTime_2"

    invoke-static {v11, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "delayValue_2":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 91
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v11

    .line 94
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v11

    .line 93
    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    invoke-interface {v12, v1, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 98
    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v5, v11

    .line 101
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v11

    .line 100
    .restart local v11    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    invoke-interface {v12, v1, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 105
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v7, v11

    .line 108
    goto :goto_2

    .line 106
    :catchall_2
    move-exception v11

    .line 107
    .restart local v11    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    invoke-interface {v12, v1, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-direct {v1, v11, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 112
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-direct {v1, v11, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->f:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 113
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->d:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-direct {v1, v11, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 115
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v1, v11, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 116
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->f:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v1, v11, v5, v6}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 117
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    iget-object v11, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/MonitorBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v1, v11, v7, v8}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 118
    return-void
.end method

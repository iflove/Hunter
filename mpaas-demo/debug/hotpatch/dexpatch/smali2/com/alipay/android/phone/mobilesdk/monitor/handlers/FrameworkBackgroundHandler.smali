.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;
.super Ljava/lang/Object;
.source "FrameworkBackgroundHandler.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private h:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private i:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private j:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

.field private k:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->a:J

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->b:J

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->c:J

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->d:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;
    .locals 2

    .line 49
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    .line 45
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->e:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->h:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->i:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->j:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->k:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 67
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->h:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 68
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->i:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 69
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->j:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 70
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->k:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->removePendingUpdates()V

    .line 73
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "FrameworkBackgroundHandler"

    const-string/jumbo v2, "onFrameworkForeground, unregister background jobs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->d()V

    .line 78
    return-void
.end method

.method public final c()V
    .locals 22

    .line 81
    move-object/from16 v1, p0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "FrameworkBackgroundHandler"

    const-string/jumbo v3, "onFrameworkBackground, register background jobs"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->d()V

    .line 84
    const-string/jumbo v0, "monitor_FrameworkBgDisable"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "bgDisable":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "onFrameworkBackground, return by config"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 90
    :cond_0
    const-wide/16 v5, 0x0

    .line 91
    .local v5, "delayTime_0":J
    sget-wide v7, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->a:J

    .line 92
    .local v7, "delayTime_1":J
    sget-wide v9, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->b:J

    .line 93
    .local v9, "delayTime_2":J
    sget-wide v11, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->c:J

    .line 94
    .local v11, "delayTime_3":J
    sget-wide v13, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->d:J

    .line 96
    .local v13, "delayTime_9":J
    const-string/jumbo v0, "monitor_FrameworkBgDelayTime_0"

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "delayValue_0":Ljava/lang/String;
    const-string/jumbo v0, "monitor_FrameworkBgDelayTime_1"

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, "delayValue_1":Ljava/lang/String;
    const-string/jumbo v0, "monitor_FrameworkBgDelayTime_2"

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 99
    .local v17, "delayValue_2":Ljava/lang/String;
    const-string/jumbo v0, "monitor_FrameworkBgDelayTime_3"

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 100
    .local v18, "delayValue_3":Ljava/lang/String;
    const-string/jumbo v0, "monitor_FrameworkBgDelayTime_9"

    invoke-static {v0, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "delayValue_9":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :try_start_0
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v5, v19

    .line 107
    move-object/from16 v19, v4

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    move-object/from16 v19, v4

    .end local v4    # "bgDisable":Ljava/lang/String;
    .local v19, "bgDisable":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v19    # "bgDisable":Ljava/lang/String;
    .restart local v4    # "bgDisable":Ljava/lang/String;
    :cond_1
    move-object/from16 v19, v4

    .line 109
    .end local v4    # "bgDisable":Ljava/lang/String;
    .restart local v19    # "bgDisable":Ljava/lang/String;
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v7, v20

    .line 114
    goto :goto_1

    .line 112
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 113
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v9, v20

    .line 121
    goto :goto_2

    .line 119
    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 120
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide/from16 v11, v20

    .line 128
    goto :goto_3

    .line 126
    :catchall_3
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 127
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    :try_start_4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-wide/from16 v13, v20

    .line 135
    goto :goto_4

    .line 133
    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 134
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 139
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->h:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 140
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->i:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 141
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->j:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 142
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->f:Landroid/content/Context;

    const/16 v4, 0x9

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->k:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 144
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->g:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v0, v2, v5, v6}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 145
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->h:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v0, v2, v7, v8}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 146
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->i:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v0, v2, v9, v10}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 147
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->j:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v0, v2, v11, v12}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 148
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->k:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    invoke-virtual {v0, v2, v13, v14}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;J)V

    .line 149
    return-void
.end method

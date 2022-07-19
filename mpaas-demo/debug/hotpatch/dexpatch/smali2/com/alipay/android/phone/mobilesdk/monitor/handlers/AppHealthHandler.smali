.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;
.super Ljava/lang/Object;
.source "AppHealthHandler.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private volatile e:Z

.field private f:Landroid/content/BroadcastReceiver;

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b:I

    .line 68
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    .line 69
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    .line 71
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->g:J

    .line 77
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d()V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;
    .param p1, "x1"    # J

    .line 31
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->g:J

    return-wide p1
.end method

.method private static a(Ljava/lang/String;J)J
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "origin"    # J

    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppHealthHandler"

    const-string v3, "call valueOf() error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    return-wide p1
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;
    .locals 2

    .line 81
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    if-nez v0, :cond_0

    .line 82
    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    monitor-enter v0

    .line 83
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 84
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 31
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;
    .param p1, "x1"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "steArray"    # [Ljava/lang/StackTraceElement;

    .line 574
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 575
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 576
    .local v2, "steItem":Ljava/lang/StackTraceElement;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 577
    const-string v3, "\tat "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    .end local v2    # "steItem":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 11
    .param p0, "data"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;",
            ">;)V"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    .local v0, "paramsList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;

    .line 461
    .local v3, "ar":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 462
    .local v2, "tempMap":Ljava/util/Map;
    move-object v2, v4

    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->a:Ljava/lang/String;

    const-string/jumbo v6, "threadName"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget v4, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->b:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpuOccupancyRate"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v4, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->e:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpuUsageInfoList"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-wide v4, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v4, "stackTraceBuffer":Ljava/lang/StringBuilder;
    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    const-string v6, "\n\n"

    if-eqz v5, :cond_0

    .line 468
    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v7, "stackFrameThreadName"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 470
    .local v7, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v7}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V

    .line 471
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .end local v7    # "ste":[Ljava/lang/StackTraceElement;
    goto :goto_1

    .line 474
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "stackFrame"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    move-object v4, v5

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    iget-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 480
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/StackTraceElement;

    .line 482
    .local v10, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v10}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V

    .line 483
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .end local v10    # "ste":[Ljava/lang/StackTraceElement;
    goto :goto_3

    .line 485
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    .end local v8    # "entry":Ljava/util/Map$Entry;
    goto :goto_2

    .line 487
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fuzzyStackFrames"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v3    # "ar":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    goto/16 :goto_0

    .line 491
    .end local v2    # "tempMap":Ljava/util/Map;
    .end local v4    # "stackTraceBuffer":Ljava/lang/StringBuilder;
    :cond_4
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b(Ljava/util/List;)V

    .line 493
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c(Ljava/util/List;)V

    .line 494
    return-void
.end method

.method private a(Z)V
    .locals 24
    .param p1, "forceLoadFromSp"    # Z

    move-object/from16 v1, p0

    const-string/jumbo v2, "update config waste time "

    const-string v3, "AppHealthHandler"

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 209
    .local v4, "methodStartTime":J
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v6, "config_health_bg_cpu_monitor_sample_count"

    const-string v7, "config_health_bg_cpu_monitor_short_time_gap"

    const-string v8, "config_health_bg_high_cpu_rate_for_thread"

    const-string v9, "config_health_bg_high_cpu_rate_for_proc"

    const-string v10, "config_health_flush_time_gap"

    const-string v11, "config_health_tick_time_gap"

    const-string v12, "config_health_bg_process_monitor_time_gap"

    const-string v13, "config_health_bg_cpu_monitor_time_gap"

    const-string v14, "config_health_bg_process_switcher"

    const-string v15, "config_health_bg_cpu_switcher"

    const-string v16, "HealthMonitorMultiSPCache"

    move-wide/from16 v17, v4

    .end local v4    # "methodStartTime":J
    .local v17, "methodStartTime":J
    const-string v4, "config_health_bg_cpu_ignore_stack_traces"

    const-string v5, "config_health_bg_cpu_ignore_threads"

    move-object/from16 v19, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 210
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object/from16 v16, v2

    .line 211
    .local v16, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v20, v0

    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .local v20, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "spEditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v15, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v2

    .line 214
    .local v21, "tempValue":Ljava/lang/String;
    move-object/from16 v22, v16

    .end local v21    # "tempValue":Ljava/lang/String;
    .local v22, "tempValue":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v2, "true"

    if-nez v16, :cond_1

    .line 215
    move-object/from16 v23, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v6

    .end local v22    # "tempValue":Ljava/lang/String;
    .local v3, "tempValue":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    .line 216
    invoke-interface {v0, v15, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 214
    .end local v3    # "tempValue":Ljava/lang/String;
    .restart local v22    # "tempValue":Ljava/lang/String;
    :cond_1
    move-object/from16 v23, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v6

    .line 220
    .end local v22    # "tempValue":Ljava/lang/String;
    .restart local v3    # "tempValue":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 221
    move-object v3, v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    .line 223
    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    :cond_2
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    move-object v2, v6

    .end local v3    # "tempValue":Ljava/lang/String;
    .local v2, "tempValue":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 229
    nop

    .line 230
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget-wide v14, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    .line 229
    invoke-static {v2, v14, v15}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 231
    .local v14, "bgCpuTG":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iput-wide v14, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    .line 232
    invoke-interface {v0, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    .end local v14    # "bgCpuTG":J
    :cond_3
    const/4 v3, 0x0

    invoke-static {v12, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    move-object v2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 237
    nop

    .line 238
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget-wide v13, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    .line 237
    invoke-static {v2, v13, v14}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;J)J

    move-result-wide v13

    .line 239
    .local v13, "bgProcessTG":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iput-wide v13, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    .line 240
    invoke-interface {v0, v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    .end local v13    # "bgProcessTG":J
    :cond_4
    const/4 v3, 0x0

    invoke-static {v5, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    move-object v2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v6, v20

    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 245
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    .line 246
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->e:[Ljava/lang/String;

    .line 247
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 244
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v6, v20

    .line 250
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    :goto_1
    const/4 v3, 0x0

    invoke-static {v11, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 252
    nop

    .line 253
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget-wide v12, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    .line 252
    invoke-static {v2, v12, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 254
    .local v12, "tickTimeGap":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iput-wide v12, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    .line 255
    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    .end local v12    # "tickTimeGap":J
    :cond_7
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 267
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e(Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->f:[Ljava/lang/StackTraceElement;

    .line 268
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_8
    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 273
    nop

    .line 274
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget-wide v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    .line 273
    invoke-static {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 275
    .local v3, "flushTimeGap":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iput-wide v3, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    .line 276
    invoke-interface {v0, v10, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 279
    .end local v3    # "flushTimeGap":J
    :cond_9
    const/4 v3, 0x0

    invoke-static {v9, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 281
    nop

    .line 282
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    .line 281
    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c(Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, "cpuRateForProc":I
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iput v3, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    .line 284
    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    .end local v3    # "cpuRateForProc":I
    :cond_a
    const/4 v3, 0x0

    invoke-static {v8, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 289
    nop

    .line 290
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    .line 289
    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c(Ljava/lang/String;I)I

    move-result v3

    .line 291
    .local v3, "cpuRateForThread":I
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iput v3, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    .line 292
    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    .end local v3    # "cpuRateForThread":I
    :cond_b
    const/4 v3, 0x0

    invoke-static {v7, v3}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 297
    nop

    .line 298
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    iget-wide v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    .line 297
    invoke-static {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 299
    .local v3, "bgShortTimeGap":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iput-wide v3, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    .line 300
    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 303
    .end local v3    # "bgShortTimeGap":J
    :cond_c
    move-object/from16 v3, v22

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 305
    nop

    .line 306
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v4

    iget v4, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    .line 305
    invoke-static {v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c(Ljava/lang/String;I)I

    move-result v4

    .line 307
    .local v4, "sampleCount":I
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iput v4, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    .line 308
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    .end local v4    # "sampleCount":I
    :cond_d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    .end local v0    # "spEditor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "tempValue":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    goto/16 :goto_3

    .line 352
    :catchall_0
    move-exception v0

    move-object/from16 v4, v19

    goto/16 :goto_5

    .line 209
    :cond_e
    move-object/from16 v23, v3

    move-object v3, v6

    .line 313
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 314
    invoke-static/range {v16 .. v16}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sp":Landroid/content/SharedPreferences;
    goto :goto_2

    .line 316
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_f
    invoke-static/range {v16 .. v16}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    :goto_2
    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    .line 319
    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    .line 321
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v2

    const/4 v6, 0x0

    move-object v14, v6

    .line 322
    .local v14, "conf":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
    move-object v6, v2

    .end local v14    # "conf":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
    .local v6, "conf":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
    iget-wide v14, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    invoke-interface {v0, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    .line 324
    iget-wide v13, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    invoke-interface {v0, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    .line 326
    iget-wide v12, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    .line 328
    const/4 v2, 0x0

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v2

    .line 329
    .local v11, "rawIgnoreThreads":Ljava/lang/String;
    move-object v2, v5

    .end local v11    # "rawIgnoreThreads":Ljava/lang/String;
    .local v2, "rawIgnoreThreads":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 330
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->e:[Ljava/lang/String;

    .line 332
    :cond_10
    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v5, "rawIgnoreStackTraces":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 334
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e(Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    iput-object v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->f:[Ljava/lang/StackTraceElement;

    .line 336
    :cond_11
    iget-wide v11, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    invoke-interface {v0, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->d:J

    .line 338
    iget v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    invoke-interface {v0, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->g:I

    .line 340
    iget v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    invoke-interface {v0, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->h:I

    .line 342
    iget-wide v8, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->i:J

    .line 344
    iget v4, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->j:I

    .line 347
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "rawIgnoreThreads":Ljava/lang/String;
    .end local v5    # "rawIgnoreStackTraces":Ljava/lang/String;
    .end local v6    # "conf":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update config switcher, isBackgroundCpuMonitorEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBackgroundProcessMonitorEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", processName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", configure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    move-object/from16 v3, v23

    :try_start_3
    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 352
    :catchall_1
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v3, v23

    goto :goto_5

    .end local v17    # "methodStartTime":J
    .local v4, "methodStartTime":J
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v4

    move-object v4, v2

    .line 353
    .end local v4    # "methodStartTime":J
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v17    # "methodStartTime":J
    :goto_5
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "update config switcher error."

    invoke-interface {v2, v3, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 355
    .end local v0    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v17

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 31
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->g:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 3
    .param p0, "trigger"    # Ljava/lang/String;
    .param p1, "eventType"    # I

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "track event, event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppHealthHandler"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(I)V

    .line 156
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 16
    .param p0, "highCpuList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "config_health_report_count_timestamp"

    const-string v1, "config_health_report_count"

    .line 497
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "AppHealthHandler"

    const-string/jumbo v4, "report to mt biz."

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :try_start_0
    const-string v2, "HealthMonitorMultiSPCache"

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, 0x0

    .line 503
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 504
    .local v2, "reportCount":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 505
    .local v5, "currentTime":J
    const-wide/16 v7, 0x0

    invoke-interface {v4, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 506
    .local v7, "timeStamp":J
    sub-long v9, v5, v7

    const-wide/32 v11, 0x5265c00

    const/4 v13, 0x5

    cmp-long v14, v9, v11

    if-lez v14, :cond_1

    .line 507
    const/4 v2, 0x0

    goto :goto_0

    .line 508
    :cond_1
    if-le v2, v13, :cond_2

    .line 509
    return-void

    .line 511
    :cond_2
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 512
    .local v10, "params":Ljava/util/Map;
    if-le v2, v13, :cond_3

    .line 513
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {v1, v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    return-void

    .line 518
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v11

    const-string v12, "MTBIZ_BATTERY"

    const-string v14, "BACKGROUND_HIGH_CPU_USAGE_THREAD"

    const-string v15, "10001"

    invoke-interface {v11, v12, v14, v15, v10}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 521
    nop

    .end local v10    # "params":Ljava/util/Map;
    add-int/lit8 v2, v2, 0x1

    .line 522
    goto :goto_1

    .line 523
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_KEYBIZTRACE:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 524
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v1, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v2    # "reportCount":I
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "currentTime":J
    .end local v7    # "timeStamp":J
    return-void

    .line 527
    :catchall_0
    move-exception v0

    .line 528
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "report to mt biz error"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static c(Ljava/lang/String;I)I
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "origin"    # I

    .line 194
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppHealthHandler"

    const-string v3, "call valueOf() error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    return p1
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 9
    .param p0, "highCpuList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "AppHealthHandler"

    .line 534
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    return-void

    .line 537
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 538
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "\n>>>> Print Illegal Stacktrace Start <<<<\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 540
    .local v3, "params":Ljava/util/Map;
    const-string v5, "---- High Cpu Usage Start ----\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 542
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "stackFrame"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 544
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "fuzzyStackFrames"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 547
    :cond_1
    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 545
    :cond_2
    :goto_2
    const-string v7, ":\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 551
    :cond_3
    const-string v4, "\n---- High Cpu Usage End ----\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    nop

    .end local v3    # "params":Ljava/util/Map;
    goto :goto_0

    .line 553
    :cond_4
    const-string v1, ">>>> Print Illegal Stacktrace End <<<<\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 557
    .local v2, "count":I
    const-string v3, "\n---- Print All Stacktrace Start ----\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 559
    .local v5, "entry":Ljava/util/Map$Entry;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Thread("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "):\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    array-length v2, v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 564
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V

    .line 565
    .end local v5    # "entry":Ljava/util/Map$Entry;
    goto :goto_6

    .line 561
    .restart local v5    # "entry":Ljava/util/Map$Entry;
    :cond_6
    :goto_5
    const-string v2, "empty stack trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    nop

    .line 558
    .end local v5    # "entry":Ljava/util/Map$Entry;
    :goto_6
    move v2, v6

    goto :goto_4

    .line 566
    .end local v6    # "count":I
    .restart local v2    # "count":I
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "---- Print All Stacktrace End ----\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    return-void

    .line 568
    :catchall_0
    move-exception v1

    .line 569
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static d()V
    .locals 3

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Landroid/os/Handler;I)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Landroid/os/Handler;I)V

    .line 148
    :cond_2
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "trigger"    # Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "track event by broadcast, event: 3, trigger: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppHealthHandler"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 163
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b(Ljava/lang/Integer;)V

    .line 166
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->d:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->g()V

    goto :goto_2

    .line 167
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f()V

    .line 172
    :cond_3
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->c:Z

    if-eqz v0, :cond_5

    .line 174
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Ljava/lang/Integer;)V

    .line 175
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 177
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b(Ljava/lang/Integer;)V

    .line 178
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_6
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static e(Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 10
    .param p0, "ignoreStackTraces"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 363
    .local v2, "elements":[Ljava/lang/String;
    move-object v2, v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 364
    .local v1, "result":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 365
    aget-object v4, v2, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "splitStr":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StackTraceElement;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, -0x2

    :cond_0
    invoke-direct {v5, v7, v8, v0, v6}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v4    # "splitStr":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "idx":I
    :cond_1
    return-object v1

    .line 369
    .end local v1    # "result":[Ljava/lang/StackTraceElement;
    .end local v2    # "elements":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 370
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "AppHealthHandler"

    const-string/jumbo v4, "transform ignore stack trace error"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    return-object v0
.end method

.method private f()V
    .locals 7

    .line 396
    const-string v0, "AppHealthHandler"

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e:Z

    if-eqz v1, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 400
    .local v1, "ctx":Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".push.action.CHECK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".monitor.command"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".push.action.AMNET_ALARMTIMER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f:Landroid/content/BroadcastReceiver;

    .line 406
    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 407
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e:Z

    .line 408
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "register tick check receiver"

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "packageName":Ljava/lang/String;
    return-void

    .line 409
    :catchall_0
    move-exception v1

    .line 410
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;

    .line 377
    :try_start_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppHealthHandler"

    const-string/jumbo v3, "transform ignore threads error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    const/4 v1, 0x0

    return-object v1
.end method

.method private g()V
    .locals 4

    .line 416
    const-string v0, "AppHealthHandler"

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e:Z

    if-nez v1, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 420
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 421
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->f:Landroid/content/BroadcastReceiver;

    .line 424
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->e:Z

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "unregister tick check receiver"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v1    # "ctx":Landroid/content/Context;
    return-void

    .line 426
    :catchall_0
    move-exception v1

    .line 427
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    const-string v0, "AppHealthHandler"

    .line 435
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "on subscribe but beyond expert, type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    .line 439
    :cond_0
    if-eqz p2, :cond_3

    instance-of v1, p2, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 443
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 445
    .local v2, "processUsageInfoList":Ljava/util/List;
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 446
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "on subscribe but list is empty."

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 449
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "on subscribe, type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/util/List;)V

    .line 453
    .end local v2    # "processUsageInfoList":Ljava/util/List;
    return-void

    .line 440
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "on subscribe but got error data, data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    return-void

    .line 451
    :catchall_0
    move-exception v1

    .line 452
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "subscribe error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;

    .line 90
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b:I

    .line 94
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method

.method public final b()V
    .locals 4

    .line 385
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b:I

    .line 108
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method public final c()I
    .locals 1

    .line 587
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

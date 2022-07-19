.class public Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;
.super Ljava/lang/Object;
.source "ProcessAliveMonitor.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ProcessAliveMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->b:J

    return-void
.end method

.method private a(J)V
    .locals 5
    .param p1, "deltaTime"    # J

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->c:Landroid/content/Context;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v1, "entity":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string/jumbo v2, "processAliveTime"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    add-long/2addr v3, p1

    .line 134
    .local v3, "aliveTime":J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method private b()V
    .locals 5

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->c:Landroid/content/Context;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 118
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v0

    .line 119
    .local v0, "logicRebootTime":J
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getDeviceCurrentRebootExactTime()J

    move-result-wide v2

    .line 121
    .local v2, "actualRebootTime":J
    const-string v4, "deviceAliveTime"

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 122
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getDeviceCurrentRebootFuzzyTime()J

    move-result-wide v5

    .line 123
    .local v5, "fuzzyRebootTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->f:Ljava/lang/String;

    .line 124
    .end local v5    # "fuzzyRebootTime":J
    goto :goto_0

    .line 125
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->f:Ljava/lang/String;

    .line 128
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->b()V

    .line 129
    return-void
.end method

.method public onProcessAliveReport(Ljava/lang/String;Landroid/content/Context;JZ)Landroid/os/Bundle;
    .locals 23
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deltaElasped"    # J
    .param p5, "isOnDayFirstly"    # Z

    .line 47
    move-object/from16 v1, p0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "ProcessAliveMonitor"

    const-string/jumbo v3, "onProcessAliveReport"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 50
    .local v4, "bundle":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->c:Landroid/content/Context;

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v5, 0x0

    move-object v7, v5

    .line 51
    .local v7, "entity":Landroid/content/SharedPreferences;
    move-object v7, v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 52
    .local v8, "entities":Ljava/util/Map;
    const-string/jumbo v9, "processAliveTime"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 53
    .local v12, "processTime":J
    const-wide/16 v14, 0x0

    .line 55
    .local v14, "deviceTime":J
    const-string v5, "deviceAliveTime"

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 56
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 58
    .local v17, "entry":Ljava/util/Map$Entry;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Ljava/lang/String;

    .line 60
    .local v0, "key":Ljava/lang/String;
    move-object v0, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 61
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 64
    .local v6, "prefixLen":I
    :cond_0
    const/16 v10, 0xf

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 67
    .local v10, "startTime":J
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v19, "endTime":J
    sub-long v21, v19, v10

    add-long v14, v14, v21

    .line 72
    .end local v0    # "key":Ljava/lang/String;
    .end local v6    # "prefixLen":I
    .end local v10    # "startTime":J
    .end local v19    # "endTime":J
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    invoke-interface {v10, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v17    # "entry":Ljava/util/Map$Entry;
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->d()V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v2, "onForegroundTimespan"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v2, v10, v11}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->c(Ljava/lang/String;J)J

    move-result-wide v16

    .line 79
    .local v16, "fgTotalTime":J
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "foregroundTime"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz p5, :cond_2

    .line 84
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v2, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, "currentTime":J
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    iget-object v6, v1, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->e:Ljava/lang/String;

    invoke-virtual {v0, v6, v2, v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->f:Ljava/lang/String;

    .line 92
    .end local v2    # "currentTime":J
    :cond_2
    return-object v4
.end method

.method public onTimeTickTrigger(Ljava/lang/String;Landroid/content/Context;J)Ljava/lang/Object;
    .locals 9
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deltaElasped"    # J

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "isFirstly":Z
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getProcessCurrentLaunchNaturalTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->d:J

    .line 101
    const/4 v0, 0x1

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 105
    .local v3, "currentTime":J
    move-wide v3, v1

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->d:J

    sub-long/2addr v1, v5

    .line 106
    .local v1, "deltaTime":J
    const/4 v5, 0x0

    if-nez v0, :cond_1

    sget-wide v6, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->b:J

    cmp-long v8, v1, v6

    if-gez v8, :cond_1

    .line 107
    return-object v5

    .line 109
    :cond_1
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->d:J

    .line 111
    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->a(J)V

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessAliveMonitor;->b()V

    .line 114
    return-object v5
.end method

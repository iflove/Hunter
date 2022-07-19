.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;
.super Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;
.source "FrameworkBackgroundJob.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundLevel"    # I

    .line 45
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->a:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    .line 48
    return-void
.end method

.method private static d()V
    .locals 4

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 100
    .local v1, "memoryToReport":Ljava/util/List;
    move-object v1, v0

    const-string v2, "clientLaunch"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string/jumbo v0, "max"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v0, "background"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v0, "background1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "background2"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v0, "background3"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "background9"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v1}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->reportMemoryUsages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v1    # "memoryToReport":Ljava/util/List;
    return-void

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "FrameworkBackgroundJob"

    const-string v3, "doJob, handleMemoryInLevel_0"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static e()V
    .locals 9

    .line 116
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getHealthThenReset()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move-object v2, v1

    .line 117
    .local v2, "memInfo":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "MemoryMonitor"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "background report start"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    move-object v4, v1

    .line 120
    .local v4, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v4, v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 121
    const-string v0, "background"

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    .local v1, "key":Ljava/lang/String;
    move-object v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_PERFORMANCE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_PERFORMANCE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->uploadAfterSync(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "report memInfo on background"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v4    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 135
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "no memInfo on background"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v2    # "memInfo":Landroid/os/Bundle;
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "FrameworkBackgroundJob"

    const-string v3, "doJob, handleMemoryInLevel_1"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private f()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "doMonitor"

    const-string v2, "FrameworkBackgroundJob"

    .line 145
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 146
    .local v3, "startTime":J
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->a:Landroid/content/Context;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->getMemoryInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object v5

    move-object v6, v7

    .line 148
    .local v6, "memoryInfo":Landroid/os/Debug$MemoryInfo;
    move-object v6, v5

    if-nez v5, :cond_0

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "doMonitor: null memoryInfo"

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-long v8, v5

    .line 155
    .local v8, "totalPss":J
    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    int-to-long v10, v5

    .line 156
    .local v10, "totalPrivateDirty":J
    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    int-to-long v12, v5

    .line 157
    .local v12, "totalSharedDirty":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()J

    move-result-wide v14

    .line 158
    .local v14, "dalvikHeapAlloc":J
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->a:Landroid/content/Context;

    const-string v7, "&"

    invoke-static {v5, v7}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "activityStack":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v19, v6

    .end local v6    # "memoryInfo":Landroid/os/Debug$MemoryInfo;
    .local v19, "memoryInfo":Landroid/os/Debug$MemoryInfo;
    sub-long v6, v17, v3

    .line 161
    .local v6, "deltaTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 162
    .local v17, "message":Ljava/lang/StringBuilder;
    move-object v0, v1

    move-wide/from16 v17, v3

    .end local v3    # "startTime":J
    .local v0, "message":Ljava/lang/StringBuilder;
    .local v17, "startTime":J
    const-string v3, ": totalPss = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", totalPrivateDirty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", totalSharedDirty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", dalvikHeapAlloc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", deltaTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", activityStack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-wide/32 v3, 0x4b000

    cmp-long v1, v8, v3

    if-gez v1, :cond_1

    .line 171
    return-void

    .line 174
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 175
    .local v3, "params":Ljava/util/Map;
    move-object v3, v1

    const-string/jumbo v4, "totalPss"

    move-object/from16 v16, v0

    .end local v0    # "message":Ljava/lang/StringBuilder;
    .local v16, "message":Ljava/lang/StringBuilder;
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v0, "totalPrivateDirty"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v0, "totalSharedDirty"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "dalvikHeapAlloc"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "deltaTime"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "activityStack"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v20

    const-string v21, "FrameworkBackgroundHandler"

    const-string v22, "FrameworkBackgroundJob"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v3

    invoke-interface/range {v20 .. v26}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v3    # "params":Ljava/util/Map;
    .end local v5    # "activityStack":Ljava/lang/String;
    .end local v6    # "deltaTime":J
    .end local v8    # "totalPss":J
    .end local v10    # "totalPrivateDirty":J
    .end local v12    # "totalSharedDirty":J
    .end local v14    # "dalvikHeapAlloc":J
    .end local v16    # "message":Ljava/lang/StringBuilder;
    .end local v17    # "startTime":J
    .end local v19    # "memoryInfo":Landroid/os/Debug$MemoryInfo;
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "doJob, handleMemoryInLevel_9"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private g()V
    .locals 8

    const-string v0, "FrameworkBackgroundJob"

    .line 190
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".monitor.action.BACKGROUND_DELAY_EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 194
    .local v5, "intent_1":Landroid/content/Intent;
    move-object v5, v3

    iget v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    const-string v7, "level"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v3

    .line 200
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->a:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v6, "success to send system broadcast"

    invoke-interface {v3, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    goto :goto_1

    .line 202
    :catchall_1
    move-exception v3

    move-object v4, v3

    .line 203
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v6, "fail to send system broadcast"

    invoke-interface {v3, v0, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 207
    .local v3, "intent_2":Landroid/content/Intent;
    move-object v3, v0

    iget v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 211
    goto :goto_2

    .line 210
    :catchall_2
    move-exception v0

    .line 212
    :goto_2
    invoke-static {v3}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sendLocalBroadcast(Landroid/content/Intent;)V

    .line 213
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time to run, backgroundLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameworkBackgroundJob"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    const-string v0, "background"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->d()V

    goto/16 :goto_1

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isFrameworkBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "applog"

    const/4 v6, 0x0

    if-ne v0, v1, :cond_1

    .line 66
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->e()V

    .line 67
    const-string v0, "background1"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 71
    :cond_1
    if-ne v0, v3, :cond_2

    .line 72
    const-string v0, "background2"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    :cond_2
    if-ne v0, v2, :cond_3

    .line 77
    const-string v0, "background3"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v4, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :cond_3
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    .line 82
    const-string v0, "background9"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->f()V

    .line 85
    :cond_4
    :goto_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->b:I

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_7

    .line 89
    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->g()V

    goto :goto_1

    .line 92
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "is no longer in background"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->c:Z

    .line 95
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundJob;->c:Z

    return v0
.end method

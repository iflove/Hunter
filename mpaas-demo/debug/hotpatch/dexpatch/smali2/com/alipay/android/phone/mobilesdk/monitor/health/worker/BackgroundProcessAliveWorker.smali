.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
.super Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;
.source "BackgroundProcessAliveWorker.java"


# instance fields
.field private volatile b:J

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 188
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b:J

    .line 26
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->d:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    .line 189
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "private SharedPreference\'s file name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundProcessAliveWorker"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    .line 14
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .param p1, "delayTimeMs"    # J

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "schedule next background process check alive, delayMs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundProcessAliveWorker"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private a(JJ)V
    .locals 4
    .param p1, "aliveTimeMs"    # J
    .param p3, "timestamp"    # J

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    const-string v1, "health_bg_process_alive_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string v1, "health_bg_process_alive_time_last_timestamp"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-string v3, "health_bg_process_alive_time_start"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "BackgroundProcessAliveWorker"

    const-string/jumbo v2, "update alive record time error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
    .param p1, "x1"    # J

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    .line 14
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
    .param p1, "x1"    # J

    .line 14
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b:J

    return-wide p1
.end method

.method private b(J)V
    .locals 2
    .param p1, "aliveTimeMs"    # J

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(JJ)V

    .line 135
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    .line 14
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
    .param p1, "x1"    # J

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b(J)V

    return-void
.end method

.method public static d()J
    .locals 6

    .line 149
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "health_bg_process_alive_time_start"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 150
    :catchall_0
    move-exception v2

    .line 151
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "BackgroundProcessAliveWorker"

    const-string v5, "can\'t get last alive start time"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    return-wide v0
.end method

.method public static e()J
    .locals 17

    const-string v0, "health_bg_process_alive_time"

    const-string v1, "health_bg_process_alive_time_last_timestamp"

    const-string v2, "BackgroundProcessAliveWorker"

    .line 159
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "privateSpName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get last alive time by sp file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 162
    invoke-interface {v6, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 163
    .local v6, "value":J
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 164
    invoke-interface {v8, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 165
    .local v8, "lastTimeStamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-wide v12, v3

    .line 166
    .local v12, "currentTime":J
    move-wide v12, v10

    cmp-long v14, v10, v8

    if-ltz v14, :cond_1

    sub-long v10, v12, v8

    const-wide/32 v14, 0x493e0

    cmp-long v16, v10, v14

    if-lez v16, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "get last alive time and keep it."

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 169
    invoke-interface {v10, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    const-wide/16 v10, -0x1

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "health_bg_process_alive_time_start"

    .line 171
    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "get last alive time and clear it."

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_1
    return-wide v6

    .line 181
    .end local v5    # "privateSpName":Ljava/lang/String;
    .end local v6    # "value":J
    .end local v8    # "lastTimeStamp":J
    .end local v12    # "currentTime":J
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v5, "can\'t get last alive time"

    invoke-interface {v1, v2, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-wide v3
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthMonitorPrivateSp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method private h()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method private i()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 230
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "BackgroundProcessAliveWorker"

    const-string/jumbo v2, "trace event but has been stopped."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->g()V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->h()V

    .line 240
    return-void

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->i()V

    .line 237
    return-void
.end method

.method public final b()V
    .locals 3

    .line 204
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b()V

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->d:Ljava/lang/Runnable;

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    .line 208
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    .line 210
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->d:Ljava/lang/Runnable;

    .line 212
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "BackgroundProcessAliveWorker"

    const-string/jumbo v2, "start background process alive worker fail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->c()V

    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->d:Ljava/lang/Runnable;

    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->f:Ljava/lang/Runnable;

    .line 223
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->e:Ljava/lang/Runnable;

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

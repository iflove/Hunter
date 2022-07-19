.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;
.super Ljava/lang/Object;
.source "BackgroundProcessAliveWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    .line 62
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, " ms."

    const-string v3, "check alive runnable waste time "

    const-string v4, "BackgroundProcessAliveWorker"

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 67
    .local v5, "before":J
    :try_start_0
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v7, "stop run process check alive runnable because it has stopped."

    invoke-interface {v0, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "health_bg_process_alive_time"

    .line 73
    const-wide/16 v8, -0x1

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 74
    .local v14, "aliveTime":J
    move-wide v14, v10

    cmp-long v0, v10, v12

    if-gez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v7, "process alive but alive time record is empty!"

    invoke-interface {v0, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/HealthSPCache;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "health_bg_process_alive_time_last_timestamp"

    .line 79
    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    move-wide/from16 v16, v12

    .line 80
    .local v16, "lastRecordTime":J
    move-wide/from16 v16, v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v7, v7, v16

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v14, v7

    .line 84
    .end local v16    # "lastRecordTime":J
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v0, v14, v15}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)V

    .line 85
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v0, v5, v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)J

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "update alive time, aliveTimeMs = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", checkAliveTimeGap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v8, v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 87
    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v8

    iget-wide v8, v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-interface {v0, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v7, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v7

    iget-wide v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    invoke-static {v0, v7, v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v14    # "aliveTime":J
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "process check alive runnable error."

    invoke-interface {v7, v4, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v0    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

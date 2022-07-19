.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;
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

    .line 99
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 102
    const-string v0, " ms."

    const-string/jumbo v1, "run tick waste time "

    const-string v2, "BackgroundProcessAliveWorker"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 104
    .local v3, "curClockTime":J
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "run tick"

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "run tick has been given up"

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 110
    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v7

    iget-wide v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "run tick found in process check alive time gap, gap ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 112
    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v7

    iget-wide v7, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->a:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", elapsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)J

    move-result-wide v7

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    iget-object v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "run tick and post check alive task immediately\uff01"

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 119
    :catchall_0
    move-exception v5

    .line 120
    .local v5, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "run tick error"

    invoke-interface {v6, v2, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .end local v5    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-interface {v6, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

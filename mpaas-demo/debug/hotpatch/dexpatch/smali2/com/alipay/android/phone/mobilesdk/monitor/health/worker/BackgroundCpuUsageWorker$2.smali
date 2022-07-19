.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;
.super Ljava/lang/Object;
.source "BackgroundCpuUsageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 67
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "BackgroundCpuUsageWorker"

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Only allow work in specified thread"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->d(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Skip this tick because it\'s capturing now."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 80
    .local v3, "curTime":J
    move-wide v3, v1

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget-wide v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Run tick and skip capture cpu due to in the time interval( "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    .line 82
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->e(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 83
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget-wide v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " )."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 86
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Run tick and start capture work."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v1, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v1, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$2;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->f(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    nop

    .end local v3    # "curTime":J
    return-void

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "Run tick error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;
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

    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 39
    const-string v0, "BackgroundCpuUsageWorker"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Only allow work in specified thread"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Run capture."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Capture work has some errors occurs before, just return."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a()V

    .line 53
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;J)J

    .line 54
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->c(Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v1, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v1

    iget-wide v1, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->b:J

    .line 56
    .local v1, "captureTimeGap":J
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    iget-object v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Schedule next background cpu check, captureTimeGap = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v1    # "captureTimeGap":J
    return-void

    .line 59
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Capture work has been stopped or in background."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 49
    :cond_4
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Capture work has been stopped or in background, just return."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-void

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "Run capture background cpu usage error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

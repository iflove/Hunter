.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HealthCheckReceiver.java"


# instance fields
.field private a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->b:J

    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "HealthCheckReceiver"

    .line 28
    if-nez p2, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 32
    .local v3, "curClockTime":J
    move-wide v3, v1

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->b:J

    sub-long/2addr v1, v5

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget-wide v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Receive tick but in time gap( "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->b:J

    sub-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 35
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    move-result-object v5

    iget-wide v5, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;->c:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ), just skip. action: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 39
    :cond_1
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->b:J

    .line 40
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthCheckReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(ILjava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "receive action on health check receiver and process it."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v3    # "curClockTime":J
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "onReceive error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

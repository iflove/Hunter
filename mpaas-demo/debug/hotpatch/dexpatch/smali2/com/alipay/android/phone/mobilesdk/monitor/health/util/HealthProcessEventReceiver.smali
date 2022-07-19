.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HealthProcessEventReceiver.java"


# instance fields
.field private a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "HealthProcessEventReceiver"

    .line 26
    if-nez p2, :cond_0

    .line 27
    return-void

    .line 30
    :cond_0
    :try_start_0
    const-string/jumbo v1, "source"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 31
    .local v2, "source":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "Unknown"

    move-object v2, v1

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".health.ACTION_TICK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(I)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".health.ACTION_FLUSH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(I)V

    .line 39
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "receive health process event, event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v2    # "source":Ljava/lang/String;
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "onReceive error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

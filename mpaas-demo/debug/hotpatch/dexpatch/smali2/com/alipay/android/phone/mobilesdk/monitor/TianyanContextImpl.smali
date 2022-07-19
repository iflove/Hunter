.class public Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;
.super Ljava/lang/Object;
.source "TianyanContextImpl.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanContext;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public onActivityAllStopped()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->b(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b()V

    .line 71
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->onUserLeave()V

    .line 72
    return-void
.end method

.method public onFrameworkActivityResume(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->a()V

    .line 64
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->onUserResume()V

    .line 65
    return-void
.end method

.method public onFrameworkActivityUserLeavehint()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onFrameworkBackground()V

    .line 44
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    const-string/jumbo v1, "onFrameworkActivityUserLeavehint"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorBackground(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->c()V

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/TianyanContextImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->b(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b()V

    .line 49
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->onUserLeave()V

    .line 55
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a()V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->a()Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/TrafficPowerHandler;->e()V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b()V

    .line 58
    return-void
.end method

.method public onFrameworkBroughtToForeground()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onFrameworkForeground()V

    .line 33
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    const-string/jumbo v1, "onFrameworkBroughtToForeground"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorForeground(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/FrameworkBackgroundHandler;->b()V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->a()Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPPrivate;->b()V

    .line 39
    return-void
.end method

.method public onPipelineClientStartup()V
    .locals 0

    .line 77
    return-void
.end method

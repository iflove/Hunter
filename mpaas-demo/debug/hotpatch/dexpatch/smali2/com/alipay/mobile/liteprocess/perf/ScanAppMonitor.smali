.class public Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;
.super Ljava/lang/Object;
.source "ScanAppMonitor.java"

# interfaces
.implements Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScanAppForeground()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    return v0
.end method

.method public static onScanCodeRecognized()V
    .locals 1

    .line 63
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->onExitScan()V

    .line 66
    :cond_0
    return-void
.end method

.method public static register(Z)V
    .locals 5
    .param p0, "isFromAdvice"    # Z

    .line 17
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    if-eqz v1, :cond_1

    .line 22
    monitor-exit v0

    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/android/launcher/TaskDispatchService;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/launcher/TaskDispatchService;

    const/4 v2, 0x0

    .line 27
    .local v2, "taskDispatchService":Lcom/alipay/android/launcher/TaskDispatchService;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    invoke-virtual {v2, v1}, Lcom/alipay/android/launcher/TaskDispatchService;->registerScanAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;)V

    .line 30
    :cond_2
    if-eqz p0, :cond_3

    .line 31
    sget-object v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->a:Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->onEnterScan()V

    .line 33
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LiteProcess"

    const-string v4, "ScanResultSubscriber registered"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v2    # "taskDispatchService":Lcom/alipay/android/launcher/TaskDispatchService;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onEnterScan()V
    .locals 2

    .line 39
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->notifyScanAppEvent(Z)V

    .line 42
    :cond_0
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    .line 43
    return-void
.end method

.method public onExitScan()V
    .locals 2

    .line 52
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->notifyScanAppEvent(Z)V

    .line 55
    :cond_0
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->b:Z

    .line 56
    return-void
.end method

.method public onScanCameraFinish()V
    .locals 0

    .line 48
    return-void
.end method

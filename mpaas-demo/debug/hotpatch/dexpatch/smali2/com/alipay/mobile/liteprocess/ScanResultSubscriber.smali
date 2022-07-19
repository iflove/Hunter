.class public Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;
.super Ljava/lang/Object;
.source "ScanResultSubscriber.java"

# interfaces
.implements Lcom/alipay/android/phone/scancode/export/ScanOuterNotice$Subscriber;


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 5

    .line 23
    sget-object v0, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;->a:Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->r:Z

    if-eqz v0, :cond_2

    .line 24
    const-class v0, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;->a:Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/scancode/export/ScanOuterNotice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/scancode/export/ScanOuterNotice;

    const/4 v2, 0x0

    .line 31
    .local v2, "scanService":Lcom/alipay/android/phone/scancode/export/ScanOuterNotice;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;->a:Lcom/alipay/mobile/liteprocess/ScanResultSubscriber;

    .line 33
    const-string/jumbo v3, "tinyapp"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/scancode/export/ScanOuterNotice;->subscribe(Ljava/lang/String;Lcom/alipay/android/phone/scancode/export/ScanOuterNotice$Subscriber;)V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LiteProcess"

    const-string v4, "ScanResultSubscriber registered"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .end local v2    # "scanService":Lcom/alipay/android/phone/scancode/export/ScanOuterNotice;
    :cond_1
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    .local v1, "thr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "ScanOuterNotice register error!"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public notifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scan notifyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://c3x.me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://ofo.so/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "ymobile-cn.ankerjiedian.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ali.imlaidian.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->NEED_LITE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->hasPreloadProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "scan result recognized as tinyApp, start lite process"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/ScanAppMonitor;->onScanCodeRecognized()V

    .line 54
    return-void
.end method

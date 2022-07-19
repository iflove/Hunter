.class public Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;
.super Lcom/alipay/mobile/liteprocess/ipc/IpcService;
.source "IpcCallServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;-><init>()V

    return-void
.end method

.method public static registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "interfaceClassName"    # Ljava/lang/String;
    .param p1, "objImpl"    # Ljava/lang/Object;

    const-string v0, "LiteProcess"

    .line 48
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IpcCallServer registerServiceBean interfaceClassName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->d()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    .local v2, "serviceBeanManager":Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "serviceBeanManager":Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallServer onBind"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 21
    invoke-super {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;->onCreate()V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallServer onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IpcCallServer must be in main process. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 29
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 33
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->registerCallServerBean()V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

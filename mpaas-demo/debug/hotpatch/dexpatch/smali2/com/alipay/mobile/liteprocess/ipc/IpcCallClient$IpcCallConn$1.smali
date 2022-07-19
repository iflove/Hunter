.class Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;
.super Ljava/lang/Object;
.source "IpcCallClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a(Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IpcCallClient init ipcManager "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    invoke-static {v3}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a(Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpcCallClient init error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;

    monitor-enter v0

    .line 87
    :try_start_1
    const-class v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

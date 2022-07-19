.class Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;
.super Ljava/lang/Object;
.source "IpcCallClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IpcCallConn"
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallClient onServiceConnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->rebind()V

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->setBind(Z)V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn$1;-><init>(Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallClient onServiceDisconnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;->a:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 98
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->setBind(Z)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->rebind()V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    return-void
.end method

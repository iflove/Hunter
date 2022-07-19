.class public Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;
.super Ljava/lang/Object;
.source "LiteIpcCallManager.java"


# static fields
.field private static d:Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;


# instance fields
.field private a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

.field private b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

.field private c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static final a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->d:Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->d:Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    if-eqz v1, :cond_1

    .line 40
    monitor-exit v0

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->d:Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    .line 43
    monitor-exit v0

    .line 45
    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->init(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V

    .line 52
    :cond_0
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ipcManager"    # Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 55
    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->init(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V

    .line 59
    :cond_0
    return-void
.end method

.method final b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 67
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getIPCManager()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 74
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-object v0
.end method

.method final c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    if-nez v0, :cond_1

    .line 80
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 83
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 90
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    return-object v0
.end method

.method final d()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    return-object v0
.end method

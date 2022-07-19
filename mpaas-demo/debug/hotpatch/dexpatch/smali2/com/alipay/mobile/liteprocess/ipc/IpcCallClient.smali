.class public Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;
.super Ljava/lang/Object;
.source "IpcCallClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static c()V
    .locals 6

    .line 105
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;

    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallClient waitBindedIfNeed but ipcClient is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->isBind()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->isBind()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcCallClient begin wait bind"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcCallClient end wait bind"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpcCallClient wait error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 123
    :cond_2
    return-void
.end method

.method private static d()V
    .locals 6

    .line 126
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;

    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->LITE_WAIT_IPCMANAGER:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 134
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcCallClient begin wait ipc"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcCallClient end wait ipc"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpcCallClient wait ipc error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 143
    :cond_2
    return-void

    .line 127
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcCallClient not need waitIpcIfNeed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "t"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 150
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    const-string v1, "IpcCallClient.getIpcProxy should not call on main thread!!!"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->isBind()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->isSrvReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->waitIfNeeded()V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->c()V

    .line 158
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->d()V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->a()Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/LiteIpcCallManager;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 160
    .local v2, "ipcContextManager":Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {v2}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_2
    return-object v1
.end method

.method public static declared-synchronized prepare()V
    .locals 5

    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpcCallClient must be in lite process. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 34
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 39
    monitor-exit v0

    return-void

    .line 41
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->c:Z

    .line 42
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcCallClient prepare"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;-><init>()V

    .line 46
    .local v1, "conn":Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;
    new-instance v2, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    const-class v3, Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;-><init>(Ljava/lang/Class;Landroid/content/ServiceConnection;)V

    .line 47
    sput-object v2, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->bind()V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    const-string v4, "IpcCallClient prepare finish"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 31
    .end local v1    # "conn":Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient$IpcCallConn;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

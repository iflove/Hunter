.class public Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;
.super Ljava/lang/Object;
.source "IpcMsgClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;,
        Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

.field private static b:Landroid/os/Messenger;

.field private static c:Landroid/os/Messenger;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/os/Handler;

.field private static f:Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b:Landroid/os/Messenger;

    .line 44
    sput-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->c:Landroid/os/Messenger;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d:Ljava/util/HashMap;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;

    .line 36
    sput-object p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->g()V

    return-void
.end method

.method static synthetic b()Landroid/os/Messenger;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->c:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic b(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;

    .line 36
    sput-object p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->c:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic c()Landroid/os/Messenger;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic d()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    return-object v0
.end method

.method static synthetic e()Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->f:Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private static g()V
    .locals 6

    .line 126
    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;

    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    if-nez v1, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgClient waitBindedIfNeed but ipcClient is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->isBind()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->isBind()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcMsgClient begin wait bind"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcMsgClient end wait bind"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpcMsgClient wait error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
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

    .line 144
    :cond_2
    return-void
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized prepare()V
    .locals 7

    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpcMsgClient must be in lite process. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 56
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 60
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->g:Z

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string v3, "IpcMsgClient prepare"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IpcMsgClientProcess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 67
    .local v3, "processThread":Landroid/os/HandlerThread;
    move-object v3, v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->e:Landroid/os/Handler;

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpcMsgClientMsger: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "msgerThread":Landroid/os/HandlerThread;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->f:Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;

    .line 74
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;-><init>()V

    .line 75
    .local v1, "conn":Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;
    new-instance v4, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    const-class v5, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;

    invoke-direct {v4, v5, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;-><init>(Ljava/lang/Class;Landroid/content/ServiceConnection;)V

    .line 76
    sput-object v4, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a:Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->bind()V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LiteProcess"

    const-string v6, "IpcMsgClient prepare finish"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    .line 53
    .end local v1    # "conn":Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;
    .end local v2    # "msgerThread":Landroid/os/HandlerThread;
    .end local v3    # "processThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p0, "biz"    # Ljava/lang/String;
    .param p1, "bizHandler"    # Landroid/os/Handler;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgClient registerBizHandler"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static send(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p0, "biz"    # Ljava/lang/String;
    .param p1, "bizMsg"    # Landroid/os/Message;

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public static unregisterRspBizHandler(Ljava/lang/String;)V
    .locals 3
    .param p0, "biz"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgClient unregisterBizHandler"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

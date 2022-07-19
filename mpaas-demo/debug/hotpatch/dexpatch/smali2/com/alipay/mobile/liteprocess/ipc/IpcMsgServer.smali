.class public Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;
.super Lcom/alipay/mobile/liteprocess/ipc/IpcService;
.source "IpcMsgServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 27
    invoke-static {p0, p1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;Landroid/os/Messenger;)V

    return-void
.end method

.method private static declared-synchronized b()V
    .locals 5

    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 56
    monitor-exit v0

    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IpcMsgServer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 59
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Landroid/os/Messenger;

    new-instance v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    .line 54
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V
    .locals 5
    .param p0, "ipcMsg"    # Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpcMsgServer removeClient "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->pid:I

    iget v3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onProcessRemove(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v0

    return-void

    .line 116
    .end local p0    # "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;Landroid/os/Messenger;)V
    .locals 10
    .param p0, "ipcMsg"    # Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    .param p1, "replyTo"    # Landroid/os/Messenger;

    const-class v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpcMsgServer addClient "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->pid:I

    iget v6, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    iget-object v7, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->appId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->clientId:Ljava/lang/String;

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->onProcessAdd(IILjava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 110
    .end local p0    # "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    .end local p1    # "replyTo":Landroid/os/Messenger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p0, "biz"    # Ljava/lang/String;
    .param p1, "bizHandler"    # Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IpcMsgServer registerBizHandler biz = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p0, "replyTo"    # Landroid/os/Messenger;
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "bizMsg"    # Landroid/os/Message;

    .line 89
    if-nez p0, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 94
    .local v2, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v2, v0

    iput-object p1, v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->biz:Ljava/lang/String;

    .line 95
    iput-object p2, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->bizMsg:Landroid/os/Message;

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .line 98
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->marshall(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)[B

    move-result-object v4

    const-string v5, "IpcMsg"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v1, "transMsg":Landroid/os/Message;
    move-object v1, v0

    const/4 v4, 0x1

    iput v4, v0, Landroid/os/Message;->what:I

    .line 102
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 104
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IpcMsgServer send error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LiteProcess"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    return-void
.end method

.method public static unregisterReqBizHandler(Ljava/lang/String;)V
    .locals 3
    .param p0, "biz"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgServer unregisterBizHandler"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgServer onBind"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 43
    invoke-super {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcService;->onCreate()V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgServer onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IpcMsgServer must be in main process. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 48
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->b()V

    .line 52
    return-void
.end method

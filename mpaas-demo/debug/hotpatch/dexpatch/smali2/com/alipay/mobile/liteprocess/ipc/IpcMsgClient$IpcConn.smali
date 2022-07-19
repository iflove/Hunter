.class Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$IpcConn;
.super Ljava/lang/Object;
.source "IpcMsgClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IpcConn"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgClient onServiceConnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez p2, :cond_0

    .line 163
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->rebind()V

    .line 164
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 168
    new-instance v0, Landroid/os/Messenger;

    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->e()Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 169
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->setBind(Z)V

    .line 171
    new-instance v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 172
    .local v2, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v2, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->pid:I

    .line 173
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    .line 174
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->clientId:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "TARGETAPPID"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 177
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iput-object v3, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->appId:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "LiteProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ipcMsg.appId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v4, "ClientBinder"

    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b()Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    const-string v4, "IpcMsg"

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->marshall(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 186
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 187
    .local v1, "transMsg":Landroid/os/Message;
    move-object v1, v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->what:I

    .line 188
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b()Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 189
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 190
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->c()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v1    # "transMsg":Landroid/os/Message;
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LiteProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IpcMsgClient conn send error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-class v1, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;

    monitor-enter v1

    .line 197
    :try_start_1
    const-class v4, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 205
    const-string v0, "LiteProcess"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IpcMsgClient onServiceDisconnected"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 207
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 208
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->setBind(Z)V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->d()Lcom/alipay/mobile/liteprocess/ipc/IpcClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcClient;->rebind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v1

    .line 211
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

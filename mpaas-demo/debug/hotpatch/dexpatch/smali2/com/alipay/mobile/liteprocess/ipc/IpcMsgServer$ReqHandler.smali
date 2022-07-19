.class Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;
.super Landroid/os/Handler;
.source "IpcMsgServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReqHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 127
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyTo"    # Landroid/os/Messenger;

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgServer ReqHandler handleConn"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "ClientBinder"

    invoke-static {p1, v0}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 154
    .local v3, "clientBinder":Landroid/os/IBinder;
    move-object v3, v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    const-string v0, "IpcMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v2

    .line 159
    .local v4, "bytes":[B
    move-object v4, v0

    if-nez v0, :cond_1

    .line 160
    return-void

    .line 162
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->unmarshall([B)Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    move-result-object v0

    .line 163
    .local v2, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "IpcMsgServer ipcMsg == null"

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_2
    invoke-static {v2, p2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;Landroid/os/Messenger;)V

    .line 169
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "IpcMsgServer handleConn clientBinder linkToDeath"

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;

    invoke-direct {v0, p0, v3, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;-><init>(Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;Landroid/os/IBinder;Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IpcMsgServer handleConn linkToDeath error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    return-void

    .line 155
    .end local v2    # "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    .end local v4    # "bytes":[B
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IpcMsgServer handleConn clientBinder = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static b(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "replyTo"    # Landroid/os/Messenger;

    .line 186
    const-string v0, "IpcMsg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 187
    .local v2, "bytes":[B
    move-object v2, v0

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->unmarshall([B)Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    move-result-object v0

    move-object v3, v1

    .line 191
    .local v3, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v3, v0

    const-string v4, "LiteProcess"

    if-nez v0, :cond_1

    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "IpcMsgServer ipcMsg == null"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 195
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->biz:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    move-object v5, v1

    .line 196
    .local v5, "bizHandler":Landroid/os/Handler;
    move-object v5, v0

    if-nez v0, :cond_2

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "IpcMsgServer bizHandler == null biz = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->biz:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_2
    iget-object v0, v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->bizMsg:Landroid/os/Message;

    .line 202
    .local v1, "bizMsg":Landroid/os/Message;
    move-object v1, v0

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 203
    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "transMsg"    # Landroid/os/Message;

    .line 132
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    const-string v3, "IpcMsgServer bundle == null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;->b(Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;->a(Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 141
    return-void
.end method

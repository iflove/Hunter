.class Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;
.super Landroid/os/Handler;
.source "IpcMsgClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgerHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 221
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    return-void
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 248
    const-string v0, "IpcMsg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 249
    .local v2, "bytes":[B
    move-object v2, v0

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->unmarshall([B)Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    move-result-object v0

    move-object v3, v1

    .line 253
    .local v3, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v3, v0

    const-string v4, "LiteProcess"

    if-nez v0, :cond_1

    .line 254
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "IpcMsgClient ipcMsg == null"

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void

    .line 257
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->biz:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 258
    .local v1, "bizHandler":Landroid/os/Handler;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "IpcMsgClient bizHandler == null"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 262
    :cond_2
    iget-object v0, v3, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->bizMsg:Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "transMsg"    # Landroid/os/Message;

    .line 228
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LiteProcess"

    const-string v3, "IpcMsgClient bundle == null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$MsgerHandler;->a(Landroid/os/Bundle;)V

    .line 243
    :goto_0
    return-void
.end method

.class final Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;
.super Ljava/lang/Object;
.source "IpcMsgClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Message;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 99
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->waitIfNeeded()V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->a()V

    .line 102
    new-instance v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 103
    .local v2, "ipcMsg":Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;
    move-object v2, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->pid:I

    .line 104
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->lpid:I

    .line 105
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->clientId:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->biz:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient$1;->b:Landroid/os/Message;

    iput-object v0, v2, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->bizMsg:Landroid/os/Message;

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v3, "IpcMsg"

    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;->marshall(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 113
    .local v1, "transMsg":Landroid/os/Message;
    move-object v1, v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 114
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->b()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 115
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->c()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "transMsg":Landroid/os/Message;
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpcMsgClient send error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiteProcess"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

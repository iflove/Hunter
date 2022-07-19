.class Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;
.super Ljava/lang/Object;
.source "IpcMsgServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;->a(Landroid/os/Bundle;Landroid/os/Messenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

.field final synthetic c:Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;Landroid/os/IBinder;Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;->c:Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;->b:Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LiteProcess"

    const-string v2, "IpcMsgServer handleConn clientBinder binderDied"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer$ReqHandler$1;->b:Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->a(Lcom/alipay/mobile/liteprocess/ipc/IpcMsg;)V

    .line 178
    return-void
.end method

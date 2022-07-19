.class final Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$4;
.super Ljava/lang/Object;
.source "LiteProcessClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 593
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    const/16 v2, 0xf

    iput v2, v0, Landroid/os/Message;->what:I

    .line 594
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 595
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 596
    const-string v0, "LiteProcess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 598
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v2, "applog"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 599
    return-void
.end method

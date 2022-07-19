.class Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;
.super Ljava/lang/Object;
.source "FgBgMonitorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    .line 441
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->mResult:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->access$1002(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 446
    iget-object v1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->mResultReceived:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->access$1102(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;Z)Z

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1$1;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    .line 358
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 363
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 369
    .local v0, "mainHandler":Landroid/os/Handler;
    move-object v0, v1

    new-instance v2, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$1;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    const/4 v2, 0x1

    # invokes: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$300(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;Z)V

    .line 383
    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$2;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

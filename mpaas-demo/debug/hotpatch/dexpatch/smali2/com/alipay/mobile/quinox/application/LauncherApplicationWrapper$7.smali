.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->prepare(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;

.field final synthetic val$preInstall:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;ZLandroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 1525
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->val$preInstall:Z

    iput-object p3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1528
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadFuture:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$800(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const-string v1, "LauncherApplication"

    if-eqz v0, :cond_0

    .line 1530
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadFuture:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$800(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    goto :goto_0

    .line 1531
    :catchall_0
    move-exception v0

    .line 1532
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1536
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    const-string v0, "internalPrepare started."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->val$preInstall:Z

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPrepare(Z)V
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$900(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1542
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V

    .line 1543
    nop

    .line 1545
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$7;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1552
    return-void

    .line 1550
    :catchall_1
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 1542
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V

    throw v1
.end method

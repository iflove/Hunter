.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handlePendingOnInternalPrepare(JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 1551
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1555
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    goto :goto_0

    .line 1556
    :catchall_0
    move-exception v0

    .line 1559
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "StartupSafeguard"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1600(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    const-string v0, "handlePendingOnInternalPrepare after 1min and kill self."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 1564
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->onExit()V

    .line 1566
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1567
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 1569
    :cond_0
    const-string v0, "handlePendingOnInternalPrepare after 1min and not pending."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    return-void
.end method

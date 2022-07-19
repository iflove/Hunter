.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setInternalPreparePending(Z)V
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

    .line 1454
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "StartupSafeguard"

    .line 1457
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1458
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$800(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 1459
    .local v4, "lastStackTrace":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    return-void

    .line 1462
    :cond_0
    const/4 v1, 0x0

    .line 1465
    .local v1, "waitCount":I
    :cond_1
    :try_start_0
    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->u:J
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1200()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    goto :goto_0

    .line 1466
    :catchall_0
    move-exception v2

    .line 1467
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1470
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # invokes: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h()V
    invoke-static {v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1300(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    .line 1472
    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1473
    return-void

    .line 1476
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$800(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v5

    .line 1477
    .local v2, "currentStackTrace":Ljava/lang/String;
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1478
    return-void

    .line 1480
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1483
    :cond_4
    move-object v4, v2

    .line 1484
    const/4 v1, 0x0

    .line 1486
    :goto_1
    const/4 v5, 0x3

    if-lt v1, v5, :cond_1

    .line 1491
    .end local v2    # "currentStackTrace":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "androidx.multidex.MultiDex.install"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1492
    const-string v2, "End internalPrepare_pending_monitor with multiDex, no report."

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void

    .line 1495
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "End internalPrepare_pending_monitor, count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # --operator for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I
    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1406(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->w:J
    invoke-static {v5}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1500(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handlePendingOnInternalPrepare(JILjava/lang/String;)V

    .line 1498
    .end local v1    # "waitCount":I
    .end local v4    # "lastStackTrace":Ljava/lang/String;
    :cond_6
    return-void
.end method

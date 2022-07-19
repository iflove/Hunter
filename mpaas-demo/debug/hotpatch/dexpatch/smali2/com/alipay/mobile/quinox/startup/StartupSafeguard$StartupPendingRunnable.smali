.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupPendingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

.field timeOut:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .param p2, "x1"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    .line 411
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 417
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$400(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "startup_pending_monitor: isApplicationInBackground="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackground()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " didOnResumeBefore="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->didOnResumeBefore:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " sAlive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->sAlive:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StartupSafeguard"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackground()Z

    move-result v0

    const-string v4, "End startup_pending_monitor, count="

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->didOnResumeBefore:Z

    if-eqz v0, :cond_8

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # --operator for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I
    invoke-static {v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$506(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", App is in background, no handle no report."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 427
    .local v5, "params":Ljava/util/Map;
    move-object v5, v0

    iget-object v6, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z
    invoke-static {v6}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$600(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bootFinish"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$700(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$700(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "finalClassName"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v4

    .line 433
    .local v6, "stack":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    const-string v0, "stackFrame"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_1
    const-string v0, "fg"

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInForeground()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v0, "bg"

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackground()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    nop

    .end local v6    # "stack":Ljava/lang/String;
    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 439
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v3, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->getThreadsStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v6, "threadsTrace":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    const-string v0, "threadsTrace"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$800(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v0

    move-object v2, v4

    .line 448
    .local v2, "currentStackTrace":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    const-string v0, "internalStack"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->p:J
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J

    move-result-wide v7

    sget-wide v9, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processStartupTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v0, v7, v9

    if-gtz v0, :cond_7

    .line 455
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupData()Landroid/net/Uri;

    move-result-object v0

    move-object v7, v4

    .line 456
    .local v7, "startupData":Landroid/net/Uri;
    move-object v7, v0

    if-eqz v0, :cond_4

    .line 457
    const-string v0, "startupData"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    .line 460
    .local v4, "reasonMap":Ljava/util/Map;
    move-object v4, v0

    if-eqz v0, :cond_7

    .line 461
    const-string v0, "RecordType"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    .local v0, "recordType":Ljava/lang/String;
    const-string v8, "ActionName"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 463
    .local v8, "actionName":Ljava/lang/String;
    const-string v9, "ComponentName"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 464
    .local v9, "componentName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 465
    const-string v10, "startupRecordType"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 468
    const-string v10, "startupActionName"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 471
    const-string v10, "startupComponentName"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    .end local v0    # "recordType":Ljava/lang/String;
    .end local v4    # "reasonMap":Ljava/util/Map;
    .end local v7    # "startupData":Landroid/net/Uri;
    .end local v8    # "actionName":Ljava/lang/String;
    .end local v9    # "componentName":Ljava/lang/String;
    :cond_7
    goto :goto_1

    .line 475
    :catchall_1
    move-exception v0

    .line 476
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$900(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->m:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1000(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BIZ_FRAME"

    invoke-static {v4, v0, v3, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 481
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->logAllThreadsTraces()V

    .line 482
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 483
    return-void

    .line 485
    .end local v2    # "currentStackTrace":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/Map;
    .end local v6    # "threadsTrace":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # --operator for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$506(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iget v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->timeOut:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handlePendingOnStartup(I)V

    .line 488
    :cond_9
    return-void
.end method

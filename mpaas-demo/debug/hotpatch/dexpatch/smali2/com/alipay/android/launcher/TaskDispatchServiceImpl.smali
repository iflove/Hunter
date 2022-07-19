.class public Lcom/alipay/android/launcher/TaskDispatchServiceImpl;
.super Lcom/alipay/android/launcher/TaskDispatchService;
.source "TaskDispatchServiceImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/alipay/android/launcher/TaskDispatchService;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    .line 108
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 109
    invoke-interface {v2}, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;->onScanCameraFinish()V

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    monitor-exit v0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyScanApp(I)V
    .locals 6
    .param p1, "state"    # I

    .line 72
    const/16 v0, 0x64

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 100
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 92
    invoke-interface {v3}, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;->onExitScan()V

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v1

    .line 83
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 84
    invoke-interface {v3}, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;->onScanCameraFinish()V

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v1

    .line 75
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 76
    invoke-interface {v3}, Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;->onEnterScan()V

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    iget-object v2, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->c:Landroid/os/Handler;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public notifyStartApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 52
    const-string v0, "10000007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "mylog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saoyisao notifed start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    if-nez p2, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;

    .line 58
    invoke-interface {v2, p1}, Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;->onBeforeStartApp(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    monitor-enter v0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;

    .line 64
    invoke-interface {v2, p1}, Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;->onAfterStartApp(Ljava/lang/String;)V

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 68
    :cond_4
    return-void
.end method

.method public registerScanAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 38
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStartAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;

    .line 24
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterScanAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/android/launcher/TaskDispatchService$ScanAppCallback;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterStartAppCallback(Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/android/launcher/TaskDispatchService$StartAppCallback;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TaskDispatchServiceImpl;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

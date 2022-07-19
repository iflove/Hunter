.class public Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;
.super Ljava/lang/Object;
.source "H5EventDispatchHandler.java"


# static fields
.field private static asyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAsyncHandler()Landroid/os/Handler;
    .locals 4

    const-class v0, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->asyncHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "H5EvenDispatchHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 17
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->asyncHandler:Landroid/os/Handler;

    .line 20
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->asyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

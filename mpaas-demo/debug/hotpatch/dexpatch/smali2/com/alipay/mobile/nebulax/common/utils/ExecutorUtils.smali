.class public Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"


# static fields
.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 49
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeOnMain(Ljava/lang/Runnable;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public static runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 42
    :goto_0
    return-void
.end method

.method public static runOnMain(Ljava/lang/Runnable;)V
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :goto_0
    return-void
.end method

.method public static runOnMain(Ljava/lang/Runnable;J)V
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method

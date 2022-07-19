.class public Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private isBackground:Z

.field private mVisibleActivityCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->mVisibleActivityCount:I

    .line 19
    iput-boolean v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->isBackground:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 46
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 41
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->getTianyanContext()Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|null|2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanContext;->onFrameworkActivityResume(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    iget v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->mVisibleActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->mVisibleActivityCount:I

    .line 29
    iget-boolean v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->isBackground:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->isBackground:Z

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ClientEvent_GotoForeground"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->getTianyanContext()Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanContext;->onFrameworkBroughtToForeground()V

    .line 34
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    const-string v1, "onActivityStarted"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorForeground(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->reportClientLaunch()V

    .line 37
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 50
    iget v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->mVisibleActivityCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->mVisibleActivityCount:I

    .line 51
    if-gtz v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lcom/mpaas/mas/adapter/api/MPActivityLifecycleCallbacks;->isBackground:Z

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "gotoBackground"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->getTianyanContext()Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/tianyan/mobilesdk/TianyanContext;->onFrameworkActivityUserLeavehint()V

    .line 56
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v0

    const-string v1, "onActivityStopped"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorBackground(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->uploadAll()V

    .line 60
    :cond_0
    return-void
.end method

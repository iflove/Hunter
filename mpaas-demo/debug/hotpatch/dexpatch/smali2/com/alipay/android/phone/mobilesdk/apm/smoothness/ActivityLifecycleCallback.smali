.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 22
    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 26
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ActivityLifecycleCallback construct param is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c:Z

    .line 30
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 39
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 36
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 33
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 42
    return-void
.end method

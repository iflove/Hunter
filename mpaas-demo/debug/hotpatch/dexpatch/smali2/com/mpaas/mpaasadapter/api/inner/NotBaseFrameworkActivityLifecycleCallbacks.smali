.class public Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

.field protected mActivityHelperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/alipay/mobile/framework/app/ui/ActivityHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    if-nez p1, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 63
    if-nez p1, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    .line 70
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 52
    if-nez p1, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    .line 59
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 85
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    :cond_1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 41
    if-nez p1, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    .line 48
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->mActivityHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/inner/NotBaseFrameworkActivityLifecycleCallbacks;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStop()V

    .line 81
    :cond_1
    return-void
.end method

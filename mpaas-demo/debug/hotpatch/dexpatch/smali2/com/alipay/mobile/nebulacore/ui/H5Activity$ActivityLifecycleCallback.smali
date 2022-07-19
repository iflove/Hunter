.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityLifecycleCallback"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;->a:Ljava/lang/String;

    .line 1393
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;->b:Ljava/lang/ref/WeakReference;

    .line 1394
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1399
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1440
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1425
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1408
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResumed  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v1, 0x0

    .line 1411
    .local v1, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b:Z

    if-eqz v0, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1413
    .local v0, "topActivityRef":Ljava/lang/ref/WeakReference;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/ref/WeakReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    const-string v2, "onActivityResumed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;)V

    .line 1420
    .end local v0    # "topActivityRef":Ljava/lang/ref/WeakReference;
    .end local v1    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 1435
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1404
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1430
    return-void
.end method

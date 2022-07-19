.class Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;
.super Ljava/lang/Object;
.source "LoadingPageManagerImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 107
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 80
    .local v1, "lastResumed":Landroid/app/Activity;
    move-object v1, v0

    if-eq v0, p1, :cond_0

    .line 81
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is coming, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " will stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->setHasLostFocus(Z)V

    .line 86
    .end local v1    # "lastResumed":Landroid/app/Activity;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->access$002(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 97
    return-void
.end method

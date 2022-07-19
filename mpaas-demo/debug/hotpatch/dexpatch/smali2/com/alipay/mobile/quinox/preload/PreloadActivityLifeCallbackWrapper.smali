.class public Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
.super Ljava/lang/Object;
.source "PreloadActivityLifeCallbackWrapper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 44
    return-void
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 114
    instance-of v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;->isPreloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static findAndRemoveWrapper(Landroid/app/Application$ActivityLifecycleCallbacks;)Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
    .locals 5
    .param p0, "callbacks"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 29
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a:Ljava/util/List;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    move-object v3, v2

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;

    .line 33
    .local v3, "wrapper":Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
    move-object v3, v4

    iget-object v4, v4, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 35
    monitor-exit v0

    return-object v3

    .line 37
    .end local v3    # "wrapper":Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
    :cond_0
    goto :goto_0

    .line 38
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v0

    .line 39
    return-object v2

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newWrapper(Landroid/app/Application$ActivityLifecycleCallbacks;)Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
    .locals 3
    .param p0, "callbacks"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 21
    new-instance v0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;-><init>(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 22
    .local v0, "wrapper":Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a:Ljava/util/List;

    monitor-enter v1

    .line 23
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v1

    .line 25
    return-object v0

    .line 24
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivityCreated. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 106
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivityDestroyed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 111
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 79
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivityPaused. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivityResumed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 97
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivitySaveInstanceState. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ignore preloading onActivityStarted. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;->isPreloadBeginWhenOnStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "make up onActivityCreated for PreloadableActivity. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 88
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore preloading onActivityStopped. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadActivityLifeCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadActivityLifeCallbackWrapper;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

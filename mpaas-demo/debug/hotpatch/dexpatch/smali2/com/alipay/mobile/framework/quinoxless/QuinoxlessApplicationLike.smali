.class public abstract Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;
.super Landroid/content/ContextWrapper;
.source "QuinoxlessApplicationLike.java"

# interfaces
.implements Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/alipay/dexpatch/m/ProcessInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->b:Lcom/alipay/dexpatch/m/ProcessInfo;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/alipay/dexpatch/m/ProcessInfo;

    invoke-direct {v0, p0}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->b:Lcom/alipay/dexpatch/m/ProcessInfo;

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    return-object v0
.end method

.method public final getProcessName()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a()V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->b:Lcom/alipay/dexpatch/m/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/dexpatch/m/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isMainProcess()Z
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a()V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->b:Lcom/alipay/dexpatch/m/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 52
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 32
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 47
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 42
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 37
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 64
    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 56
    return-void
.end method

.method final setApp(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    .line 27
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplicationLike;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 60
    return-void
.end method

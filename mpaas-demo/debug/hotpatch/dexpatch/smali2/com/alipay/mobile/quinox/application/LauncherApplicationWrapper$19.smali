.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->postInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 3662
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3665
    const-string v0, "mytest"

    const-string v1, "application postinit start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mTarget:Ljava/lang/Object;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1400(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "loadServices"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3673
    nop

    .line 3674
    const-string v1, "application postinit step 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mObservable:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$InitObserver;->countObservers()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentRestoreState(Z)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1600(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V

    .line 3680
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->launcherApplicationAgentPostInit()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1700(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    .line 3682
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStopJitState(I)V

    .line 3685
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3686
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mHotPatch:Lcom/alipay/mobile/quinox/hotpath/b;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1800(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/hotpath/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/hotpath/b;->a()V

    .line 3690
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3691
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/dexpatch/compat/DexPatchBridge;->setOuterFrameworkInited(Landroid/content/Context;)V

    .line 3696
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 3697
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuClearException(Landroid/content/Context;Ljava/lang/String;)V

    .line 3700
    :cond_3
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    if-eqz v0, :cond_4

    .line 3702
    :try_start_1
    const-string v0, "com.alipay.mobile.framework.app.ui.ActivityHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v2

    .line 3703
    .local v1, "clazz":Ljava/lang/Class;
    const-string v4, "startFrameworkPipeLine"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3704
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3707
    nop

    .end local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 3705
    :catchall_0
    move-exception v0

    .line 3711
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mProcessInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3712
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$19;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getMainCurrentLaunchTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuRecordNewLaunchTime(Landroid/content/Context;J)V

    .line 3714
    :cond_5
    return-void

    .line 3669
    :catchall_1
    move-exception v1

    .line 3670
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LauncherApplication"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3671
    const-string v2, "application postinit error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3672
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

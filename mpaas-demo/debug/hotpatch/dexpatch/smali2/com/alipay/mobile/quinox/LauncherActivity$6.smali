.class Lcom/alipay/mobile/quinox/LauncherActivity$6;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 709
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "LauncherActivity"

    .line 712
    sget-boolean v1, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z
    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$200(Lcom/alipay/mobile/quinox/LauncherActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # setter for: Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$202(Lcom/alipay/mobile/quinox/LauncherActivity;Z)Z

    .line 716
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinish()V

    .line 722
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v1

    const-string v3, "enter_main_thread"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 723
    const-string v1, "time_startup"

    const-string v3, "pre_doStartEntry"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$300(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getTarget()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 726
    .local v4, "applicationAgent":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getMicroApplicationContext"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 727
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 729
    .local v1, "microContext":Ljava/lang/Object;
    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;
    invoke-static {v5}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$500(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 730
    const-string v7, "attachMicroApplicationContext"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v7, v3

    .line 731
    .local v7, "attachMethod":Ljava/lang/reflect/Method;
    move-object v7, v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 732
    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;
    invoke-static {v5}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$500(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v6

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getTopActivity"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 735
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 736
    .local v5, "topActivityReference":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 737
    .local v8, "topActivity":Landroid/app/Activity;
    instance-of v9, v5, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    .line 738
    move-object v9, v5

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 739
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_1

    .line 740
    move-object v9, v3

    check-cast v9, Landroid/app/Activity;

    move-object v8, v9

    .line 745
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez v8, :cond_2

    .line 746
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v9, "updateActivity"

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Landroid/app/Activity;

    aput-object v11, v10, v6

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 747
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    aput-object v9, v2, v6

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v1    # "microContext":Ljava/lang/Object;
    .end local v4    # "applicationAgent":Ljava/lang/Object;
    .end local v5    # "topActivityReference":Ljava/lang/Object;
    .end local v7    # "attachMethod":Ljava/lang/reflect/Method;
    .end local v8    # "topActivity":Landroid/app/Activity;
    :cond_2
    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "LauncherActivity.postInit(): boot finish, go to start entry app."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->postInit()V

    .line 755
    sget-boolean v0, Lcom/alipay/mobile/quinox/LauncherApplication;->NEED_SYNC:Z

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$6;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$300(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->postInit()V

    .line 758
    :cond_3
    return-void
.end method

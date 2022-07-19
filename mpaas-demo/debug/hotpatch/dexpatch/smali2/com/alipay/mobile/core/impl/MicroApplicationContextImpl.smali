.class public Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/MicroApplicationContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$APGenericProgressDialog;,
        Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$SafetyRunnable;
    }
.end annotation


# static fields
.field public static final KEY_STATE_FLAG:Ljava/lang/String; = "@@"

.field public static final MICROAPPLICATIONCONTEXTIMPL_WORKTHREAD:Ljava/lang/String; = "MicroApplicationContextImpl_WorkThread"

.field public static final SHARE_PREF_STATES:Ljava/lang/String; = "_share_tmp_"

.field static final TAG:Ljava/lang/String; = "MicroAppContextImpl"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

.field private e:Landroid/app/Application;

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/core/ServiceManager;

.field private i:Lcom/alipay/mobile/core/ApplicationManager;

.field private j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

.field private k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

.field private l:Lcom/alipay/mobile/framework/loading/LoadingPageManager;

.field private m:Lcom/alipay/mobile/core/init/BootLoader;

.field private final n:Lcom/alipay/mobile/core/impl/AppExitHelper;

.field private final o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

.field private p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/reflect/Method;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;

    .line 193
    new-instance v1, Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/core/impl/AppExitHelper;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 198
    new-instance v1, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    .line 1626
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 3

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->r:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v2, v1

    .line 1640
    .local v2, "context":Landroid/content/Context;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1641
    return-object v2

    .line 1644
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "activeActivity"    # Landroid/app/Activity;

    .line 382
    move-object v0, p1

    .line 383
    .local v0, "appRet":Lcom/alipay/mobile/framework/app/MicroApplication;
    instance-of v1, p1, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-eqz v1, :cond_4

    .line 384
    instance-of v1, p2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 385
    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto :goto_2

    .line 386
    :cond_0
    instance-of v1, p2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    .line 387
    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto :goto_2

    .line 389
    :cond_1
    move-object v1, p1

    .local v1, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    const/4 v2, 0x0

    .line 391
    :goto_0
    instance-of v3, v1, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getSourceId()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v2, "sourceAppId":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    move-object v1, p1

    .line 395
    goto :goto_1

    .line 397
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 399
    .end local v2    # "sourceAppId":Ljava/lang/String;
    goto :goto_0

    .line 401
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 402
    move-object v0, v1

    .line 407
    .end local v1    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static a(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2
    .param p0, "pair"    # Landroid/util/Pair;

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 881
    const-string v1, "Pair(first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1500
    if-nez p1, :cond_0

    .line 1501
    return-void

    .line 1503
    :cond_0
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 458
    const-string v0, "MicroAppContextImpl"

    if-eqz p0, :cond_1

    .line 459
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 460
    .local v2, "mExtras":Landroid/os/Bundle;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    const-string v0, "mExtras"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    .line 464
    :cond_0
    const-string/jumbo v1, "moveExtras(mExtras == null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v2    # "mExtras":Landroid/os/Bundle;
    return-void

    .line 467
    :cond_1
    const-string/jumbo v1, "moveExtras(intent == null)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 8
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    const-string v0, ")"

    const-string v1, ", code="

    const-string v2, ", intent="

    const-string v3, "MicroAppContextImpl"

    .line 630
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v5, 0x0

    .line 631
    .local v5, "activeActivity":Landroid/app/Activity;
    move-object v5, v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 632
    invoke-direct {p0, p1, v5}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object p1

    .line 633
    const/high16 v4, 0x40000

    invoke-virtual {p3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    invoke-static {p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 635
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app_id"

    invoke-virtual {p3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 638
    :try_start_0
    instance-of v4, v5, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v4, :cond_0

    instance-of v4, v5, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v4, :cond_0

    .line 639
    new-instance v4, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startActivityForResult(app="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    :cond_0
    if-eqz p2, :cond_1

    instance-of v4, v5, Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_1

    .line 644
    move-object v4, v5

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void

    .line 646
    :cond_1
    invoke-virtual {v5, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-void

    .line 648
    :catch_0
    move-exception v4

    .line 649
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Start ActivityShell."

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 652
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to startActivityForResult(app="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 656
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 10
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    const-string v0, ")"

    const-string v1, ", code="

    const-string v2, ", className="

    const-string v3, "MicroAppContextImpl"

    .line 494
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v6, v5

    .line 495
    .local v6, "activeActivity":Landroid/app/Activity;
    move-object v6, v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 496
    invoke-direct {p0, p1, v6}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object p1

    .line 497
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v4, "componentName":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v5, "intent":Landroid/content/Intent;
    move-object v5, v7

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 500
    const/high16 v7, 0x40000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    invoke-static {v5}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 502
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 505
    :try_start_0
    instance-of v7, v6, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v7, :cond_0

    instance-of v7, v6, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v7, :cond_0

    .line 506
    new-instance v7, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startActivityForResult(app="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    :cond_0
    if-eqz p2, :cond_1

    instance-of v7, v6, Landroidx/fragment/app/FragmentActivity;

    if-eqz v7, :cond_1

    .line 512
    move-object v7, v6

    check-cast v7, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7, p2, v5, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void

    .line 514
    :cond_1
    invoke-virtual {v6, v5, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-void

    .line 516
    :catch_0
    move-exception v7

    .line 517
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Start ActivityShell."

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 520
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to startActivityForResult(app="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 524
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 24
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 889
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startApp(): [sourceAppId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [targetAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "MicroAppContextImpl"

    invoke-static {v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    move-object/from16 v11, p3

    invoke-virtual {v7, v11}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 891
    .local v12, "startParamsCopy":Landroid/os/Bundle;
    const/4 v13, 0x5

    new-array v0, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v0, v14

    const/4 v15, 0x1

    aput-object v9, v0, v15

    const/16 v16, 0x2

    aput-object v12, v0, v16

    const/16 v17, 0x3

    aput-object p5, v0, v17

    const/16 v18, 0x4

    aput-object p4, v0, v18

    move-object v6, v0

    .line 892
    .local v6, "args":[Ljava/lang/Object;
    const-string/jumbo v5, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v5, v7, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 893
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    .line 894
    .local v4, "rejectAdvices":Ljava/util/Set;
    invoke-static {v5, v7, v6, v4}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v3

    .line 895
    .local v3, "aroundResult":Landroid/util/Pair;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startApp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onExecutionAround.aroundResult=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v7, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 900
    .local v2, "newStartParams":Landroid/os/Bundle;
    const-string v0, "REALLY_STARTAPP"

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    iget-object v13, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    .line 933
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    goto :goto_0

    .line 934
    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 935
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    const-string v10, "2001"

    invoke-virtual {v0, v9, v10, v4}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleAppStartupReject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 938
    iget-object v0, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    invoke-virtual {v0, v1, v9, v10}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->onStartAppReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_3

    .line 903
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 906
    goto :goto_2

    .line 904
    :catchall_1
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 905
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    .end local v2    # "newStartParams":Landroid/os/Bundle;
    .local v19, "newStartParams":Landroid/os/Bundle;
    move-object/from16 v2, p1

    move-object/from16 v20, v3

    .end local v3    # "aroundResult":Landroid/util/Pair;
    .local v20, "aroundResult":Landroid/util/Pair;
    move-object/from16 v3, p2

    move-object/from16 v21, v4

    .end local v4    # "rejectAdvices":Ljava/util/Set;
    .local v21, "rejectAdvices":Ljava/util/Set;
    move-object/from16 v4, v19

    move-object/from16 v22, v5

    move-object/from16 v5, p4

    move-object/from16 v23, v6

    .end local v6    # "args":[Ljava/lang/Object;
    .local v23, "args":[Ljava/lang/Object;
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Runnable;

    move-result-object v0

    .line 909
    .local v0, "startAppRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v2, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 911
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "schemeInnerSource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v13

    .line 912
    .local v3, "schemeInnerSource":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "INSTANT_STARTAPP"

    if-eqz v2, :cond_3

    .line 914
    const-string v2, "ig_instantStartAppSourceAppid"

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "sourceAppIds":Ljava/lang/String;
    invoke-virtual {v12, v4, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 916
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 917
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 919
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getWorkThreadHandle()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 921
    .end local v2    # "sourceAppIds":Ljava/lang/String;
    goto :goto_3

    .line 922
    :cond_3
    const-string v2, "ig_instantStartApp"

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "instantStartAppList":Ljava/lang/String;
    invoke-virtual {v12, v4, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 924
    const-string v4, "all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 925
    :cond_4
    const-string v4, "instantStartApp, run directly"

    invoke-static {v10, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 928
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getWorkThreadHandle()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    .end local v0    # "startAppRunnable":Ljava/lang/Runnable;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "instantStartAppList":Ljava/lang/String;
    .end local v3    # "schemeInnerSource":Ljava/lang/String;
    nop

    .line 940
    :goto_3
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v8, v0, v14

    aput-object v9, v0, v15

    move-object/from16 v1, v19

    .end local v19    # "newStartParams":Landroid/os/Bundle;
    .local v1, "newStartParams":Landroid/os/Bundle;
    invoke-virtual {v7, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v16

    aput-object p5, v0, v17

    aput-object p4, v0, v18

    .line 941
    .end local v23    # "args":[Ljava/lang/Object;
    .local v0, "args":[Ljava/lang/Object;
    move-object/from16 v2, v22

    invoke-static {v2, v7, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 942
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "preload"    # Z

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;-><init>()V

    .line 301
    .local v1, "serviceManagerImpl":Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;
    move-object v1, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 302
    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    .line 305
    .end local v1    # "serviceManagerImpl":Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;-><init>()V

    .line 310
    .local v1, "applicationManager":Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;
    move-object v1, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 311
    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    const-class v2, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 315
    .end local v1    # "applicationManager":Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    if-nez v0, :cond_4

    .line 333
    new-instance v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    if-nez v0, :cond_5

    .line 337
    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    .line 339
    :cond_5
    if-eqz p1, :cond_6

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->preload()V

    return-void

    .line 345
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string/jumbo v1, "t_mainit1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "time_startup_sub"

    const-string/jumbo v1, "t_bootload1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->load()V

    .line 349
    const-string v0, "MicroAppContextImpl"

    const-string/jumbo v1, "startup : Boot finish (in framework, ga ga ga test)."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Runnable;
    .locals 9
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 992
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$SafetyRunnable;

    new-instance v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    invoke-direct {v0, v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$SafetyRunnable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static b()V
    .locals 2

    .line 1763
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->setupInstrumentation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    return-void

    .line 1764
    :catchall_0
    move-exception v0

    .line 1765
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1767
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 682
    .local v1, "activeActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 683
    const/high16 v0, 0x40000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startExtActivityForResult(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    const-string v2, "MicroAppContextImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 691
    move-object v0, v1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void

    .line 693
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()V

    .line 694
    invoke-virtual {v1, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    :cond_2
    return-void
.end method


# virtual methods
.method public Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 17
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1354
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 1355
    .local v1, "activity":Landroid/app/Activity;
    move-object v9, v0

    .end local v1    # "activity":Landroid/app/Activity;
    .local v9, "activity":Landroid/app/Activity;
    const-string v1, "MicroAppContextImpl"

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "mActiveActivity == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1357
    :cond_0
    instance-of v0, v9, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_1

    .line 1361
    move-object v10, v9

    check-cast v10, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-interface/range {v10 .. v16}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1366
    :cond_1
    const-string v0, "Alert mActiveActivity is not ActivityResponsable, do it self"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    new-instance v10, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1397
    return-void
.end method

.method public Toast(Ljava/lang/String;I)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I

    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "needRetry":Z
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1296
    .local v3, "activeActivity":Landroid/app/Activity;
    move-object v3, v1

    const-string v4, "MicroAppContextImpl"

    if-nez v1, :cond_0

    .line 1297
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "mActiveActivity == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1298
    :cond_0
    instance-of v1, v3, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_6

    .line 1299
    const/4 v1, 0x0

    .line 1300
    .local v1, "pointCut":Ljava/lang/String;
    instance-of v5, v3, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v5, :cond_1

    .line 1301
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    goto :goto_0

    .line 1302
    :cond_1
    instance-of v5, v3, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v5, :cond_2

    .line 1303
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.toast(String, int)"

    .line 1306
    :cond_2
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1307
    .local v5, "args":[Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1308
    invoke-static {v1, v3, v5}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 1309
    .local v2, "aroundResult":Landroid/util/Pair;
    move-object v2, v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1310
    :cond_3
    instance-of v6, v3, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v6, :cond_4

    .line 1311
    move-object v6, v3

    check-cast v6, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v6, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 1313
    :cond_4
    const/4 v0, 0x1

    .line 1316
    :cond_5
    :goto_1
    invoke-static {v1, v3, v5}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1317
    .end local v1    # "pointCut":Ljava/lang/String;
    .end local v2    # "aroundResult":Landroid/util/Pair;
    .end local v5    # "args":[Ljava/lang/Object;
    goto :goto_2

    .line 1318
    :cond_6
    const/4 v0, 0x1

    .line 1322
    :goto_2
    if-eqz v0, :cond_7

    .line 1323
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1346
    :catchall_0
    move-exception v1

    .line 1347
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "single toast"

    invoke-static {v4, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 1348
    :cond_7
    :goto_3
    return-void
.end method

.method public varargs addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 1
    .param p1, "descriptions"    # [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 797
    return-void
.end method

.method public attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "agent"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 230
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachContext("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:Lcom/alipay/mobile/core/impl/AppExitHelper;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/core/impl/AppExitHelper;->init(Landroid/app/Application;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 236
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/alipay/mobile/quinox/ExceptionHandler;->getInstance()Lcom/alipay/mobile/quinox/ExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/ExceptionHandler;->stop()V

    .line 241
    invoke-static {}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->init(Landroid/content/Context;Lcom/alipay/mobile/core/impl/AppExitHelper;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    .line 247
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 248
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    const-string/jumbo v1, "t_maac1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v0, "time_startup_sub"

    const-string/jumbo v1, "t_maac2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Lcom/alipay/mobile/framework/DescriptionManager;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/DescriptionManager;

    .line 252
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "t_mainit1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Lcom/alipay/mobile/core/impl/ActivityAllStoppedCallback;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/core/impl/ActivityAllStoppedCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->setBackgroundCallback(Ljava/lang/Object;)V

    .line 264
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Z)V

    .line 265
    return-void
.end method

.method public background()V
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->background(Landroid/app/Activity;)V

    .line 1264
    return-void
.end method

.method public background(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1268
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppCheckUtil;->frameBackgroundCalled()V

    .line 1275
    :cond_0
    if-nez p1, :cond_1

    .line 1276
    iget-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    .line 1278
    :cond_1
    if-nez p1, :cond_2

    .line 1279
    return-void

    .line 1281
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1283
    invoke-static {p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->sendUserLeaveHintBroadcast(Landroid/app/Activity;)V

    .line 1284
    return-void
.end method

.method public clearState()V
    .locals 1

    .line 1573
    const-string v0, "_share_tmp_"

    invoke-static {v0}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->clearSp(Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public clearTopApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    .line 1534
    .local v1, "targetApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ApplicationManager;->clearTop(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 1537
    :cond_0
    return-void
.end method

.method public clearTopApps()V
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 1529
    return-void
.end method

.method public copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .line 1758
    new-instance v0, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteDescriptionByAppId([Ljava/lang/String;)Z
    .locals 1
    .param p1, "appIds"    # [Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->deleteDescriptionByAppId([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dismissProgressDialog()V
    .locals 4

    .line 1485
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 1486
    .local v1, "activeActivity":Landroid/app/Activity;
    move-object v1, v0

    const-string v2, "MicroAppContextImpl"

    if-nez v0, :cond_0

    .line 1487
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v3, "mActiveActivity == null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1488
    :cond_0
    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_1

    .line 1489
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 1490
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    return-void

    .line 1492
    :cond_1
    const-string v0, "Alert mActiveActivity is not ActivityResponsable, dismissProgressDialog self"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    .line 1497
    return-void
.end method

.method public doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1043
    return-void
.end method

.method public doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 21
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 1054
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doStartApp(): onExecution [sourceAppId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [targetAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    move-object/from16 v11, p3

    invoke-virtual {v8, v11}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 1057
    .local v12, "startParamsCopy":Landroid/os/Bundle;
    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p5, :cond_0

    .line 1058
    new-array v0, v14, [Ljava/lang/Object;

    aput-object v9, v0, v6

    aput-object v10, v0, v7

    invoke-virtual {v8, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v16

    aput-object p4, v0, v15

    move-object v5, v0

    .local v0, "args":[Ljava/lang/Object;
    goto :goto_0

    .line 1060
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_0
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v9, v0, v6

    aput-object v10, v0, v7

    invoke-virtual {v8, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v16

    aput-object p4, v0, v15

    aput-object p5, v0, v14

    move-object v5, v0

    .line 1062
    .local v5, "args":[Ljava/lang/Object;
    :goto_0
    const-string/jumbo v4, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v4, v8, v5}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1063
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 1064
    .local v3, "rejectAdvices":Ljava/util/Set;
    invoke-static {v4, v8, v5, v3}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    const/4 v2, 0x0

    move-object/from16 v17, v2

    .line 1066
    .local v17, "aroundResult":Landroid/util/Pair;
    move-object/from16 v18, v0

    .end local v17    # "aroundResult":Landroid/util/Pair;
    .local v18, "aroundResult":Landroid/util/Pair;
    const-string v13, "REALLY_DOSTARTAPP"

    if-eqz v0, :cond_2

    move-object/from16 v15, v18

    .end local v18    # "aroundResult":Landroid/util/Pair;
    .local v15, "aroundResult":Landroid/util/Pair;
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1114
    :cond_1
    :try_start_0
    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    goto :goto_1

    .line 1115
    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 1116
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    const-string v1, "2003"

    invoke-virtual {v0, v10, v1, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleAppStartupReject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1119
    iget-object v0, v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    invoke-virtual {v0, v2, v10, v1}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->onStartAppReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v3

    move-object v7, v4

    move-object/from16 v20, v5

    const/4 v14, 0x1

    goto/16 :goto_5

    .line 1066
    .end local v15    # "aroundResult":Landroid/util/Pair;
    .restart local v18    # "aroundResult":Landroid/util/Pair;
    :cond_2
    move-object/from16 v15, v18

    .line 1068
    .end local v18    # "aroundResult":Landroid/util/Pair;
    .restart local v15    # "aroundResult":Landroid/util/Pair;
    :goto_2
    iget-object v0, v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v10}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    move-object/from16 v18, v2

    .line 1069
    .local v18, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    if-eqz v0, :cond_4

    .line 1072
    :try_start_1
    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1075
    goto :goto_3

    .line 1073
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1074
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    .end local v3    # "rejectAdvices":Ljava/util/Set;
    .local v19, "rejectAdvices":Ljava/util/Set;
    move-object/from16 v3, p4

    move-object v13, v4

    move-object/from16 v4, p1

    move-object/from16 v20, v5

    .end local v5    # "args":[Ljava/lang/Object;
    .local v20, "args":[Ljava/lang/Object;
    move-object/from16 v5, p2

    const/4 v14, 0x0

    move-object v6, v12

    const/4 v14, 0x1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1094
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 1095
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v2, v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1096
    const-string v2, "ig_isPostIfMain"

    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1097
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object v7, v13

    goto :goto_5

    .line 1099
    :cond_3
    iget-object v1, v8, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    .end local v0    # "r":Ljava/lang/Runnable;
    move-object v7, v13

    goto :goto_5

    .line 1103
    .end local v19    # "rejectAdvices":Ljava/util/Set;
    .end local v20    # "args":[Ljava/lang/Object;
    .restart local v3    # "rejectAdvices":Ljava/util/Set;
    .restart local v5    # "args":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v19, v3

    move-object v7, v4

    move-object/from16 v20, v5

    const/4 v14, 0x1

    .end local v3    # "rejectAdvices":Ljava/util/Set;
    .end local v5    # "args":[Ljava/lang/Object;
    .restart local v19    # "rejectAdvices":Ljava/util/Set;
    .restart local v20    # "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1106
    goto :goto_4

    .line 1104
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1105
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v8, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1112
    .end local v18    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    nop

    .line 1121
    :goto_5
    if-nez p5, :cond_5

    .line 1122
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    aput-object v10, v0, v14

    invoke-virtual {v8, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v16

    const/4 v2, 0x3

    aput-object p4, v0, v2

    .end local v20    # "args":[Ljava/lang/Object;
    .local v0, "args":[Ljava/lang/Object;
    goto :goto_6

    .line 1124
    .end local v0    # "args":[Ljava/lang/Object;
    .restart local v20    # "args":[Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v9, v0, v1

    aput-object v10, v0, v14

    invoke-virtual {v8, v12}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v16

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 1126
    .end local v20    # "args":[Ljava/lang/Object;
    .restart local v0    # "args":[Ljava/lang/Object;
    :goto_6
    invoke-static {v7, v8, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1127
    return-void
.end method

.method public exit()V
    .locals 5

    .line 1219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1220
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1221
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1222
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1223
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v2}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->close()V

    .line 1228
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v2}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 1229
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->finishAllActivities(Landroid/app/Activity;)Z

    .line 1239
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->clearState()V

    .line 1245
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1247
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 1249
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1252
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->onExit()V

    .line 1257
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1258
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 1259
    return-void
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v0, :cond_0

    .line 788
    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0

    .line 790
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAppsById(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppsById(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 774
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    return-object v0
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 743
    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 744
    .local v1, "t":Ljava/lang/Object;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    .line 747
    :cond_0
    return-object v1

    .line 749
    .end local v1    # "t":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MicroApplicationContextImpl.findServiceByInterface("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), but mServiceManager==null, return null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicroAppContextImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-object v1
.end method

.method public findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 4

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v1, :cond_0

    .line 818
    invoke-interface {v1}, Lcom/alipay/mobile/core/ApplicationManager;->getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 821
    :cond_0
    if-eqz v0, :cond_1

    .line 822
    return-object v0

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, "retApp":Lcom/alipay/mobile/framework/app/ActivityApplication;
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    .line 830
    .local v2, "activeActivity":Landroid/app/Activity;
    move-object v2, v3

    if-eqz v3, :cond_3

    .line 831
    instance-of v3, v2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v3, :cond_2

    .line 832
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    .line 835
    :cond_2
    if-nez v1, :cond_3

    instance-of v3, v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v3, :cond_3

    .line 836
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    .line 839
    :cond_3
    return-object v1

    .line 841
    .end local v1    # "retApp":Lcom/alipay/mobile/framework/app/ActivityApplication;
    .end local v2    # "activeActivity":Landroid/app/Activity;
    :cond_4
    return-object v2
.end method

.method public finishAllActivities(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "exclude"    # Landroid/app/Activity;

    .line 1203
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:Lcom/alipay/mobile/core/impl/AppExitHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1204
    return v1

    .line 1208
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    const/4 v0, 0x1

    return v0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MicroAppContextImpl"

    const-string v3, "finishAllActivities"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    return v1
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 1145
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1146
    .local v0, "params1":Landroid/os/Bundle;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 1147
    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v5, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v5, p0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1148
    invoke-static {v5, p0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x0

    .line 1150
    .local v8, "aroundResult":Landroid/util/Pair;
    move-object v8, v7

    const-string v9, "MicroAppContextImpl"

    const-string v10, "REALLY_FINISHAPP"

    if-eqz v7, :cond_1

    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    :try_start_0
    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    goto :goto_2

    .line 1166
    :catchall_0
    move-exception v7

    .line 1167
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1153
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1156
    goto :goto_1

    .line 1154
    :catchall_1
    move-exception v7

    .line 1155
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v9, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;

    invoke-direct {v9, p0, p1, p2, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1171
    .end local v2    # "args":[Ljava/lang/Object;
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v5, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1172
    return-void
.end method

.method public getActiveActivityCount()I
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getActiveActivityCount()I

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    const-string v1, "MicroApplicationContextImpl.getExtServiceByInterface("

    const-string v2, "MicroAppContextImpl"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1188
    const-class v4, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 1189
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    move-object v4, v3

    .line 1190
    .local v4, "exm":Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), but exm==null, return null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .end local v4    # "exm":Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
    goto :goto_0

    .line 1196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), but mServiceManager==null, return null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :goto_0
    return-object v3
.end method

.method public getLazyBundles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1772
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/DescriptionManager;->getLazyBundles()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1773
    :catchall_0
    move-exception v0

    .line 1774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    return-object v0
.end method

.method public getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    if-nez v0, :cond_0

    .line 1604
    const/4 v0, 0x0

    return-object v0

    .line 1606
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 1612
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    if-nez v0, :cond_0

    .line 1613
    const/4 v0, 0x0

    return-object v0

    .line 1615
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineManager()Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    return-object v0
.end method

.method public getStartAppExceptionManager()Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 4

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "retApp":Lcom/alipay/mobile/framework/app/ActivityApplication;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v3, v2

    .line 708
    .local v3, "activeActivity":Landroid/app/Activity;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 709
    instance-of v1, v3, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 710
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 713
    :cond_0
    if-nez v0, :cond_1

    instance-of v1, v3, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    .line 714
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 717
    :cond_1
    if-nez v0, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 719
    .local v2, "topRunningApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v1, :cond_2

    .line 720
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 723
    .end local v2    # "topRunningApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_2
    return-object v0
.end method

.method getWorkThreadHandle()Landroid/os/Handler;
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 269
    return-object v0

    .line 271
    :cond_0
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 273
    monitor-exit p0

    return-object v0

    .line 275
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MicroApplicationContextImpl_WorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 276
    .local v1, "workerThread":Landroid/os/HandlerThread;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 277
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    invoke-direct {v2}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    .line 282
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->setWorkerThread(Ljava/lang/Thread;)V

    .line 283
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    invoke-virtual {v2, v3}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 285
    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    .line 286
    monitor-exit p0

    return-object v0

    .line 287
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "workerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized hasInited()Z
    .locals 1

    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1289
    .end local p0    # "this":Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initSerivces()V
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->loadServices()V

    .line 1689
    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 10
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 1134
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 1135
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.installApp(String, String, Bundle, FragmentActivity)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1136
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1137
    .local v2, "aroundResult":Landroid/util/Pair;
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1138
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/alipay/mobile/core/ApplicationManager;->installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1140
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1141
    return-void
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/init/BootLoader;->loadBundle(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public moveToIsolate(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 1
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 780
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->moveToIsolate(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 783
    :cond_0
    return-void
.end method

.method public onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
    .locals 2
    .param p1, "microContent"    # Lcom/alipay/mobile/framework/MicroContent;

    .line 728
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v0, :cond_1

    .line 729
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    const/4 v1, 0x0

    .line 730
    .local v1, "applicationManager":Lcom/alipay/mobile/core/ApplicationManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 731
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 732
    .end local v1    # "applicationManager":Lcom/alipay/mobile/core/ApplicationManager;
    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ServiceManager;->onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V

    return-void

    .line 735
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "microContent must be MicroApplication or MicroService."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0
    .param p1, "application"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 1524
    return-void
.end method

.method public postInit()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->postLoad()V

    .line 1685
    return-void
.end method

.method public preload(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 223
    invoke-static {p1}, Lcom/alipay/mobile/framework/DescriptionManager;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/DescriptionManager;

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Z)V

    .line 226
    return-void
.end method

.method public registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
    .locals 1
    .param p1, "engineType"    # Ljava/lang/String;
    .param p2, "engine"    # Lcom/alipay/mobile/framework/app/IApplicationEngine;

    .line 1578
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z

    move-result v0

    return v0
.end method

.method public registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1
    .param p1, "installer"    # Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 1593
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public registerExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;)V
    .locals 1
    .param p1, "agent"    # Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    .line 212
    invoke-static {}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->registerExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;)V

    .line 213
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "callback"    # Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 1656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 1657
    const/4 v0, 0x0

    .line 1658
    .local v0, "bFlag":Z
    instance-of v1, p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    .line 1659
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v1, p2, p3, p4}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 1660
    const/4 v0, 0x1

    goto :goto_0

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1663
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    .line 1664
    .local v2, "topActivity":Landroid/app/Activity;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_1

    .line 1665
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v1, p2, p3, p4}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 1666
    const/4 v0, 0x1

    .line 1671
    .end local v2    # "topActivity":Landroid/app/Activity;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 1672
    array-length v1, p2

    new-array v1, v1, [I

    .line 1673
    .local v1, "grantResults":[I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1674
    const/4 v4, -0x1

    aput v4, v1, v2

    .line 1673
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1676
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_2
    invoke-interface {p4, p3, p2, v1}, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1679
    .end local v0    # "bFlag":Z
    .end local v1    # "grantResults":[I
    :cond_3
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 1651
    return-void
.end method

.method public restoreState()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->restoreState(Z)V

    .line 1552
    return-void
.end method

.method public restoreState(Z)V
    .locals 7
    .param p1, "foreground"    # Z

    .line 1559
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    const-string v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 1560
    .local v1, "preferences":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "@@"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 1562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1563
    .local v2, "start":J
    const-string v0, "MicroAppContextImpl"

    const-string v4, "ApplicationManager.restoreState() begin"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v4, v1, p1}, Lcom/alipay/mobile/core/ApplicationManager;->restoreState(Landroid/content/SharedPreferences;Z)V

    .line 1565
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ApplicationManager.restoreState() end. cost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    .end local v2    # "start":J
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1569
    :cond_1
    return-void
.end method

.method public saveState()V
    .locals 4

    .line 1541
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    const-string v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1542
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 1543
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string v2, "@@"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1544
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ApplicationManager;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 1545
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1546
    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1629
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->r:Ljava/lang/ref/WeakReference;

    .line 1630
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1401
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 1402
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1403
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "mActiveActivity == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    const-string v2, "MicroAppContextImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1404
    :cond_0
    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_1

    .line 1405
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    .line 1406
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    return-void

    .line 1408
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    .line 1409
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$6;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1436
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 1446
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 1447
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "mActiveActivity == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    const-string v2, "MicroAppContextImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1449
    :cond_0
    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_1

    .line 1450
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    .line 1451
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void

    .line 1453
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V

    .line 1454
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1481
    return-void
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 13
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, ")"

    const-string v1, ", intent="

    const-string v2, "MicroAppContextImpl"

    .line 528
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .line 529
    .local v3, "args":[Ljava/lang/Object;
    const-string/jumbo v6, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v6, p0, v3}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 530
    invoke-static {v6, p0, v3}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    .line 531
    .local v9, "aroundResult":Landroid/util/Pair;
    move-object v9, v7

    if-eqz v7, :cond_0

    iget-object v7, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v7

    .line 533
    .local v7, "validStartActivityContext":Landroid/content/Context;
    iget-object v10, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    move-object v11, v8

    .line 534
    .local v11, "activeActivity":Landroid/app/Activity;
    move-object v11, v10

    if-nez v10, :cond_1

    if-eqz v7, :cond_4

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 536
    invoke-direct {p0, p1, v11}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object p1

    .line 537
    const/high16 v10, 0x40000

    invoke-virtual {p2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v10

    const-string v12, "app_id"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 542
    :try_start_0
    instance-of v5, v11, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v5, :cond_2

    instance-of v5, v11, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v5, :cond_2

    .line 543
    new-instance v5, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "startActivity(app="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 547
    :cond_2
    if-eqz v7, :cond_3

    .line 549
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v10, v8

    .line 550
    .local v10, "pushIntent":Landroid/content/Intent;
    move-object v10, v5

    const/high16 v12, 0x10000000

    :try_start_2
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    invoke-virtual {v7, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 554
    .end local v10    # "pushIntent":Landroid/content/Intent;
    goto :goto_1

    .line 552
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v10, v8

    :goto_0
    move-object v5, v10

    .line 553
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 555
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 558
    :cond_3
    :try_start_4
    invoke-virtual {v11, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    goto :goto_2

    .line 561
    :catchall_0
    move-exception v5

    .line 562
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 579
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 560
    :catch_2
    move-exception v5

    move-object v6, v8

    .end local v3    # "args":[Ljava/lang/Object;
    .end local v7    # "validStartActivityContext":Landroid/content/Context;
    .end local v9    # "aroundResult":Landroid/util/Pair;
    .end local v11    # "activeActivity":Landroid/app/Activity;
    .end local p1    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local p2    # "intent":Landroid/content/Intent;
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    throw v5
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 572
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v3    # "args":[Ljava/lang/Object;
    .restart local v7    # "validStartActivityContext":Landroid/content/Context;
    .restart local v9    # "aroundResult":Landroid/util/Pair;
    .restart local v11    # "activeActivity":Landroid/app/Activity;
    .restart local p1    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v5

    .line 573
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "Start ActivityShell."

    invoke-direct {v6, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 577
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to startActivity(app="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 582
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "validStartActivityContext":Landroid/content/Context;
    .end local v11    # "activeActivity":Landroid/app/Activity;
    :cond_4
    :goto_2
    invoke-static {v6, p0, v3}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 17
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "className"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, ")"

    const-string v4, ", className="

    const-string v5, "MicroAppContextImpl"

    .line 412
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    .line 413
    .local v6, "args":[Ljava/lang/Object;
    const-string/jumbo v9, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v9, v1, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 414
    invoke-static {v9, v1, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v11

    .line 415
    .local v12, "aroundResult":Landroid/util/Pair;
    move-object v12, v10

    if-eqz v10, :cond_0

    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    .line 416
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v10

    .line 417
    .local v10, "validStartActivityContext":Landroid/content/Context;
    iget-object v13, v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    move-object v14, v11

    .line 418
    .local v14, "activeActivity":Landroid/app/Activity;
    move-object v14, v13

    if-nez v13, :cond_1

    if-eqz v10, :cond_4

    :cond_1
    if-eqz v0, :cond_4

    .line 419
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 420
    invoke-direct {v1, v0, v14}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v13

    .line 421
    .end local p1    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .local v13, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v15, v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v0

    .line 422
    .local v15, "componentName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v16, v11

    .line 423
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 p1, v0

    .end local v16    # "intent":Landroid/content/Intent;
    .local p1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 424
    const/high16 v0, 0x40000

    move-object/from16 v7, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    invoke-static {v7}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 426
    invoke-virtual {v13}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v11, "app_id"

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    invoke-virtual {v13, v8}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 429
    :try_start_0
    instance-of v0, v14, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_2

    instance-of v0, v14, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startActivity(app="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 433
    :cond_2
    if-eqz v10, :cond_3

    .line 435
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    move-object v11, v8

    .line 436
    .local v11, "pushIntent":Landroid/content/Intent;
    move-object v8, v0

    .end local v11    # "pushIntent":Landroid/content/Intent;
    .local v8, "pushIntent":Landroid/content/Intent;
    const/high16 v11, 0x10000000

    :try_start_2
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {v10, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    .end local v8    # "pushIntent":Landroid/content/Intent;
    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_0
    move-object v0, v8

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V

    goto :goto_2

    .line 443
    :cond_3
    invoke-virtual {v14, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    goto :goto_2

    .line 445
    :catch_2
    move-exception v0

    .line 446
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Start ActivityShell."

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 449
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to startActivity(app="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 454
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "validStartActivityContext":Landroid/content/Context;
    .end local v13    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v14    # "activeActivity":Landroid/app/Activity;
    .end local v15    # "componentName":Landroid/content/ComponentName;
    .local p1, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_4
    move-object v13, v0

    .end local p1    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    .restart local v13    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :goto_2
    invoke-static {v9, v1, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 620
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 621
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 622
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 623
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 624
    :cond_0
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 626
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
    .locals 5
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 485
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 486
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 487
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    :cond_0
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 490
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public startActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    .line 609
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 610
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityFromFragment(MicroApplication, Fragment, Intent, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 611
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 612
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 615
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method public startActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .line 473
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 474
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityFromFragment(MicroApplication, Fragment, String, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 475
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 476
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 479
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 1030
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1031
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 14
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 964
    move-object v7, p0

    const-string v1, "MicroAppContextImpl"

    const/4 v0, 0x3

    if-nez p4, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    :goto_0
    move-object v8, v2

    .line 965
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .local v8, "sceneParams":Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 968
    .local v2, "checkSuccess":Z
    :try_start_0
    iget-object v3, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->q:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-nez v3, :cond_1

    .line 969
    const-string v3, "com.alipay.mobile.framework.service.common.impl.StartAppReflectModel"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->p:Ljava/lang/Class;

    .line 970
    const-string/jumbo v11, "startAppBeforeEvent"

    new-array v12, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v6

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v10

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v12, v5

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v12, v0

    const-class v13, Landroidx/fragment/app/FragmentActivity;

    aput-object v13, v12, v4

    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->q:Ljava/lang/reflect/Method;

    .line 977
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 979
    :cond_1
    iget-object v3, v7, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->q:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    aput-object p2, v9, v10

    aput-object p3, v9, v5

    aput-object v8, v9, v0

    aput-object p5, v9, v4

    invoke-virtual {v3, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 982
    goto :goto_1

    .line 980
    :catchall_0
    move-exception v0

    .line 981
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startApp, detect error, th="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 983
    .end local v2    # "checkSuccess":Z
    .local v0, "checkSuccess":Z
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startApp, pass="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    if-eqz v0, :cond_2

    .line 985
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 987
    :cond_2
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 6
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 1025
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1026
    return-void
.end method

.method public startEntryApp(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->startEntryApp(Landroid/os/Bundle;)V

    .line 852
    return-void
.end method

.method public startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 7
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 587
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 588
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 589
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 590
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    .line 592
    .local v3, "activeActivity":Landroid/app/Activity;
    move-object v3, v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 593
    const/high16 v2, 0x40000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    instance-of v2, v3, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v2, :cond_1

    instance-of v2, v3, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v2, :cond_1

    .line 596
    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startExtActivity(app="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    const-string v5, "MicroAppContextImpl"

    invoke-static {v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()V

    .line 601
    invoke-virtual {v3, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 604
    .end local v3    # "activeActivity":Landroid/app/Activity;
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 671
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 672
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 673
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 674
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    :cond_0
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 677
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public startExtActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    .line 660
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 661
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityFromFragment(MicroApplication, Fragment, Intent, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 662
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 663
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 664
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 666
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 667
    return-void
.end method

.method public unregisterApplicationEngine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "engineType"    # Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationEngine(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1
    .param p1, "installer"    # Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 1598
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    return-void
.end method

.method public unregisterService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->unregisterService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    .line 206
    .local v0, "temp":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    .line 207
    return-object v0
.end method

.method public updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
    .locals 1
    .param p1, "description"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z

    move-result v0

    return v0
.end method

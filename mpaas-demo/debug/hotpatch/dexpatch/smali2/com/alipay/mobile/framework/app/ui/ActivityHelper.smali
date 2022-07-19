.class public Lcom/alipay/mobile/framework/app/ui/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;
    }
.end annotation


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "mExtras"

.field static final TAG:Ljava/lang/String; = "ActivityHelper"

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static volatile d:Z

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/mobile/framework/loading/LoadingView;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    .line 77
    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Z

    .line 80
    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Z

    .line 351
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 113
    const-string v0, "ActivityHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Z

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->h:Landroid/os/Handler;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->j:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 116
    new-instance v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->g:Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

    .line 119
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 121
    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 123
    const-string v1, ""

    .line 125
    .local v1, "appId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 128
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityHelper("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 134
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 135
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_CREATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 138
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->attachToAppSync(Landroid/app/Activity;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 202
    :try_start_0
    const-string v0, "mExtras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 203
    .local v1, "mExtras":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 205
    invoke-virtual {p1, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    .line 208
    const-string v2, "app_id"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isTinyApp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    return-object v0
.end method

.method private static b()V
    .locals 5

    .line 525
    :try_start_0
    const-string v0, "android.text.TextLine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 526
    .local v2, "cls":Ljava/lang/Class;
    move-object v2, v0

    const-string/jumbo v3, "sCached"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v1

    .line 527
    .local v3, "f":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    const/4 v0, 0x3

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    return-void

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityHelper"

    const-string v2, "ActivityHelper.onDestroy().recycle(): [android.text.TextLine]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static eraseStartupSafeguardFlags()V
    .locals 5

    .line 249
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$2;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$2;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method public static isBackgroundRunning()Z
    .locals 2

    .line 677
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 678
    return v1

    .line 680
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isBrought2Foreground()Z
    .locals 1

    .line 673
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    return v0
.end method

.method public static registerHomeLoadFinishListener(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "listener"    # Ljava/lang/Runnable;

    .line 381
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityHelper"

    const-string v2, "add home load finish listener failed."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static sendUserLeaveHintBroadcast(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 470
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 473
    nop

    .line 474
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 475
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 479
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->setForeground(Z)V

    .line 485
    .end local v0    # "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static startClientStartedPipeline()V
    .locals 5

    .line 388
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    if-nez v0, :cond_2

    .line 389
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 391
    .local v2, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v2, v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->hasInited()Z

    move-result v0

    const-string v3, "ActivityHelper"

    if-eqz v0, :cond_1

    .line 392
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    .line 393
    const-string v0, "Pipeline"

    const-string v4, "PIPELINE_FRAMEWORK_CLIENT_STARTED : start"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "com.alipay.mobile.client.STARTED"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 395
    .local v1, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 396
    const-string v0, "The framework has initialized, but pipeline==null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 400
    .end local v1    # "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    return-void

    .line 401
    :cond_1
    const-string v0, "The framework hasn\'t initialized, pipeline maybe null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v2    # "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    :cond_2
    return-void
.end method

.method public static startFrameworkPipeLine()V
    .locals 2

    .line 346
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 347
    const-string v1, "com.alipay.mobile.framework.INITED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 349
    return-void
.end method

.method public static startFrameworkSecondPipeLine()V
    .locals 4

    .line 326
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Z

    if-nez v0, :cond_2

    .line 327
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Z

    .line 329
    const-string v0, "Pipeline"

    const-string v1, "PIPELINE_FRAMEWORK_SECOND_STARTED : start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 332
    .local v2, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v2, v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->hasInited()Z

    move-result v0

    const-string v3, "ActivityHelper"

    if-eqz v0, :cond_1

    .line 333
    const-string v0, "com.alipay.mobile.framework.SECOND"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 334
    .local v1, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 335
    const-string v0, "The framework has inited, but pipeline==null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 339
    .end local v1    # "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    return-void

    .line 340
    :cond_1
    const-string v0, "The framework hasn\'t inited, pipeline maybe null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v2    # "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    :cond_2
    return-void
.end method

.method public static startHomePageLoadFinishPipeLine()V
    .locals 4

    .line 354
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Z

    if-nez v0, :cond_3

    .line 355
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Z

    .line 356
    const-string v0, "Pipeline"

    const-string v1, "com.alipay.mobile.framework.HOMEPAGE_LOAD_FINISH : start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 359
    .local v2, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v2, v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->hasInited()Z

    move-result v0

    const-string v3, "ActivityHelper"

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "com.alipay.mobile.framework.HOMEPAGE_LOAD_FINISH"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 361
    .local v1, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "The framework has inited, but pipeline==null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 366
    .end local v1    # "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    goto :goto_0

    .line 367
    :cond_1
    const-string v0, "The framework hasn\'t inited, pipeline maybe null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 371
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    goto :goto_1

    .line 375
    :cond_2
    return-void

    .line 373
    :catchall_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "invoke listener failed."

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    :cond_3
    return-void
.end method


# virtual methods
.method public addLoadingView(Lcom/alipay/mobile/framework/loading/LoadingView;)V
    .locals 5
    .param p1, "loadingView"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 685
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 689
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v2, v1

    .line 690
    .local v2, "contentContainer":Landroid/view/ViewGroup;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 694
    if-nez p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->getDefaultLoadingViewFactory()Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

    move-result-object v0

    .line 696
    .local v1, "loadingViewFactory":Lcom/alipay/mobile/framework/loading/LoadingView$Factory;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lcom/alipay/mobile/framework/loading/LoadingView$Factory;->createLoadingView(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object p1

    .line 701
    .end local v1    # "loadingViewFactory":Lcom/alipay/mobile/framework/loading/LoadingView$Factory;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    const-string v1, "ActivityHelper"

    if-ne p1, v0, :cond_1

    .line 702
    const-string/jumbo v0, "same loading view"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void

    .line 706
    :cond_1
    if-eqz v0, :cond_2

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove original loading view:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 711
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 712
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    new-instance v3, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$5;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$5;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/loading/LoadingView;->setOnCancelListener(Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addLoadingView:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/loading/LoadingView;->setHostActivity(Landroid/app/Activity;)V

    .line 727
    return-void

    .line 691
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not find content container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    .end local v2    # "contentContainer":Landroid/view/ViewGroup;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must addLoadingView on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 561
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "isCanceledOnTouchOutside"    # Ljava/lang/Boolean;

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 588
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "isCanceledOnTouchOutside"    # Ljava/lang/Boolean;
    .param p8, "cancelable"    # Ljava/lang/Boolean;

    .line 607
    move-object v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 609
    return-void
.end method

.method public attachToAppSync(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachToAppAsync_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "threadName":Ljava/lang/String;
    const-string v1, "ActivityHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 160
    .local v4, "application":Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    move-object v4, v2

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 166
    invoke-interface {v2, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    move-object v5, v3

    .line 167
    .local v5, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v5, v2

    instance-of v2, v2, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v5

    check-cast v2, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v2, :cond_2

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v2, :cond_3

    .line 180
    new-instance v2, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;)V

    iput-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 181
    const-string v3, "ActivityApplicationStub"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setAppId(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityHelper("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") finish & return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->isCreated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->create(Landroid/os/Bundle;)V

    .line 196
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    .line 198
    return-void

    .line 162
    .end local v5    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 646
    return-void
.end method

.method public dispatchOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 502
    return-void
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 651
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 650
    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 538
    return-void
.end method

.method public getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
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

    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public isBehindTranslucentActivity()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Z

    return v0
.end method

.method public onContentChanged()V
    .locals 0

    .line 430
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 509
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b()V

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 513
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 514
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.ACTIVITY_DESTROY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 515
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 518
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->g:Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->unregister()V

    .line 521
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 435
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Z

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 411
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 412
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.ACTIVITY_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 419
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->g:Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->unregister()V

    .line 422
    :cond_1
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    const/4 v1, 0x0

    .line 233
    .local v1, "callback":Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Z

    .line 262
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 263
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->eraseStartupSafeguardFlags()V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 274
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 275
    .local v1, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 278
    .local v5, "i":Landroid/content/Intent;
    move-object v5, v3

    const-string v6, "ActivityHelper"

    if-eqz v3, :cond_2

    .line 280
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 281
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v4, v3

    if-eqz v3, :cond_1

    .line 282
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 284
    :catchall_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v3, :cond_3

    .line 290
    const-string v4, "app_id"

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_3
    const-string v3, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v3, "com.alipay.mobile.framework.APP_DATA"

    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v3, "com.alipay.mobile.framework.IS_TINY_APP"

    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 295
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 294
    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    if-eqz v5, :cond_6

    .line 297
    const-string v3, "com.alipay.mobile.framework.IS_RN_APP"

    const-string v4, "IS_RN_APP"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    :cond_6
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    goto :goto_3

    .line 300
    :catchall_1
    move-exception v3

    .line 301
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "sendBroadcast: MsgCodeConstants.FRAMEWORK_ACTIVITY_RESUME error"

    invoke-static {v6, v4, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    const-string/jumbo v3, "sendBroadcast: MsgCodeConstants.FRAMEWORK_ACTIVITY_RESUME"

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-boolean v3, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    if-eqz v3, :cond_7

    .line 306
    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 309
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 310
    const-string/jumbo v0, "sendBroadcast: MsgCodeConstants.FRAMEWORK_BROUGHT_TO_FOREGROUND"

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startClientStartedPipeline()V

    .line 314
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startFrameworkSecondPipeLine()V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->g:Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;

    if-eqz v0, :cond_8

    .line 317
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->register()V

    .line 319
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->saveState()V

    .line 506
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 240
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 241
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 246
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Z

    .line 426
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->onUserInteraction(Landroid/app/Activity;)V

    .line 440
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x64

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->h:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x7d0

    :goto_0
    move-wide v0, v1

    .line 457
    .local v0, "delay":J
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->h:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$4;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$4;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    .end local v0    # "delay":J
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Landroid/app/Activity;

    .line 489
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 490
    .local v0, "broadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 492
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 495
    if-eqz p1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->windowFocus()V

    .line 498
    :cond_0
    return-void
.end method

.method requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->j:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 642
    return-void
.end method

.method public startLoading()Z
    .locals 2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startLoading:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$6;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    const/4 v0, 0x1

    return v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopLoading()Z
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopLoading:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->k:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$7;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    const/4 v0, 0x1

    return v0

    .line 772
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I

    .line 620
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->i:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 621
    return-void
.end method

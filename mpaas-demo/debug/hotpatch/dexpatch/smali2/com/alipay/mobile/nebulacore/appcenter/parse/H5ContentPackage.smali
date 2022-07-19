.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "H5ContentPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;,
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/ConditionVariable;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field public currentUseVersion:Ljava/lang/String;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field public isResPackage:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "isResPackage"    # Z

    .line 110
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 58
    const-string v0, "H5ContentPackage"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->j:Z

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;

    .line 100
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->n:Z

    .line 104
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->p:Z

    .line 106
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->r:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h:I

    .line 112
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 115
    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->o:Z

    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->s:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    const/4 v1, 0x0

    .line 382
    .local v1, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private a()V
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(J)V

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "66666692 tinyResApp prepareContent cost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->q:Z

    if-eqz v2, :cond_2

    .line 315
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b()V

    .line 319
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 320
    .local v3, "processName":Ljava/lang/String;
    move-object v3, v2

    if-eqz v2, :cond_2

    const-string v2, "lite1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v4, "66666692 tinyResApp in preLoadLite1 not prepare"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 327
    .end local v3    # "processName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$4;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$4;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 334
    return-void
.end method

.method private a(J)V
    .locals 5
    .param p1, "startTime"    # J

    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 634
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    .line 636
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseLatch block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 646
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conditionVariable block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # J

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;ZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isAvailable"    # Z

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    .line 270
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, "degradeStart":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z

    move-result v2

    .line 273
    .local v2, "haveDegradePkg":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[prepareForDegrade] haveDegradePkg: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(J)V

    .line 276
    if-eqz v2, :cond_1

    .line 277
    const-string v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 284
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b(Z)V

    .line 286
    return-void
.end method

.method private declared-synchronized a(ZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .param p1, "isReady"    # Z
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "sid"    # Ljava/lang/String;

    monitor-enter p0

    .line 653
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 654
    monitor-exit p0

    return-void

    .line 656
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->j:Z

    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, "tabDataStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##tabbar## handleSessionTabData isH5GlobalPackage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v1, :cond_b

    .line 665
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sessionId"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_1
    move-object v1, p3

    .line 666
    .local v1, "sessionId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 667
    .local v4, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v4, v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v2, :cond_a

    move-object v2, v4

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 668
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 672
    :cond_2
    if-nez p1, :cond_7

    .line 674
    const-string v2, "cdnBaseUrl"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v3, "cdnHost":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v5, "cdn url empty!"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_3
    if-eqz v3, :cond_4

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 681
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tabBar.json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "finalUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##tabbar## handleSessionTabData !isReady fallback final url "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object v0, v2

    .line 685
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##tabbar## handleSessionTabData !isReady tabDataStr "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 688
    const-string/jumbo v5, "stupid"

    move-object v0, v5

    .line 690
    :cond_5
    move-object v5, v4

    check-cast v5, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 691
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    move-result-object v5

    .line 692
    .local v5, "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "##tabbar## handleSessionTabData !isReady listener "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    if-eqz v5, :cond_6

    .line 695
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v7, "##tabbar## handleSessionTabData !isReady onDataParsed"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-interface {v5, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;->onDataParsed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    .end local v2    # "finalUrl":Ljava/lang/String;
    .end local v3    # "cdnHost":Ljava/lang/String;
    .end local v5    # "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    :cond_6
    monitor-exit p0

    return-void

    .line 699
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getTabDataByAppId(Ljava/lang/String;)[B

    move-result-object v2

    .line 700
    .local v3, "tabbarJSON":[B
    move-object v3, v2

    if-eqz v2, :cond_8

    .line 701
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    move-object v0, v2

    .line 703
    :cond_8
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##tabbar## handleSessionTabData isReady tabBarData "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 706
    const-string/jumbo v2, "stupid"

    move-object v0, v2

    .line 708
    :cond_9
    move-object v2, v4

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 709
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    move-result-object v2

    .line 710
    .local v2, "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##tabbar## handleSessionTabData isReady listener "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-eqz v2, :cond_b

    .line 713
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v6, "##tabbar## handleSessionTabData isReady onDataParsed"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;->onDataParsed(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 669
    .end local v2    # "listener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    .end local v3    # "tabbarJSON":[B
    :cond_a
    :goto_1
    monitor-exit p0

    return-void

    .line 718
    .end local v1    # "sessionId":Ljava/lang/String;
    .end local v4    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    .line 652
    .end local v0    # "tabDataStr":Ljava/lang/String;
    .end local p1    # "isReady":Z
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "sid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 15
    .param p1, "hotUpdate"    # Z
    .param p2, "installedPath"    # Ljava/lang/String;
    .param p3, "needInstall"    # Z

    move-object v9, p0

    move-object/from16 v10, p2

    const-string/jumbo v0, "offlineHost"

    .line 473
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "sessionId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 474
    .local v11, "sessionId":Ljava/lang/String;
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseContent appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " installPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v1, :cond_0

    .line 476
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v1, "failed to get app provider!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 481
    :cond_0
    const/4 v1, 0x0

    .line 482
    .local v1, "offlineHost":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "/"

    if-nez v2, :cond_2

    .line 483
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    move-object v1, v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v12, v1

    goto :goto_0

    .line 484
    :cond_1
    move-object v12, v1

    goto :goto_0

    .line 482
    :cond_2
    move-object v12, v1

    .line 489
    .end local v1    # "offlineHost":Ljava/lang/String;
    .local v12, "offlineHost":Ljava/lang/String;
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 490
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 491
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tar"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->g:Ljava/lang/String;

    .line 494
    :cond_3
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 497
    :cond_4
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 502
    .local v13, "startTime":J
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    .line 505
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_6

    .line 506
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    .line 512
    :cond_6
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 514
    .local v5, "copyBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v11

    move/from16 v4, p3

    move-wide v6, v13

    move/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;ZLandroid/os/Bundle;JZ)V

    .line 607
    .local v0, "runnable":Ljava/lang/Runnable;
    const-string v1, "URGENT_DISPLAY"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 609
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    if-eqz v1, :cond_7

    .line 610
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 612
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 613
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareContent block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "copyBundle":Landroid/os/Bundle;
    .end local v12    # "offlineHost":Ljava/lang/String;
    .end local v13    # "startTime":J
    :cond_7
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 337
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 339
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendPreLoadAppx "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , appVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "appx_preload_success"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 343
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "hotVersion"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v1, "failed to get app provider!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hotUpdateApp hotVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 459
    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "installedPath":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLjava/lang/String;Z)V

    .line 463
    .end local v0    # "installedPath":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private b(Z)V
    .locals 7
    .param p1, "isAvailable"    # Z

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;

    invoke-direct {v5, p0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;B)V

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    goto :goto_1

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    .line 354
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLjava/lang/String;Z)V

    goto :goto_1

    .line 356
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notDownload_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    .line 357
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 358
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "7"

    :goto_0
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->l:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    new-instance v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;

    invoke-direct {v6, p0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;B)V

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 363
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepareNotInstalledApp cost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private c()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->n:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableResDegrade()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->q:Z

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isResourceApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 790
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 390
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 392
    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeApiPermission(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 394
    .local v0, "apiByte":[B
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 396
    .local v1, "configByte":[B
    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 398
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->put(Ljava/lang/String;[B)V

    .line 402
    :cond_0
    if-eqz v1, :cond_1

    .line 403
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 407
    .end local v0    # "apiByte":[B
    .end local v1    # "configByte":[B
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v0, :cond_1

    .line 426
    iget v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v1, "abort retry to download app."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h:I

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadContentForAppCenter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->g()V

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 723
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    .line 725
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 728
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    .line 730
    :cond_0
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 818
    monitor-exit p0

    return-void

    .line 820
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;

    .line 847
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 848
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 849
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 850
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "com.alipay.mobile.android.h5app.installstatus"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerInstallReceiver \uff1aappId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    .line 816
    .end local v0    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 860
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unregisterInstallReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 862
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->m:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 856
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->p:Z

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)[B
    .locals 9

    .line 734
    const-string v0, "h5_match_httpRes"

    const-string v1, "http://"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 737
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begin wait for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_0

    .line 739
    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 741
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 742
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wait parse elapse "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-wide/16 v3, 0xbb8

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    .line 744
    const-string/jumbo v3, "wait_appParse_timeout"

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    .line 746
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f()V

    .line 750
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->s:Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;

    if-eqz v3, :cond_2

    .line 751
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppUrlMapProvider;->mapUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 753
    :cond_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 754
    if-nez v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "no"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 755
    nop

    .line 756
    const-string v3, "https://"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-super {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    .line 758
    if-eqz v3, :cond_3

    .line 759
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 766
    :cond_3
    if-eqz v3, :cond_4

    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " target "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->enableResHttpCache()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->o:Z

    if-eqz v0, :cond_5

    .line 769
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->add(Ljava/lang/String;[B)V

    .line 770
    return-object v2

    .line 773
    :cond_4
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 774
    const-string/jumbo p1, "notMatch"

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :cond_5
    return-object v3

    .line 779
    :catchall_0
    move-exception p1

    .line 780
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "latch exception:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    .line 782
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f()V

    .line 785
    return-object v2
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackReason()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUnAvailableReason()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized prepareContent(Z)V
    .locals 12
    .param p1, "needLock"    # Z

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v1, "failed to get app provider!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 135
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_0
    if-eqz p1, :cond_1

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string/jumbo v1, "prepareContent with lock!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    const-string v1, "appVersion"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 143
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    .line 148
    :goto_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getTinyResPresetVersion()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 150
    .local v2, "presetVersion":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 151
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyResPresetForceCheck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    .line 156
    .end local v2    # "presetVersion":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->refreshLogTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NO"

    const-string v2, "h5_updateWhenNoPkg"

    .line 159
    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareContent version == null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", update and return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 166
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 170
    .local v0, "versionChanged":Z
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->r:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->r:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareContent appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " duplicate preparingVersion not prepare!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 176
    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->r:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 179
    .local v4, "installed":Z
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "prepareContent appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " appVersion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " canDegrade:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->n:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " installed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " currentUseVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v2, "!versionChanged return"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 195
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getH5ContentPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v5

    move-object v6, v1

    .line 196
    .local v6, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v6, v5

    if-eqz v5, :cond_8

    .line 197
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "H5GlobalDegradePkg contain "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    iget-object v7, v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string v2, "H5GlobalDegradePkg contain contain this version not parse"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 205
    :cond_8
    if-nez v4, :cond_e

    .line 206
    :try_start_5
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 208
    .local v5, "isAvailable":Z
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "handle not installed. amr available: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d:Landroid/os/Bundle;

    invoke-direct {p0, v3, v7, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->d()V

    .line 213
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 215
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e()V

    .line 216
    const-string v1, "isNotNebulaApp"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->k:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 219
    :cond_9
    :try_start_6
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-nez v7, :cond_b

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableUseDegradeInMainPkg()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 220
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    .line 221
    .local v7, "originVersion":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getInstallVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "installVersion":Ljava/lang/String;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v9

    move-object v10, v1

    .line 223
    .local v10, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v10, v9

    if-eqz v9, :cond_b

    .line 224
    iget-object v9, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 225
    const-string v11, "downgradeVersion"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "downgradeVersion":Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eq v2, v11, :cond_a

    .line 227
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 229
    :cond_a
    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v2, v11, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLjava/lang/String;Z)V

    .line 231
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    const-string v3, "finish"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->logMainPkgDegrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 238
    .end local v7    # "originVersion":Ljava/lang/String;
    .end local v8    # "installVersion":Ljava/lang/String;
    .end local v9    # "downgradeVersion":Ljava/lang/String;
    .end local v10    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_b
    :try_start_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "no"

    const-string v2, "h5_use_preset_tinyCommonRes"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 239
    const-string v1, "URGENT_DISPLAY"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 249
    :cond_c
    :try_start_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 250
    const-string v1, "URGENT_DISPLAY"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$2;

    invoke-direct {v2, p0, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$2;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 259
    :cond_d
    :try_start_9
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 261
    .end local v5    # "isAvailable":Z
    monitor-exit p0

    return-void

    .line 262
    :cond_e
    :try_start_a
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->i:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(ZLjava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "versionChanged":Z
    .end local v4    # "installed":Z
    .end local v6    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local p1    # "needLock":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public refreshLogTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;

    .line 292
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "H5ContentPackage_res_"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_0
    const-string v0, "H5ContentPackage_"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    .line 297
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public releaseContent()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseContent appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->p:Z

    .line 413
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->f()V

    .line 414
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->clear()V

    .line 415
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->h()Z

    .line 416
    return-void
.end method

.method public setCanDegrade(Z)V
    .locals 0
    .param p1, "degrade"    # Z

    .line 367
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->n:Z

    .line 368
    return-void
.end method

.method public setPreload(Z)V
    .locals 0
    .param p1, "preload"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->q:Z

    .line 122
    return-void
.end method

.method public waitLockIfNeed()V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 627
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a:Ljava/lang/String;

    const-string/jumbo v1, "waitLockIfNeed block "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

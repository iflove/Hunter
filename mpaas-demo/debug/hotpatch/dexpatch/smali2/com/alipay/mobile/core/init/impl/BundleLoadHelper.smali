.class public Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
.super Ljava/lang/Object;
.source "BundleLoadHelper.java"


# static fields
.field public static final META_INFO:Ljava/lang/String; = ".MetaInfo"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/core/ApplicationManager;

.field private c:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

.field private d:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/BaseMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

.field mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/core/init/BootLoader;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "bootLoader"    # Lcom/alipay/mobile/core/init/BootLoader;
    .param p2, "entryPkgName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    iput-object p2, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Ljava/lang/String;

    .line 76
    invoke-interface {p1}, Lcom/alipay/mobile/core/init/BootLoader;->getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 77
    .local v0, "microApplicationContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 78
    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/core/ApplicationManager;

    iput-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/core/ApplicationManager;

    .line 80
    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    iput-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 82
    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iput-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getPipelineManager()Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 85
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    .line 86
    iput-object p3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->g:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/BaseMetaInfo;
    .locals 9
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->getBundleMetaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/BaseMetaInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 415
    .local v2, "baseMetaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 416
    return-object v1

    .line 418
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    const-string v3, "BootLoader.MetaInfo"

    if-eqz v0, :cond_1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Success to load MetaInfo: BundleName="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v0

    move-object v4, v1

    .line 424
    .local v4, "apps":Ljava/util/List;
    move-object v4, v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 425
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 426
    .local v6, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v6, v7

    if-eqz v7, :cond_2

    .line 430
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 431
    invoke-virtual {v6}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/core/ApplicationManager;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v6, v8, v5

    invoke-interface {v7, v8}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 434
    .end local v6    # "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    goto :goto_0

    .line 437
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 438
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "entry":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "EntryAppName:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BootLoader"

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v0, :cond_6

    .line 441
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v3, v0}, Lcom/alipay/mobile/core/ApplicationManager;->setEntryAppName(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    .end local v0    # "entry":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v3

    .line 449
    .local v0, "services":Ljava/util/List;
    move-object v0, v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 451
    .local v1, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    move-object v1, v6

    if-eqz v6, :cond_7

    .line 455
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "className":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->h:Ljava/util/Set;

    if-eqz v7, :cond_8

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 457
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 460
    :cond_8
    iget-object v7, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->registerExternalServiceOnly(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 461
    .end local v1    # "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    .end local v6    # "className":Ljava/lang/String;
    goto :goto_2

    .line 464
    :cond_9
    return-object v2
.end method

.method private a(Lcom/alipay/mobile/framework/BaseMetaInfo;)V
    .locals 6
    .param p1, "baseMetaInfo"    # Lcom/alipay/mobile/framework/BaseMetaInfo;

    .line 474
    if-nez p1, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    nop

    .line 479
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 480
    .local v2, "broadcastReceivers":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 481
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 482
    .local v3, "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 486
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 487
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_2

    goto :goto_1

    .line 495
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v4}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->isSupportSubThreadBroadcast()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiverDescription(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    goto :goto_0

    .line 498
    :cond_3
    invoke-direct {p0, v3}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 501
    .end local v3    # "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    goto :goto_0

    .line 488
    .restart local v3    # "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": msgCode is empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BootLoader.MetaInfo"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v3    # "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    :cond_5
    move-object v0, v1

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getValves()Ljava/util/List;

    move-result-object v3

    .line 506
    .local v0, "valves":Ljava/util/List;
    move-object v0, v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 508
    .local v1, "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    move-object v1, v4

    if-eqz v4, :cond_7

    .line 511
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 512
    .end local v1    # "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    goto :goto_2

    .line 514
    :cond_8
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V
    .locals 9
    .param p1, "broadcastReceiverDescription"    # Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 677
    .local v0, "start":J
    const/4 v2, 0x0

    .line 679
    .local v2, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 684
    goto :goto_0

    .line 680
    :catchall_0
    move-exception v3

    .line 681
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V

    .line 682
    const-string v4, "BootLoader.MetaInfo"

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to reflect BroadcastReceiver["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_3

    .line 687
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 688
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 689
    .local v7, "msgCode":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    .end local v7    # "msgCode":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 692
    :cond_0
    monitor-enter p1

    .line 693
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->hasRegisted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    monitor-exit p1

    return-void

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->isRunInSubThread()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 697
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_2

    .line 699
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 701
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setHasRegisted(Z)V

    .line 702
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 704
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 705
    const-string v4, "BootLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "registerReceiver: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", actions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 705
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 702
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 709
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 710
    .local v3, "end":J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 711
    const-string v5, "BootLoader.MetaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cost ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] ms, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "] is a broadcast."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_4
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V
    .locals 1
    .param p1, "valve"    # Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 717
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 718
    return-void
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 372
    const-string v2, "BootLoader.MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadBundle(null == classLoader): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v1

    const-string v2, "1002"

    invoke-virtual {v1, p2, v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleLoadBundleFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 378
    .local v1, "finish":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    monitor-enter v2

    .line 379
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    move-object v1, v3

    if-nez v3, :cond_1

    .line 381
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v1, v3

    .line 382
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    const-string v2, "BootLoader.MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bundle has already loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void

    .line 390
    :cond_2
    monitor-enter v1

    .line 391
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    const-string v2, "BootLoader.MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bundle has already loaded(synchronized): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    monitor-exit v1

    return-void

    .line 395
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/BaseMetaInfo;

    move-result-object v2

    .line 396
    .local v2, "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/alipay/mobile/framework/DescriptionManager;->addDescriptionsFromMetaInfo(Ljava/lang/String;Lcom/alipay/mobile/framework/BaseMetaInfo;)V

    .line 397
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-direct {p0, v2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Lcom/alipay/mobile/framework/BaseMetaInfo;)V

    .line 401
    invoke-direct {p0, v2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b(Lcom/alipay/mobile/framework/BaseMetaInfo;)V

    .line 403
    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    return-void

    .line 399
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 384
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/DescriptionManager;->getDescription(Ljava/lang/String;ZZZZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 125
    .local v2, "serviceDescriptions":Ljava/util/List;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    const-string v3, "BootLoader"

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":doLoadBundleService, size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 135
    .local v0, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/MicroDescription;

    .line 136
    .local v1, "serviceDescription":Lcom/alipay/mobile/framework/MicroDescription;
    move-object v1, v5

    instance-of v5, v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v5, :cond_4

    .line 137
    move-object v5, v1

    check-cast v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v5

    if-nez v5, :cond_4

    .line 138
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_2

    .line 139
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 142
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createExternalService:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    move-object v6, v1

    check-cast v6, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->createExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)Z

    .line 148
    .end local v1    # "serviceDescription":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_4
    goto :goto_0

    .line 149
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/alipay/mobile/framework/BaseMetaInfo;)V
    .locals 4
    .param p1, "baseMetaInfo"    # Lcom/alipay/mobile/framework/BaseMetaInfo;

    .line 522
    if-nez p1, :cond_0

    .line 523
    return-void

    .line 526
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 527
    .local v2, "services":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 528
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 529
    .local v1, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 532
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v3

    if-nez v3, :cond_2

    .line 533
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->createExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)Z

    .line 535
    .end local v1    # "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    :cond_2
    goto :goto_0

    .line 537
    :cond_3
    return-void
.end method


# virtual methods
.method public getBundleMetaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/BaseMetaInfo;
    .locals 9
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    const-string v0, ".MetaInfo]"

    const-string v1, " ["

    const-string v2, "BootLoader.MetaInfo"

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/BaseMetaInfo;

    const/4 v5, 0x0

    move-object v6, v5

    .line 329
    .local v6, "cache":Lcom/alipay/mobile/framework/BaseMetaInfo;
    move-object v6, v4

    if-nez v4, :cond_0

    .line 330
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v4

    .line 332
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 334
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".MetaInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 335
    .local v5, "clazz":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/BaseMetaInfo;

    .line 336
    move-object v6, v7

    invoke-virtual {v7, v4}, Lcom/alipay/mobile/framework/BaseMetaInfo;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Load MetaInfo Success: BundleName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v5    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 338
    :catchall_0
    move-exception v5

    .line 339
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load MetaInfo: BundleName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v6, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    return-object v6
.end method

.method public loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "bundleContext"    # Lcom/alipay/mobile/framework/BundleContext;
    .param p2, "bundleName"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 353
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p2}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundlePackageNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 355
    .local v1, "packages":Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadBundle(bundleName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), classLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string v3, "BootLoader"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 361
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 362
    .local v3, "packageName":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    invoke-direct {p0, v0, p2, v3}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 367
    :cond_2
    return-void
.end method

.method public loadBundleDefinitions()V
    .locals 20

    .line 201
    move-object/from16 v1, p0

    invoke-static {}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundleNames()Ljava/util/Collection;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 208
    .local v3, "bundleNames":Ljava/util/Collection;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, "BootLoader"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "null == bundleNames"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->getLiteBundleList()[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "mapList":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 216
    .local v5, "mList":Ljava/util/Set;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 217
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v6

    .line 221
    .local v6, "isLite":Z
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    .local v10, "bundleName":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 223
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 231
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/alipay/mobile/framework/DescriptionManager;->isLazyBundle(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 232
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 233
    const-string v11, "BootLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "loadBundleDefinitions,skip lazy bundle:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 239
    .local v11, "start":J
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v13

    .line 240
    .local v13, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    invoke-static {v10}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundlePackageNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v14

    .line 241
    .local v2, "packages":Ljava/util/Set;
    move-object v2, v14

    if-eqz v14, :cond_c

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 242
    invoke-virtual {v13, v10}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v14

    .line 243
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    move-object v7, v14

    if-eqz v14, :cond_b

    .line 248
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 249
    const-string v14, "BootLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "loadBundle(bundleName="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), classLoader="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packages="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v14, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 248
    :cond_5
    move-object/from16 v16, v0

    .line 252
    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 253
    .local v8, "packageName":Ljava/lang/String;
    move-object v8, v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 254
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 256
    .local v9, "finish":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v14, "key":Ljava/lang/String;
    iget-object v15, v1, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    monitor-enter v15

    .line 257
    move-object/from16 v17, v0

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    move-object v9, v0

    if-nez v0, :cond_6

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v18, v2

    .end local v2    # "packages":Ljava/util/Set;
    .local v18, "packages":Ljava/util/Set;
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v9, v0

    .line 260
    iget-object v0, v1, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Ljava/util/Map;

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 258
    .end local v18    # "packages":Ljava/util/Set;
    .restart local v2    # "packages":Ljava/util/Set;
    :cond_6
    move-object/from16 v18, v2

    .line 262
    .end local v2    # "packages":Ljava/util/Set;
    .restart local v18    # "packages":Ljava/util/Set;
    :goto_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 264
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    const-string v0, "BootLoader.MetaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "Bundle has already loaded: "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    goto :goto_5

    .line 264
    :cond_7
    move-object v2, v15

    .line 269
    .local v2, "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    monitor-enter v9

    .line 270
    :try_start_2
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_8

    .line 271
    :try_start_3
    const-string v0, "BootLoader.MetaInfo"

    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v19, v2

    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .local v19, "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :try_start_4
    const-string v2, "Bundle has already loaded(synchronized): "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_6

    .end local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    goto :goto_6

    .line 274
    .end local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :cond_8
    move-object/from16 v19, v2

    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :try_start_5
    invoke-direct {v1, v10, v8}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/BaseMetaInfo;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v2, v0

    .line 275
    .end local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    invoke-virtual {v0, v10, v2}, Lcom/alipay/mobile/framework/DescriptionManager;->addDescriptionsFromMetaInfo(Ljava/lang/String;Lcom/alipay/mobile/framework/BaseMetaInfo;)V

    .line 276
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 252
    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "finish":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v14    # "key":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_3

    .line 278
    .restart local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v14    # "key":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :catchall_3
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_6

    .end local v19    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    .restart local v2    # "metaInfo":Lcom/alipay/mobile/framework/BaseMetaInfo;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v2

    :goto_6
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "finish":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_5
    move-exception v0

    goto :goto_6

    .line 262
    .end local v18    # "packages":Ljava/util/Set;
    .local v2, "packages":Ljava/util/Set;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "packages":Ljava/util/Set;
    .restart local v18    # "packages":Ljava/util/Set;
    :goto_7
    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7

    .line 253
    .end local v9    # "finish":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v14    # "key":Ljava/lang/String;
    .end local v18    # "packages":Ljava/util/Set;
    .restart local v2    # "packages":Ljava/util/Set;
    :cond_9
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .line 294
    .end local v2    # "packages":Ljava/util/Set;
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v18    # "packages":Ljava/util/Set;
    goto/16 :goto_3

    .line 252
    .end local v18    # "packages":Ljava/util/Set;
    .restart local v2    # "packages":Ljava/util/Set;
    :cond_a
    move-object/from16 v18, v2

    .end local v2    # "packages":Ljava/util/Set;
    .restart local v18    # "packages":Ljava/util/Set;
    goto :goto_8

    .line 243
    .end local v18    # "packages":Ljava/util/Set;
    .restart local v2    # "packages":Ljava/util/Set;
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v2    # "packages":Ljava/util/Set;
    .restart local v18    # "packages":Ljava/util/Set;
    goto/16 :goto_1

    .line 241
    .end local v7    # "classLoader":Ljava/lang/ClassLoader;
    .end local v18    # "packages":Ljava/util/Set;
    .restart local v2    # "packages":Ljava/util/Set;
    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 298
    .end local v2    # "packages":Ljava/util/Set;
    .restart local v18    # "packages":Ljava/util/Set;
    :goto_8
    iget-object v0, v1, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->g:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 299
    new-instance v2, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;

    invoke-direct {v2, v1, v10}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;-><init>(Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 306
    const-string v0, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "loadBundle(bundleName="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "). cost:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v10    # "bundleName":Ljava/lang/String;
    .end local v11    # "start":J
    .end local v13    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    .end local v18    # "packages":Ljava/util/Set;
    :cond_e
    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_1

    .line 310
    :cond_f
    return-void
.end method

.method public loadBundleImpl()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->isSupportSubThreadBroadcast()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/DescriptionManager;->findBroadcastReceiverDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 177
    .local v2, "broadcastReceiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 178
    .end local v2    # "broadcastReceiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/DescriptionManager;->findValveDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 184
    .local v1, "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 185
    .end local v1    # "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method

.method public loadBundleServices()V
    .locals 6

    .line 102
    invoke-static {}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundleNames()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    .local v1, "allBundle":Ljava/util/Collection;
    move-object v1, v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    .local v0, "loadBundles":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 106
    aget-object v3, v0, v2

    .line 107
    .local v3, "bundleName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/DescriptionManager;->isLazyBundle(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadBundleServices,skip lazy bundle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BootLoader"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_0
    invoke-direct {p0, v3}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/String;)V

    .line 105
    .end local v3    # "bundleName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public preloadBundleMetaInfoClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 313
    const-string v0, ".MetaInfo]"

    const-string v1, " ["

    const-string v2, "BootLoader.MetaInfo"

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    .line 314
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v3

    .line 315
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 317
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".MetaInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 318
    .local v4, "clazz":Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Load MetaInfo Class Success: BundleName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    return-object v4

    .line 320
    .end local v4    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception v4

    .line 321
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to load MetaInfo class: BundleName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v4    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHelperHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->g:Landroid/os/Handler;

    .line 91
    return-void
.end method

.class public Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;
.super Lcom/alipay/mobile/framework/DescriptionManager;
.source "DescriptionManagerImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/PackageDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/alipay/mobile/framework/DescriptionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/framework/DescriptionManager;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->c:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    .line 61
    const-string/jumbo v0, "metainfos.cfg"

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->j:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "metainfos-ext.cfg"

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->k:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->l:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a()V

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v0, "descriptionMap":Ljava/util/Map;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v1, "readerMsg":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getInstance()Lcom/alipay/mobile/framework/MetaInfoCfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/MetaInfoCfg;->hasDescriptionsSave()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    sget-object v2, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string v3, "loadOriginalDescriptions by MetaInfoCfg"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 483
    invoke-static {}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getInstance()Lcom/alipay/mobile/framework/MetaInfoCfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getDescriptions()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 484
    .local v3, "javaDescriptionMap":Ljava/util/Map;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 485
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 487
    .end local v3    # "javaDescriptionMap":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 488
    :cond_1
    sget-object v2, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string v3, "loadOriginalDescriptions by metainfo.cfg"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v2, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    new-instance v3, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;-><init>(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;Ljava/lang/StringBuilder;)V

    invoke-direct {v2, v3}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>(Landroid/util/Printer;)V

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    new-instance v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;-><init>(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;Ljava/util/Map;)V

    .line 494
    const-string/jumbo v5, "metainfos.cfg"

    invoke-virtual {v2, v3, v5, v4}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    .line 512
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    sget-object v2, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string v3, "loadDescriptionsFromCfg fail!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionCfgLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    return-object v0
.end method

.method private a(Z)Ljava/util/Map;
    .locals 8
    .param p1, "saveCfg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "metaInfoOperator":Lcom/alipay/mobile/framework/util/MetaInfoOperator;
    invoke-static {}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getInstance()Lcom/alipay/mobile/framework/MetaInfoCfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/MetaInfoCfg;->hasDescriptionsSave()Z

    move-result v1

    const-string v2, "load"

    const/4 v3, 0x0

    const-string/jumbo v4, "plugins"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 354
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v6, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->k:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v1, "extCfgFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 357
    .local v3, "extCfgMap":Ljava/util/Map;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoCfg(Ljava/io/File;)Ljava/util/Map;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 363
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v4

    move-object v5, v4

    .line 361
    .local v5, "tr":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readMetaInfoExtCfg fail from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 366
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v4, v5

    .line 367
    .local v4, "descriptionMap":Ljava/util/Map;
    move-object v4, v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 370
    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfoCfg(Ljava/util/Map;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    goto :goto_1

    .line 373
    :catchall_1
    move-exception v2

    .line 374
    .local v2, "tr":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v6, "writeMetaInfoExtCfg to file"

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-object v4

    .line 381
    .end local v1    # "extCfgFile":Ljava/io/File;
    .end local v3    # "extCfgMap":Ljava/util/Map;
    .end local v4    # "descriptionMap":Ljava/util/Map;
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v6, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->j:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v5

    .line 383
    .local v3, "cfgFile":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 385
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoCfg(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    move-object v4, v5

    .line 386
    .local v4, "readFromCfc":Ljava/util/Map;
    move-object v4, v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_3

    .line 387
    return-object v4

    .line 392
    .end local v4    # "readFromCfc":Ljava/util/Map;
    :cond_3
    goto :goto_2

    .line 389
    :catchall_2
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "readMetaInfoCfg fail from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 395
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 398
    .local v1, "descriptionMap":Ljava/util/Map;
    if-eqz p1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 400
    :try_start_3
    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfoCfg(Ljava/util/Map;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 403
    goto :goto_3

    .line 401
    :catchall_3
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v5, "writeMetaInfoCfg to file"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 75
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.DescriptionManagerImpl_init.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V
    .locals 5
    .param p1, "microDescription"    # Lcom/alipay/mobile/framework/MicroDescription;
    .param p2, "bundleName"    # Ljava/lang/String;

    .line 957
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 960
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 961
    .local v2, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 962
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 969
    nop

    .end local v2    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    return-void

    .line 963
    .restart local v2    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "classloader not found for:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "microDescription":Lcom/alipay/mobile/framework/MicroDescription;
    .end local p2    # "bundleName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    .restart local p1    # "microDescription":Lcom/alipay/mobile/framework/MicroDescription;
    .restart local p2    # "bundleName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleBundleClassLoaderNotFound(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZZ)V
    .locals 16
    .param p1, "revertBundleNames"    # Ljava/util/Collection;
    .param p2, "addedBundleNames"    # Ljava/util/Collection;
    .param p3, "reusedBundleLocations"    # Ljava/util/Map;
    .param p4, "effective"    # Z
    .param p5, "needSaveOuter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 607
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateMetaInfoCfg,revertBundleNames="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",addedBundleNames="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",effective="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",needSaveOuter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v7, Lcom/alipay/mobile/framework/util/MetaInfoOperator;

    iget-object v8, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;-><init>(Landroid/content/Context;)V

    .line 614
    .local v7, "metaInfoOperator":Lcom/alipay/mobile/framework/util/MetaInfoOperator;
    const/4 v8, 0x0

    .line 617
    .local v8, "needSave":Z
    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Z)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v11

    .line 618
    .local v12, "currentDescriptionMap":Ljava/util/Map;
    move-object v12, v10

    if-nez v10, :cond_0

    .line 619
    const-string v9, "currentDescriptionMap is null"

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void

    .line 624
    :cond_0
    if-eqz v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 625
    const-string/jumbo v0, "update"

    invoke-direct {v1, v0}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 631
    .local v0, "originalDescriptionMap":Ljava/util/Map;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 634
    .local v13, "revertBundle":Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 635
    const/4 v8, 0x1

    .line 639
    :cond_1
    if-eqz v5, :cond_2

    .line 640
    iget-object v14, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v14, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v14, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v14, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v14, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 649
    :cond_3
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 650
    .local v11, "originalDescriptions":Ljava/util/List;
    move-object v11, v14

    if-eqz v14, :cond_4

    .line 651
    const/4 v8, 0x1

    .line 652
    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    if-eqz v5, :cond_4

    .line 656
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/framework/MicroDescription;

    .line 657
    .local v15, "desc":Lcom/alipay/mobile/framework/MicroDescription;
    invoke-virtual {v1, v13, v15}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 658
    .end local v15    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_1

    .line 662
    .end local v11    # "originalDescriptions":Ljava/util/List;
    .end local v13    # "revertBundle":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 631
    :cond_5
    move-object v11, v10

    .line 666
    .end local v0    # "originalDescriptionMap":Ljava/util/Map;
    :cond_6
    if-eqz v3, :cond_e

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 667
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 669
    .local v11, "addedBundle":Ljava/lang/String;
    const/4 v13, 0x0

    .line 671
    .local v13, "bundleFile":Ljava/io/File;
    if-eqz v4, :cond_7

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 672
    new-instance v0, Ljava/io/File;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_3

    .line 674
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getBundleLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .line 678
    goto :goto_3

    .line 676
    :catchall_0
    move-exception v0

    .line 677
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v14, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 687
    :cond_8
    invoke-interface {v12, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 688
    const/4 v8, 0x1

    .line 692
    :cond_9
    if-eqz v5, :cond_a

    .line 693
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_a
    const/4 v14, 0x0

    .line 703
    .local v14, "srcDescriptions":Ljava/util/List;
    :try_start_1
    invoke-virtual {v7, v13}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoFromZipFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v0

    .line 706
    goto :goto_4

    .line 704
    :catchall_1
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 705
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v15, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v9, "readMetaInfoFromZipFile"

    invoke-static {v15, v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    if-eqz v14, :cond_c

    .line 710
    const/4 v0, 0x1

    .line 711
    .end local v8    # "needSave":Z
    .local v0, "needSave":Z
    invoke-interface {v12, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    if-eqz v5, :cond_b

    .line 715
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/framework/MicroDescription;

    .line 716
    .local v9, "desc":Lcom/alipay/mobile/framework/MicroDescription;
    invoke-virtual {v1, v11, v9}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 717
    .end local v9    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_5

    .line 720
    .end local v11    # "addedBundle":Ljava/lang/String;
    .end local v13    # "bundleFile":Ljava/io/File;
    .end local v14    # "srcDescriptions":Ljava/util/List;
    :cond_b
    move v8, v0

    .end local v0    # "needSave":Z
    .restart local v8    # "needSave":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 681
    .restart local v13    # "bundleFile":Ljava/io/File;
    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    invoke-virtual {v0, v11, v13}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleBundleLocationNotFound(Ljava/lang/String;Ljava/io/File;)V

    .line 682
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "bundle location not found for : "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 724
    .end local v13    # "bundleFile":Ljava/io/File;
    :cond_e
    if-eqz v8, :cond_12

    if-eqz v6, :cond_12

    .line 725
    invoke-static {}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getInstance()Lcom/alipay/mobile/framework/MetaInfoCfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/MetaInfoCfg;->hasDescriptionsSave()Z

    move-result v0

    const-string/jumbo v9, "plugins"

    const-string/jumbo v10, "writeMetaInfoCfg fail"

    if-eqz v0, :cond_11

    .line 728
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    iget-object v13, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->k:Ljava/lang/String;

    invoke-direct {v0, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    .local v0, "extCfgFile":Ljava/io/File;
    const-string/jumbo v9, "save"

    invoke-direct {v1, v9}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 730
    .local v11, "extCfgMap":Ljava/util/Map;
    move-object v11, v9

    if-eqz v9, :cond_f

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    .line 731
    invoke-virtual {v7, v11, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfoCfg(Ljava/util/Map;Ljava/io/File;)V

    .line 732
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "writeMetaInfoExtCfg:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 734
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v9

    .line 735
    .local v9, "result":Z
    sget-object v13, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "delete MetaInfoExtCfg:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    if-nez v9, :cond_10

    .line 737
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 742
    .end local v0    # "extCfgFile":Ljava/io/File;
    .end local v9    # "result":Z
    .end local v11    # "extCfgMap":Ljava/util/Map;
    :cond_10
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    invoke-static {v9, v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    .end local v0    # "e":Ljava/io/IOException;
    return-void

    .line 746
    :cond_11
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v11, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    iget-object v11, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->j:Ljava/lang/String;

    invoke-direct {v0, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 747
    .local v0, "cfgFile":Ljava/io/File;
    invoke-virtual {v7, v12, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfoCfg(Ljava/util/Map;Ljava/io/File;)V

    .line 748
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "writeMetaInfoCfg:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 751
    .end local v0    # "cfgFile":Ljava/io/File;
    return-void

    .line 749
    :catch_1
    move-exception v0

    .line 750
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    invoke-static {v9, v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 754
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "oriMap"    # Ljava/util/Map;
    .param p1, "extMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 416
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    if-eqz p0, :cond_0

    .line 418
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 421
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "componentName"    # Ljava/lang/String;

    .line 1083
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getLazyBundles()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1084
    .local v2, "lazyBundlesMap":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1086
    .local v3, "bundle":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getBundleNameFromLegcyCfg:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-object v3

    .line 1090
    .end local v3    # "bundle":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1093
    :cond_1
    return-object v1
.end method

.method private static b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .param p0, "currentMap"    # Ljava/util/Map;
    .param p1, "oriMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 430
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 431
    if-eqz p1, :cond_a

    .line 432
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 434
    .local v1, "extMap":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 435
    .local v0, "currentEntry":Ljava/util/Map$Entry;
    move-object v0, v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 436
    .local v6, "currentBundleName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 437
    .local v7, "currentDescriptions":Ljava/util/List;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 440
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 442
    .local v3, "oriDescriptions":Ljava/util/List;
    move-object v3, v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_4

    .line 446
    :cond_1
    const/4 v8, 0x1

    .line 447
    .local v8, "allSame":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/framework/MicroDescription;

    .line 448
    .local v4, "currentDesItem":Lcom/alipay/mobile/framework/MicroDescription;
    move-object v4, v10

    if-eqz v10, :cond_2

    .line 451
    const/4 v10, 0x0

    .line 452
    .local v10, "foundAndSame":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/framework/MicroDescription;

    .line 453
    .local v5, "oriDesItem":Lcom/alipay/mobile/framework/MicroDescription;
    move-object v5, v12

    if-eqz v12, :cond_3

    .line 456
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/framework/MicroDescription;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 457
    const/4 v10, 0x1

    .line 458
    goto :goto_3

    .line 460
    .end local v5    # "oriDesItem":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_4
    goto :goto_2

    .line 461
    :cond_5
    :goto_3
    and-int/2addr v8, v10

    .line 462
    .end local v4    # "currentDesItem":Lcom/alipay/mobile/framework/MicroDescription;
    .end local v10    # "foundAndSame":Z
    goto :goto_1

    .line 463
    :cond_6
    if-nez v8, :cond_7

    .line 464
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .end local v0    # "currentEntry":Ljava/util/Map$Entry;
    .end local v3    # "oriDescriptions":Ljava/util/List;
    .end local v6    # "currentBundleName":Ljava/lang/String;
    .end local v7    # "currentDescriptions":Ljava/util/List;
    .end local v8    # "allSame":Z
    :cond_7
    goto :goto_0

    .line 443
    .restart local v6    # "currentBundleName":Ljava/lang/String;
    .restart local v7    # "currentDescriptions":Ljava/util/List;
    :cond_8
    :goto_4
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    goto :goto_0

    .line 467
    .end local v6    # "currentBundleName":Ljava/lang/String;
    .end local v7    # "currentDescriptions":Ljava/util/List;
    :cond_9
    return-object v1

    .line 469
    .end local v1    # "extMap":Ljava/util/Map;
    :cond_a
    return-object p0

    .line 473
    :cond_b
    return-object v0
.end method

.method private b()V
    .locals 17

    .line 93
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 94
    .local v3, "productVersion":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "metainfos.cfg_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->j:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "metainfos-ext.cfg_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->k:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cfgFileName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " extCfgFileName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v4

    .line 101
    .local v4, "isLite":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->getLiteBundleList()[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "mapList":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .line 104
    .local v6, "mList":Ljava/util/Set;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 105
    aget-object v7, v5, v0

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "mytest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mList: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 110
    .local v7, "start":J
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getReusedBundleLocations()Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "reusedBundleLocations":Ljava/util/Map;
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateReusedBundles:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v9, v0, v10}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v0    # "reusedBundleLocations":Ljava/util/Map;
    :cond_2
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v9, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v10, "updateReusedBundles fail"

    invoke-static {v9, v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 126
    .local v0, "saveCfg":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 127
    const/4 v0, 0x0

    move v9, v0

    goto :goto_2

    .line 126
    :cond_4
    move v9, v0

    .line 132
    .end local v0    # "saveCfg":Z
    .local v9, "saveCfg":Z
    :goto_2
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v10, "app_version"

    const-string/jumbo v11, "string"

    iget-object v12, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v10, v11, v12}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    .line 133
    .local v10, "appVersionResId":I
    move v10, v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "resDefVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".BuildConfig"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    move-object v12, v2

    .line 137
    .local v12, "BuildConfigClazz":Ljava/lang/Class;
    const-string v13, "app_version"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 139
    .local v11, "classDefVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 140
    sget-object v13, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "description cfg is stale, resDefVersion"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " vs "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v13, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v13}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v13

    invoke-virtual {v13, v0, v11}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionCfgStale(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    const/4 v9, 0x0

    .line 147
    .end local v0    # "resDefVersion":Ljava/lang/String;
    .end local v10    # "appVersionResId":I
    .end local v11    # "classDefVersion":Ljava/lang/String;
    .end local v12    # "BuildConfigClazz":Ljava/lang/Class;
    :cond_5
    goto :goto_3

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v10, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "read appVersion fail:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-direct {v1, v9}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Z)Ljava/util/Map;

    move-result-object v10

    .line 150
    .local v10, "descriptionsMap":Ljava/util/Map;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    .line 152
    .local v11, "cost":J
    if-eqz v10, :cond_a

    .line 153
    iget-object v13, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->c:Ljava/util/Set;

    monitor-enter v13

    .line 154
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->c:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 158
    .local v13, "bundleName":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 159
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 163
    const-string/jumbo v14, "mytest"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string/jumbo v0, "pass bundle: "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 159
    :cond_6
    move-object/from16 v16, v0

    goto :goto_4

    .line 158
    :cond_7
    move-object/from16 v16, v0

    .line 165
    :goto_5
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    .local v2, "descs":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_8

    .line 170
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/framework/MicroDescription;

    .line 171
    .local v14, "desc":Lcom/alipay/mobile/framework/MicroDescription;
    invoke-virtual {v1, v13, v14}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 172
    .end local v14    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_6

    .line 156
    .end local v2    # "descs":Ljava/util/List;
    .end local v13    # "bundleName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v16

    goto :goto_4

    .line 175
    :cond_9
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "loadDescriptionsFromCfg, count:"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",cost:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",keySet:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 155
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 182
    :cond_a
    :goto_7
    return-void
.end method

.method public static preloadDescriptionClass(Ljava/util/Collection;)V
    .locals 6
    .param p0, "descriptions"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;)V"
        }
    .end annotation

    .line 585
    if-eqz p0, :cond_3

    .line 586
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/MicroDescription;

    .line 587
    .local v1, "description":Lcom/alipay/mobile/framework/MicroDescription;
    move-object v1, v2

    if-eqz v2, :cond_2

    .line 588
    instance-of v2, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v2, :cond_1

    .line 589
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/MicroDescription;->getClazz()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    goto :goto_0

    .line 595
    :catchall_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preload description failed!, className:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .end local v1    # "description":Lcom/alipay/mobile/framework/MicroDescription;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    goto :goto_0

    .line 601
    :cond_3
    return-void
.end method


# virtual methods
.method public addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V
    .locals 5
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "description"    # Lcom/alipay/mobile/framework/MicroDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;)V"
        }
    .end annotation

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 198
    :cond_0
    instance-of v0, p2, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 199
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-object v2, v1

    .line 200
    .local v2, "app":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",invalid app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 206
    .local v1, "applicationDescriptions":Ljava/util/Map;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",duplicate app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "applicationDescriptions":Ljava/util/Map;
    .end local v2    # "app":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_3
    return-void

    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v0, :cond_8

    .line 216
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    move-object v2, v1

    .line 217
    .local v2, "service":Lcom/alipay/mobile/framework/service/ServiceDescription;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 218
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",invalid service:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 223
    .local v1, "serviceDescriptions":Ljava/util/Map;
    move-object v1, v0

    if-nez v0, :cond_6

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_6
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 229
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",duplicate service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v1    # "serviceDescriptions":Ljava/util/Map;
    .end local v2    # "service":Lcom/alipay/mobile/framework/service/ServiceDescription;
    :cond_7
    return-void

    :cond_8
    instance-of v0, p2, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    if-eqz v0, :cond_c

    .line 233
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    move-object v2, v1

    .line 234
    .local v2, "receiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    .local v1, "receiverDescriptions":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_a

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v1    # "receiverDescriptions":Ljava/util/List;
    .end local v2    # "receiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    return-void

    .line 235
    .restart local v2    # "receiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    :cond_b
    :goto_0
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",invalid receiver:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 246
    .end local v2    # "receiver":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    :cond_c
    instance-of v0, p2, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    if-eqz v0, :cond_f

    .line 247
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    move-object v2, v1

    .line 248
    .local v2, "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getPipelineName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 249
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",invalid valve:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    .local v1, "valveDescriptions":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_e

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v1    # "valveDescriptions":Ljava/util/List;
    .end local v2    # "valve":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    return-void

    :cond_f
    instance-of v0, p2, Lcom/alipay/mobile/framework/PackageDescription;

    if-eqz v0, :cond_16

    .line 260
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lazy_bundle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 261
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/PackageDescription;

    move-object v2, v1

    .line 262
    .local v2, "lazyBundleDes":Lcom/alipay/mobile/framework/PackageDescription;
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/PackageDescription;->getInfoSet()Ljava/util/Set;

    move-result-object v0

    move-object v3, v1

    .line 263
    .local v3, "lazy_detail_set":Ljava/util/Set;
    move-object v3, v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 265
    .local v1, "targetDetailSet":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_10

    .line 266
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_10
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 270
    .end local v1    # "targetDetailSet":Ljava/util/Set;
    return-void

    .line 271
    :cond_11
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", invalid lazy_bundle info"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v2    # "lazyBundleDes":Lcom/alipay/mobile/framework/PackageDescription;
    .end local v3    # "lazy_detail_set":Ljava/util/Set;
    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 274
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/framework/PackageDescription;

    move-object v2, v1

    .line 275
    .local v2, "packageDes":Lcom/alipay/mobile/framework/PackageDescription;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/PackageDescription;->getInfo()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/PackageDescription;->getInfo()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_13

    goto :goto_1

    .line 280
    :cond_13
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 281
    .local v1, "packageDescriptions":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_14

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_14
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    .end local v1    # "packageDescriptions":Ljava/util/List;
    :cond_15
    :goto_1
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", invalid package_name info"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 288
    .end local v2    # "packageDes":Lcom/alipay/mobile/framework/PackageDescription;
    :cond_16
    :goto_2
    return-void

    .line 194
    :cond_17
    :goto_3
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",invalid description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public addDescriptionsFromMetaInfo(Ljava/lang/String;Lcom/alipay/mobile/framework/BaseMetaInfo;)V
    .locals 7
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "metaInfo"    # Lcom/alipay/mobile/framework/BaseMetaInfo;

    .line 764
    if-nez p2, :cond_0

    .line 765
    return-void

    .line 768
    :cond_0
    const/4 v0, 0x0

    .line 769
    .local v0, "appCount":I
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 771
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 772
    .local v2, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    invoke-virtual {p0, p1, v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 773
    .end local v2    # "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    goto :goto_0

    .line 776
    :cond_1
    const/4 v1, 0x0

    .line 777
    .local v1, "serviceCount":I
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 778
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 779
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 780
    .local v3, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 781
    .end local v3    # "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    goto :goto_1

    .line 784
    :cond_2
    const/4 v2, 0x0

    .line 785
    .local v2, "valveCount":I
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getValves()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 786
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getValves()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 787
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getValves()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 788
    .local v4, "valveDescription":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    invoke-virtual {p0, p1, v4}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 789
    .end local v4    # "valveDescription":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    goto :goto_2

    .line 792
    :cond_3
    const/4 v3, 0x0

    .line 793
    .local v3, "receiverCount":I
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 794
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 795
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 796
    .local v5, "receiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    invoke-virtual {p0, p1, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 797
    .end local v5    # "receiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    goto :goto_3

    .line 800
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 801
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 802
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "empty descriptions from MetaInfo, bundle="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 804
    :cond_5
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addDescriptionsFromMetaInfo bundle="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",(app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",valve:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",receiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_6
    return-void
.end method

.method public findApplicationDescription(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "appIdFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v0, "foundApplicationDescriptions":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 852
    .local v4, "bundleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 853
    .local v2, "descriptions":Ljava/util/Map;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 857
    if-eqz p1, :cond_2

    .line 858
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 859
    .local v3, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 860
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 862
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    goto :goto_2

    .line 865
    .end local v3    # "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_1
    goto :goto_0

    .line 866
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 867
    .local v5, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 869
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    .end local v5    # "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    goto :goto_1

    .line 873
    .end local v2    # "descriptions":Ljava/util/Map;
    .end local v4    # "bundleName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 875
    :cond_4
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 876
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findApplicationDescription:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_5
    return-object v0
.end method

.method public findBroadcastReceiverDescription(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "msgCodeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v0, "foundBroadcastReceiverDescriptions":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 923
    .local v5, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->isLazyBundle(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 924
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    sget-object v6, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "findBroadcastReceiverDescription ignore:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 932
    .local v2, "descriptions":Ljava/util/List;
    move-object v2, v6

    if-eqz v6, :cond_0

    .line 936
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 937
    .local v3, "desc":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    move-object v3, v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v7

    .line 938
    .local v4, "msgCodes":[Ljava/lang/String;
    move-object v4, v7

    if-eqz v7, :cond_3

    if-eqz p1, :cond_2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 939
    :cond_2
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 940
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v3    # "desc":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    .end local v4    # "msgCodes":[Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 943
    .end local v2    # "descriptions":Ljava/util/List;
    .end local v5    # "bundleName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 945
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 946
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findBroadcastReceiverDescription:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_6
    return-object v0
.end method

.method public findServiceDescription(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "serviceNameFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v0, "foundServiceDescriptions":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 814
    .local v4, "bundleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 815
    .local v2, "descriptions":Ljava/util/Map;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 819
    if-eqz p1, :cond_2

    .line 820
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 821
    .local v3, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 822
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 824
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    goto :goto_2

    .line 827
    .end local v3    # "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    :cond_1
    goto :goto_0

    .line 828
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 829
    .local v5, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    iget-object v6, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 831
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v5    # "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    goto :goto_1

    .line 834
    .end local v2    # "descriptions":Ljava/util/Map;
    .end local v4    # "bundleName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 836
    :cond_4
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 837
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findServiceDescription:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 841
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleServiceNotFound(Ljava/lang/String;)V

    .line 842
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "service not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_6
    return-object v0
.end method

.method public findValveDescription(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "pipelineFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v0, "foundValveDescriptions":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 887
    .local v3, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->isLazyBundle(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->i:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 888
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 889
    sget-object v4, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "findValveDescription ignore:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 895
    .local v2, "descriptions":Ljava/util/List;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 898
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 899
    .local v5, "desc":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    if-eqz p1, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getPipelineName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 900
    :cond_2
    invoke-direct {p0, v5, v3}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 901
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v5    # "desc":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    :cond_3
    goto :goto_1

    .line 904
    .end local v2    # "descriptions":Ljava/util/List;
    .end local v3    # "bundleName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 906
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 907
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findValveDescription:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 911
    sget-object v1, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "valve not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_7
    return-object v0
.end method

.method public getBundleNameByAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 1012
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1013
    return-object v1

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1017
    .local v2, "bundleName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1018
    .local v1, "descriptions":Ljava/util/Map;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 1022
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1023
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBundleNameByAppId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    return-object v2

    .line 1026
    .end local v1    # "descriptions":Ljava/util/Map;
    .end local v2    # "bundleName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1029
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundleNameByServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 1037
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1038
    return-object v1

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1042
    .local v2, "bundleName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1043
    .local v1, "descriptions":Ljava/util/Map;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 1047
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1048
    sget-object v0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBundleNameByServiceName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-object v2

    .line 1051
    .end local v1    # "descriptions":Ljava/util/Map;
    .end local v2    # "bundleName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1054
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBundleSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v0, "rBundleSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->c:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 184
    .end local v0    # "rBundleSet":Ljava/util/Set;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription(Ljava/lang/String;ZZZZ)Ljava/util/List;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "containApplication"    # Z
    .param p3, "containService"    # Z
    .param p4, "containReceiver"    # Z
    .param p5, "containValve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 295
    return-object v0

    .line 298
    :cond_0
    const/4 v1, 0x0

    .line 300
    .local v1, "foundDescs":Ljava/util/List;
    if-eqz p2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 302
    .local v0, "apps":Ljava/util/Map;
    move-object v0, v2

    if-eqz v2, :cond_1

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    move-object v1, v2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    .end local v0    # "apps":Ljava/util/Map;
    :cond_1
    if-eqz p3, :cond_3

    .line 311
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 312
    .local v0, "services":Ljava/util/Map;
    move-object v0, v2

    if-eqz v2, :cond_3

    .line 313
    if-nez v1, :cond_2

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 317
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    .end local v0    # "services":Ljava/util/Map;
    :cond_3
    if-eqz p4, :cond_5

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 323
    .local v0, "receivers":Ljava/util/List;
    move-object v0, v2

    if-eqz v2, :cond_5

    .line 324
    if-nez v1, :cond_4

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 327
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    .end local v0    # "receivers":Ljava/util/List;
    :cond_5
    if-eqz p5, :cond_7

    .line 332
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 333
    .local v0, "valves":Ljava/util/List;
    move-object v0, v2

    if-eqz v2, :cond_7

    .line 334
    if-nez v1, :cond_6

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 337
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    .end local v0    # "valves":Ljava/util/List;
    :cond_7
    return-object v1
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

    .line 1098
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->l:Ljava/util/Map;

    return-object v0

    .line 1101
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1062
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1063
    return-object v1

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v1

    .line 1067
    .local v2, "packageDescriptions":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1071
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1072
    .local v0, "packageNames":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/PackageDescription;

    .line 1073
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/PackageDescription;->getInfoSet()Ljava/util/Set;

    move-result-object v4

    .line 1074
    .local v1, "partPackageSet":Ljava/util/Set;
    move-object v1, v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1075
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1077
    .end local v1    # "partPackageSet":Ljava/util/Set;
    :cond_2
    goto :goto_0

    .line 1079
    :cond_3
    return-object v0

    .line 1068
    .end local v0    # "packageNames":Ljava/util/Set;
    :cond_4
    :goto_1
    return-object v1
.end method

.method public isLazyBundle(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 975
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 976
    return v0

    .line 980
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getLazyBundles()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 981
    .local v2, "lazyBundlesMap":Ljava/util/Map;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    const/4 v0, 0x1

    return v0

    .line 984
    :cond_1
    return v0
.end method

.method public preload()V
    .locals 6

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 560
    .local v1, "serviceEntries":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 561
    .local v2, "serviceCollections":Ljava/util/Collection;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 562
    .local v4, "description":Lcom/alipay/mobile/framework/service/ServiceDescription;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 563
    .end local v4    # "description":Lcom/alipay/mobile/framework/service/ServiceDescription;
    goto :goto_1

    .line 564
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->preloadDescriptionClass(Ljava/util/Collection;)V

    .line 565
    .end local v1    # "serviceEntries":Ljava/util/Map$Entry;
    .end local v2    # "serviceCollections":Ljava/util/Collection;
    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 568
    .local v1, "valveEntries":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 569
    .local v2, "valveCollection":Ljava/util/Collection;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 570
    .local v4, "description":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 571
    .end local v4    # "description":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    goto :goto_3

    .line 572
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->preloadDescriptionClass(Ljava/util/Collection;)V

    .line 573
    .end local v1    # "valveEntries":Ljava/util/Map$Entry;
    .end local v2    # "valveCollection":Ljava/util/Collection;
    goto :goto_2

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 576
    .local v1, "receiverEntries":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 577
    .local v2, "receiverCollection":Ljava/util/Collection;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 578
    .local v4, "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/String;)V

    .line 579
    .end local v4    # "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    goto :goto_5

    .line 580
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->preloadDescriptionClass(Ljava/util/Collection;)V

    .line 581
    .end local v1    # "receiverEntries":Ljava/util/Map$Entry;
    .end local v2    # "receiverCollection":Ljava/util/Collection;
    goto :goto_4

    .line 582
    :cond_5
    return-void
.end method

.method public updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "revertBundleNames"    # Ljava/util/Collection;
    .param p2, "addedBundleNames"    # Ljava/util/Collection;
    .param p3, "reusedBundleLocations"    # Ljava/util/Map;
    .param p4, "effective"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 532
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZZ)V

    .line 533
    return-void
.end method

.method public updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZZ)V
    .locals 3
    .param p1, "revertBundleNames"    # Ljava/util/Collection;
    .param p2, "addedBundleNames"    # Ljava/util/Collection;
    .param p3, "reusedBundleLocations"    # Ljava/util/Map;
    .param p4, "effective"    # Z
    .param p5, "needSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.updateDescriptionsFromMetaInfoCfg.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 543
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 1
    .param p1, "revertBundleNames"    # Ljava/util/Collection;
    .param p2, "addedBundleNames"    # Ljava/util/Collection;
    .param p3, "effective"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Z)V

    .line 525
    return-void
.end method

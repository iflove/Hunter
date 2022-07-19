.class public Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;
.super Ljava/lang/Object;
.source "ResourcesManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/resources/ResourcesManager;


# static fields
.field public static final APPLICATION_RESOURCES:Ljava/lang/String; = "application_resources"

.field public static final TAG:Ljava/lang/String; = "BundleResources"


# instance fields
.field private final mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

.field private final mCachedResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckedBundles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private final mExtDependNamesMap:Ljava/util/Map;
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

.field private volatile mStreamlineResources:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Lcom/alipay/mobile/quinox/bundle/BundleManager;)V
    .locals 1
    .param p1, "application"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p2, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getInstance()Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mExtDependNamesMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCheckedBundles:Ljava/util/HashMap;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mStreamlineResources:Z

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->computeWhetherStreamlineMode()V

    .line 91
    return-void
.end method

.method private checkArsc(Ljava/lang/String;)Z
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 635
    move-object v0, v2

    const-string v3, "resources.arsc"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 641
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 644
    goto :goto_0

    .line 642
    :catch_0
    move-exception v2

    .line 635
    :goto_0
    return v1

    .line 636
    :catchall_0
    move-exception v2

    .line 637
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "BundleResources"

    const-string v4, "checkArsc failed!"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 639
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 641
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 644
    :goto_1
    goto :goto_2

    .line 642
    :catch_1
    move-exception v2

    goto :goto_1

    .line 647
    :cond_1
    :goto_2
    return v1

    .line 639
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 641
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 644
    goto :goto_3

    .line 642
    :catch_2
    move-exception v2

    .line 644
    :cond_2
    :goto_3
    throw v1
.end method

.method private computeWhetherStreamlineMode()V
    .locals 7

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "streamline":Z
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->e()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    .local v1, "iterator":Ljava/util/Iterator;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "ids":Ljava/util/HashSet;
    const/4 v3, 0x0

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 100
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v3, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containRes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 103
    .local v4, "id":Ljava/lang/Integer;
    const/16 v5, 0x7f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v4    # "id":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 113
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mStreamlineResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "streamline":Z
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "ids":Ljava/util/HashSet;
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BundleResources"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private createHostResources(Z)Landroid/content/res/Resources;
    .locals 6
    .param p1, "needProcessHostResources"    # Z

    const-string v0, "BundleResources"

    const/4 v1, 0x0

    .line 333
    .local v1, "retRes":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->c()V

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 337
    .local v2, "apkSourceDir":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>()V

    const/4 v4, 0x0

    .line 338
    .local v4, "dummy":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    move-object v4, v3

    const-string v5, "application_resources"

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 339
    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 340
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 341
    const/16 v3, 0x7f

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "apkSourceDir: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->m()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v3, "bundles":Ljava/util/Set;
    new-instance v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-direct {v5, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-direct {p0, v5, v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;)Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v5

    .line 349
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->onHostResourcesCreated(Landroid/content/res/Resources;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v2    # "apkSourceDir":Ljava/lang/String;
    .end local v3    # "bundles":Ljava/util/Set;
    .end local v4    # "dummy":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    nop

    .line 355
    return-object v1

    .line 350
    :catchall_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "_depends"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;Z)Landroid/content/res/Resources;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 411
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "->extractBundle->"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    .line 412
    const-string v0, "application_resources"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 413
    nop

    .line 415
    const/16 v6, 0x15

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    .line 416
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    const-string v8, "quinox_use_origin_assets"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 421
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v9, "BundleResources"

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 422
    const-string v10, "config say we can use origin assets when create HostResources"

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 424
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 425
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    .line 426
    if-eqz v11, :cond_2

    if-ne v12, v11, :cond_2

    .line 427
    nop

    .line 428
    const-string v10, "use origin assets when create HostResources"

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v0

    move-object v13, v11

    goto :goto_2

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "we can\'t use origin assets when create HostResources, originResources:"

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " originAssets:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " appAssets:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/res/AssetManager;

    .line 433
    nop

    .line 435
    move-object v13, v11

    const/16 v20, 0x0

    goto :goto_2

    .line 436
    :cond_3
    const-class v10, Landroid/content/res/AssetManager;

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/content/res/AssetManager;

    move/from16 v20, v0

    move-object v13, v11

    .line 439
    :goto_2
    const-class v0, Landroid/content/res/AssetManager;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    const-string v12, "addAssetPath"

    invoke-static {v0, v12, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 441
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 443
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 444
    nop

    .line 445
    const/16 v14, 0x7f

    if-nez v20, :cond_6

    .line 446
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v6, v0, v7

    invoke-virtual {v11, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 449
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 450
    if-nez v6, :cond_4

    .line 451
    const-string v6, "127"

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 453
    :cond_4
    new-instance v8, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_5
    :goto_3
    iget-object v6, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleResourcesHelper:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    iget-object v7, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "BundleResources("

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v13, v11}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->addChromeResources(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    goto :goto_4

    .line 445
    :cond_6
    const/4 v0, 0x0

    .line 461
    :goto_4
    const-string v6, ""

    .line 462
    nop

    .line 464
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    if-eqz v2, :cond_1f

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1f

    .line 468
    nop

    .line 469
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    nop

    .line 474
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 475
    move-object/from16 v18, v10

    iget-object v10, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v10, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_8

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 477
    if-nez v14, :cond_7

    .line 478
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 480
    :cond_7
    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_8
    move-object/from16 v10, v18

    move-object/from16 v0, v19

    goto :goto_5

    .line 483
    :cond_9
    move-object/from16 v19, v0

    if-eqz v14, :cond_a

    .line 484
    invoke-interface {v8, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    :cond_a
    new-instance v0, Lcom/alipay/mobile/quinox/resources/BundleResourcesComparator;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/resources/BundleResourcesComparator;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v0, v19

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 490
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containRes()Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 491
    move-object/from16 v18, v8

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v8

    .line 493
    move/from16 v21, v14

    iget-object v14, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v14, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 495
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    goto :goto_7

    .line 499
    :cond_b
    if-eqz p3, :cond_c

    .line 501
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->checkArsc(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "checkArsc failed, skip addAssetPath for "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    nop

    .line 489
    :goto_7
    move-object/from16 v8, v18

    move-object/from16 v0, v19

    move/from16 v14, v21

    goto :goto_6

    .line 508
    :cond_c
    const/16 v14, 0x7f

    if-eq v14, v8, :cond_1b

    if-eqz v5, :cond_e

    const/16 v14, 0x1b

    if-ne v14, v8, :cond_e

    iget-boolean v14, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mStreamlineResources:Z

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v23, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    goto/16 :goto_f

    .line 510
    :cond_e
    :goto_8
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v14

    .line 512
    move/from16 v22, v5

    iget-object v5, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCheckedBundles:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 513
    if-nez v5, :cond_f

    .line 514
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 515
    iget-object v2, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCheckedBundles:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_f
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 522
    nop

    .line 523
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    .line 524
    move-object/from16 v23, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    .line 525
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 523
    :cond_10
    move-object/from16 v23, v4

    const/4 v4, 0x1

    .line 528
    :goto_9
    if-eqz v4, :cond_14

    .line 529
    move-object/from16 v24, v6

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v14, v2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getBundleResourceLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v6, v16

    invoke-virtual {v11, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 530
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_13

    .line 531
    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 532
    if-eqz v6, :cond_12

    .line 534
    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 535
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v2, p2

    move-object v0, v4

    move-object/from16 v8, v18

    move/from16 v14, v21

    move/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    goto/16 :goto_6

    .line 540
    :cond_12
    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addAssetPath fail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    goto :goto_a

    .line 530
    :cond_13
    move-object/from16 v19, v4

    .line 549
    :goto_a
    move-object/from16 v2, v19

    goto :goto_b

    .line 544
    :cond_14
    move-object/from16 v24, v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "same check fail: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 549
    :goto_b
    :try_start_0
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_15

    .line 550
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 553
    :cond_15
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "extract Bundle for BundleResource() : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v4, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v4, v0, v6, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 555
    nop

    .line 558
    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v14, v2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getBundleResourceLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v11, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 562
    :try_start_4
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_17

    .line 563
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 564
    if-eqz v4, :cond_17

    .line 566
    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 567
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_16
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 575
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_18

    .line 578
    move-object v0, v2

    move-object/from16 v8, v18

    move/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    const/4 v10, 0x1

    goto :goto_e

    .line 583
    :cond_18
    move-object v0, v2

    const/4 v10, 0x1

    goto/16 :goto_10

    .line 572
    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v2, v19

    :goto_c
    const/4 v10, 0x1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_d

    :catchall_4
    move-exception v0

    .line 573
    :goto_d
    :try_start_5
    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_19

    .line 578
    move-object v0, v2

    move-object/from16 v8, v18

    move/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    :goto_e
    const/4 v14, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_6

    .line 583
    :cond_19
    move-object v0, v2

    goto :goto_10

    .line 575
    :catchall_5
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    check-cast v2, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 578
    :cond_1a
    throw v4

    .line 508
    :cond_1b
    move-object/from16 v23, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    goto :goto_f

    .line 490
    :cond_1c
    move-object/from16 v23, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v18, v8

    move/from16 v21, v14

    .line 583
    :goto_f
    move-object/from16 v0, v19

    :goto_10
    move-object/from16 v2, p2

    move-object/from16 v8, v18

    move/from16 v14, v21

    move/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    goto/16 :goto_6

    .line 585
    :cond_1d
    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move/from16 v21, v14

    if-eqz v10, :cond_1e

    .line 586
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(ZLjava/util/Collection;Z)V

    .line 588
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_depends.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    move/from16 v4, v21

    move-object/from16 v3, v23

    goto :goto_11

    .line 467
    :cond_1f
    move-object/from16 v23, v4

    move-object v2, v6

    const/4 v4, 0x0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Host Bundle Self=["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], has no depended Bundle."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_depends.size=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bad cookies:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    if-eqz v4, :cond_20

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appAvailableSpace:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/DiskUtil;->getAppAvailableSpace()J

    move-result-wide v4

    long-to-float v0, v4

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "MB, totalSpace:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/DiskUtil;->getTotalSpace()J

    move-result-wide v5

    long-to-float v0, v5

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_12

    .line 595
    :cond_20
    move-object/from16 v21, v0

    .line 602
    :goto_12
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_21

    .line 604
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 605
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v14, v2

    goto :goto_13

    .line 607
    :cond_21
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 608
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 609
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    move-object v14, v0

    move-object v0, v2

    .line 611
    :goto_13
    new-instance v2, Lcom/alipay/mobile/quinox/resources/BundleResources;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-object v12, v2

    move-object v5, v15

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v12 .. v21}, Lcom/alipay/mobile/quinox/resources/BundleResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_23

    .line 614
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getCheckResult()Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_23

    iget v4, v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 618
    if-nez p3, :cond_22

    .line 619
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3, v5}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 622
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkMsg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "recreateResourceFailed"

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 627
    :cond_23
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-object v2
.end method

.method private depthFirstSearch(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Set;)V
    .locals 4
    .param p1, "shallowDepends"    # Ljava/util/Set;
    .param p2, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p3, "dependNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v1, "dependName":Ljava/lang/String;
    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "-quinox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v3

    .line 129
    .local v2, "_bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependNames()Ljava/util/Set;

    move-result-object v3

    .line 132
    .local v3, "_dependNames":Ljava/util/Set;
    invoke-direct {p0, p1, v2, v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->depthFirstSearch(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Set;)V

    .line 135
    .end local v1    # "dependName":Ljava/lang/String;
    .end local v3    # "_dependNames":Ljava/util/Set;
    :cond_1
    goto :goto_0

    .line 137
    .end local v2    # "_bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    return-void
.end method

.method private varargs getShallowDepends(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "extDependNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "shallowDepends":Ljava/util/Set;
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependNames()Ljava/util/Set;

    move-result-object v1

    .line 167
    .local v1, "dependNames":Ljava/util/Set;
    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mergeDependNames(Ljava/util/Set;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 169
    .local v2, "_dependNames":Ljava/util/Set;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, v3

    .line 170
    invoke-direct {p0, v0, p1, v2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->depthFirstSearch(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Set;)V

    .line 171
    .end local v1    # "dependNames":Ljava/util/Set;
    .end local v2    # "_dependNames":Ljava/util/Set;
    goto :goto_0

    .line 172
    :cond_0
    const-string v1, "BundleResources"

    const-string v2, "getShallowDepends: (bundle==null)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const-string v3, "merged-slink-bundles-res"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v2

    .line 177
    .local v1, "mergeResBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v1, v2

    if-eqz v2, :cond_2

    .line 178
    if-nez v0, :cond_1

    .line 179
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    .line 181
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    return-object v0
.end method

.method private mergeDependNames(Ljava/util/Set;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "dependNames"    # Ljava/util/Set;
    .param p2, "extDependNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "_dependNames":Ljava/util/Set;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 143
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 144
    move-object v0, v2

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 145
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 146
    .local v3, "extDependName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v3    # "extDependName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 150
    move-object v0, v1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 153
    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    .line 154
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v2

    .line 155
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 156
    .restart local v3    # "extDependName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3    # "extDependName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public varargs appendResourcesByBundleName(Lcom/alipay/mobile/quinox/resources/BundleResources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    .line 663
    nop

    .line 664
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 665
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 666
    iget-object v4, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v4, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appendResourcesByBundleName: integers"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BundleResources"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getPackageIDs()Ljava/util/List;

    move-result-object v1

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appendResourcesByBundleName: packageIDs"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 674
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 675
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 676
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 677
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 678
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 680
    :cond_1
    goto :goto_1

    .line 682
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not need to appendResourcesByBundleName(bundleResources="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundleNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 683
    invoke-static {v2, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 686
    :cond_3
    iget-object p2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mExtDependNamesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 687
    if-nez p2, :cond_4

    .line 688
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 690
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 691
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 695
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundle()Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 697
    :goto_3
    return-object p1
.end method

.method public clearCachedBundleResources()V
    .locals 4

    .line 653
    const-string v0, "BundleResources"

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->computeWhetherStreamlineMode()V

    .line 654
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 655
    const-string v1, "clearCachedBundleResources success."

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "stack"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    return-void

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "clearCachedBundleResources"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public getBundleResourceLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "bundlePath"    # Ljava/lang/String;

    .line 291
    return-object p2
.end method

.method public getCacheResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    return-object v0
.end method

.method public getHostResources()Landroid/content/res/Resources;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    const-string v1, "application_resources"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    const/4 v1, 0x0

    .line 302
    .local v1, "retRes":Landroid/content/res/Resources;
    move-object v1, v0

    if-nez v0, :cond_3

    .line 303
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->needProcessHostResources()Z

    move-result v0

    .line 305
    if-eqz v0, :cond_1

    .line 306
    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    .line 310
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    const-string v3, "application_resources"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 312
    move-object v1, v2

    if-eqz v2, :cond_0

    .line 313
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 315
    :cond_0
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createHostResources(Z)Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v2

    .line 316
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "retRes":Landroid/content/res/Resources;
    :try_start_6
    throw v2

    .line 317
    .restart local v1    # "retRes":Landroid/content/res/Resources;
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 319
    :cond_1
    monitor-enter p0

    .line 320
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    const-string v2, "application_resources"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 321
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 322
    monitor-exit p0

    return-object v1

    .line 324
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createHostResources(Z)Landroid/content/res/Resources;

    move-result-object v0

    move-object v1, v0

    .line 325
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 328
    :cond_3
    :goto_0
    return-object v1
.end method

.method public varargs getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 7

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getHostResources()Landroid/content/res/Resources;

    move-result-object p1

    return-object p1

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mStreamlineResources:Z

    if-eqz v0, :cond_1

    .line 194
    const-string p1, "BundleResources"

    const-string p2, "Streamline Mode"

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getHostResources()Landroid/content/res/Resources;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    monitor-enter p0

    .line 206
    if-eqz p2, :cond_5

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_5

    .line 207
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mExtDependNamesMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 210
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mExtDependNamesMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_3
    goto :goto_0

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mExtDependNamesMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 222
    if-nez v1, :cond_f

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->c()V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getShallowDepends(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 230
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1b

    if-eq v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 231
    :goto_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 232
    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 233
    nop

    .line 234
    goto :goto_3

    .line 236
    :cond_7
    goto :goto_2

    .line 231
    :cond_8
    move v3, v1

    .line 237
    :goto_3
    if-eqz v3, :cond_b

    .line 239
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mContext:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "resource_return_subset"

    .line 240
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    if-eqz v1, :cond_9

    .line 242
    const-string p1, "BundleResources"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "get resource for:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but it is a subset of host resource."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->getHostResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    iget-object p2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    monitor-exit p0

    move-object v1, p1

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 248
    :cond_9
    const-string v1, "BundleResources"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resource return subset for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but config say we can not do it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    monitor-enter p0

    .line 250
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 251
    if-nez v0, :cond_a

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;)Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    :cond_a
    monitor-exit p0

    move-object v1, v0

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 257
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->m()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 259
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v5

    if-eq v5, v4, :cond_c

    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_c
    goto :goto_4

    .line 263
    :cond_d
    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    monitor-enter p0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 266
    if-nez v0, :cond_e

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->createResources(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/Collection;)Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    :cond_e
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v0

    .line 272
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    goto :goto_6

    .line 269
    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 277
    :cond_f
    :goto_6
    return-object v1

    .line 220
    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 5
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 704
    .local v0, "updatedResources":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/ResourcesManagerImpl;->mCachedResources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 705
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateConfiguration resources:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " configuration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BundleResources"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v2, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 709
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    goto :goto_0

    .line 711
    .end local v0    # "updatedResources":Ljava/util/Set;
    :cond_1
    return-void
.end method

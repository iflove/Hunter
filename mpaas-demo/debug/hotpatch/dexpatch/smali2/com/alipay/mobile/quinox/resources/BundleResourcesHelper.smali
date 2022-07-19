.class public Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;
.super Ljava/lang/Object;
.source "BundleResourcesHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sInstance:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;


# instance fields
.field private mChromeSourceDirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public static doAddChromeSourceDirs(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z
    .locals 12
    .param p0, "res"    # Ljava/lang/String;
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "mChromeSourceDirs"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "bRet":Z
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const-string v2, "LauncherApplication"

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "addChromeResources() => mChromeSourceDirs: is empty"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "dir":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const-string v7, ".addChromeResources path: "

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v5, v6, :cond_1

    .line 295
    :try_start_0
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".addChromeResources to assetManager done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v3

    .line 299
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 303
    :cond_1
    :try_start_1
    const-class v5, Landroid/content/res/AssetManager;

    const-string v6, "addAssetPathAsSharedLibrary"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 304
    .local v3, "addAssetPathAsSharedLibraryMethod":Ljava/lang/reflect/Method;
    move-object v3, v5

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 305
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".addChromeResources to assetManager done by addAssetPathAsSharedLibrary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    .end local v3    # "addAssetPathAsSharedLibraryMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 308
    :catchall_1
    move-exception v3

    .line 309
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "dir":Ljava/lang/String;
    goto/16 :goto_0

    .line 314
    :cond_2
    :goto_2
    return v0
.end method

.method public static doAddResPackages(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/LinkedHashSet;)Z
    .locals 17
    .param p0, "res"    # Ljava/lang/String;
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "resPackages"    # Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/LinkedHashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)Z"
        }
    .end annotation

    .line 318
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 319
    .local v0, "bRet":Z
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    const-string v4, "LauncherApplication"

    if-nez v3, :cond_0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "doAddResPackages() => resPackages: is empty"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, p2

    goto/16 :goto_3

    .line 322
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v0

    move-object v0, v6

    .end local v0    # "bRet":Z
    .local v5, "bRet":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 323
    .local v0, "pair":Landroid/util/Pair;
    move-object v8, v7

    .end local v0    # "pair":Landroid/util/Pair;
    .local v8, "pair":Landroid/util/Pair;
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 324
    .local v7, "dir":Ljava/lang/String;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 325
    const-string v9, " cookie:"

    const-string v10, ".addResPackages path: "

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 327
    :try_start_0
    new-array v0, v12, [Ljava/lang/Object;

    aput-object v7, v0, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p2

    :try_start_1
    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 328
    .local v6, "cookie":Ljava/lang/Object;
    const/4 v5, 0x1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".addResPackages to assetManager done: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "cookie":Ljava/lang/Object;
    goto :goto_2

    .line 330
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_1
    move-object v6, v0

    .line 331
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    move-object v0, v8

    goto :goto_0

    .line 335
    :cond_1
    move-object/from16 v13, p2

    :try_start_2
    const-class v0, Landroid/content/res/AssetManager;

    const-string v14, "addAssetPathAsSharedLibrary"

    new-array v15, v12, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v11

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 336
    .local v6, "addAssetPathAsSharedLibraryMethod":Ljava/lang/reflect/Method;
    move-object v6, v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 337
    new-array v0, v12, [Ljava/lang/Object;

    aput-object v7, v0, v11

    invoke-virtual {v6, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, "cookie":Ljava/lang/Object;
    const/4 v5, 0x1

    .line 339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".addResPackages to assetManager done by addAssetPathAsSharedLibrary: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 342
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v6    # "addAssetPathAsSharedLibraryMethod":Ljava/lang/reflect/Method;
    move-object v0, v8

    goto/16 :goto_0

    .line 340
    :catchall_2
    move-exception v0

    move-object v6, v0

    .line 341
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "dir":Ljava/lang/String;
    .end local v8    # "pair":Landroid/util/Pair;
    move-object v0, v8

    goto/16 :goto_0

    .line 322
    :cond_2
    move-object/from16 v13, p2

    move v0, v5

    .line 346
    .end local v5    # "bRet":Z
    .local v0, "bRet":Z
    :goto_3
    return v0
.end method

.method public static getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 354
    const/16 v0, 0x2000

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getChromeSourceDirs(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 4
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 373
    const-string v0, "LauncherApplication"

    const/4 v1, 0x0

    .line 374
    .local v1, "sourcesDirs":[Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->getPreviewSdkInt()I

    move-result v2

    if-lez v2, :cond_1

    .line 380
    :cond_0
    :try_start_0
    const-string v2, "getAllApkPaths"

    invoke-static {p0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    .line 381
    const-string v2, "get sourcesDirs from ApplicationInfo.getAllApkPaths"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->getAllApkPaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v1

    .line 385
    const-string v3, "get sourcesDirs from ApiCompat.getAllApkPaths"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 389
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v3, v0, v2

    move-object v1, v0

    .line 391
    :cond_2
    return-object v1
.end method

.method public static getChromeSourceDirs(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 364
    const/16 v0, 0x2000

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDirs(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;
    .locals 2

    .line 43
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->sInstance:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->sInstance:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->sInstance:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->sInstance:Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;

    return-object v0
.end method


# virtual methods
.method public addChromeResources(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p2, "res"    # Ljava/lang/String;
    .param p3, "assetManager"    # Landroid/content/res/AssetManager;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    .line 61
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/compat/b;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 66
    return-void

    .line 69
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/compat/b;->b(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->initChromeSourceDirs(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    invoke-static {p2, p3, p4, v0}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->doAddChromeSourceDirs(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z

    .line 76
    return-void
.end method

.method public initChromeSourceDirs(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 14

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    if-nez v0, :cond_13

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 146
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 147
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 150
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_5

    .line 153
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "android.webkit.WebViewFactory"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 155
    const-string v5, "getWebViewContextAndSetProvider"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 156
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 157
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 158
    instance-of v7, v5, Landroid/content/Context;

    if-eqz v7, :cond_1

    .line 159
    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_1

    .line 161
    invoke-static {v5}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDirs(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v5

    .line 162
    if-eqz v5, :cond_1

    .line 163
    array-length v7, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    aget-object v10, v5, v9

    .line 164
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 165
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v11, "LauncherApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "N.addChromeResources getChromeSourceDir from applicationInfo:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 175
    const-string v5, "getLoadedPackageInfo"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 178
    const-string v5, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "N.addChromeResources getLoadedPackageInfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDirs(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_4

    .line 181
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    .line 182
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 183
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v8, "LauncherApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "N.addChromeResources getChromeSourceDir:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 191
    :cond_4
    goto :goto_3

    .line 189
    :catchall_0
    move-exception v2

    .line 190
    :try_start_2
    const-string v5, "LauncherApplication"

    const-string v6, "WebViewFactory reflect error"

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_11

    .line 195
    const-string v2, "com.google.android.webview"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v5, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1.addChromeResources: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_6
    const-string v5, "com.android.webview"

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 203
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 204
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_5

    .line 213
    :cond_7
    sget-boolean v6, Lcom/alipay/mobile/quinox/compat/b;->a:Z

    if-eqz v6, :cond_8

    const-string v6, "WebViewGoogle_42"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "com.google.android.webview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 214
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 215
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 219
    goto/16 :goto_4

    :cond_8
    sget-boolean v6, Lcom/alipay/mobile/quinox/compat/b;->c:Z

    if-eqz v6, :cond_a

    .line 220
    const-string v6, "/system/app/WebViewGoogle/WebViewGoogle.apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "/system/app/webview/webview.apk"

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 222
    const-string v6, "LauncherApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "2.addChromeResources: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", should ignore."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_9
    const-string v6, "/data/app/com.google.android.webview-1/base.apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "/data/app/com.android.webview-1/base.apk"

    .line 225
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 226
    const-string v2, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "2.addChromeResources: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", should ignore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 228
    :cond_a
    sget-boolean v6, Lcom/alipay/mobile/quinox/compat/b;->b:Z

    if-eqz v6, :cond_b

    const-string v6, "com.google.android.webview"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "WebViewGoogle_42"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 229
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 230
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 234
    goto :goto_4

    .line 235
    :cond_b
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_c
    :goto_4
    const-string v2, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "2.addChromeResources: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 211
    :cond_d
    :goto_5
    const-string v2, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "2.addChromeResources: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", should ignore."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 243
    :try_start_3
    const-string v5, "android:string/config_webViewPackageName"

    const-string v6, "string"

    const-string v7, "android"

    invoke-static {v2, v5, v6, v7}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 246
    if-eqz v5, :cond_10

    .line 247
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 251
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    const-string p1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "3.addChromeResources: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 254
    :cond_f
    invoke-virtual {p1, v2, v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 255
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v2, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4.addChromeResources: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :cond_10
    goto :goto_7

    .line 261
    :catchall_1
    move-exception p1

    .line 262
    :try_start_4
    const-string v2, "LauncherApplication"

    const-string v4, "addChromeResources sourceDir"

    invoke-static {v2, v4, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_11

    .line 266
    const-string p1, "com.android.chrome"

    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "5.addChromeResources: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_11
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    .line 275
    const-string p1, "LauncherApplication"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addChromeResources: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_12
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 279
    :cond_13
    return-void
.end method

.method public initChromeSourceDirs24(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 2
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->initChromeSourceDirs(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setChromeSourceDirs(Ljava/util/LinkedHashSet;)V
    .locals 1
    .param p1, "chromeSourceDirs"    # Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->mChromeSourceDirs:Ljava/util/Set;

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHostClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "hostClassLoader"    # Ljava/lang/ClassLoader;

    .line 58
    return-void
.end method

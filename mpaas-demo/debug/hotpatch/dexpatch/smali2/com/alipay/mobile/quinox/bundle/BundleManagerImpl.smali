.class public Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
.super Ljava/lang/Object;
.source "BundleManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundleManager;


# static fields
.field private static final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/mobile/quinox/bundle/e;

.field private final l:Z

.field private final m:Lcom/alipay/mobile/quinox/bundle/c;

.field private n:Ljava/util/concurrent/CountDownLatch;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$1;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->q:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 4
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->n:Ljava/util/concurrent/CountDownLatch;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->r:I

    .line 2624
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->s:Z

    .line 183
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->isDebug()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    .line 184
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 185
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/e;

    invoke-direct {v2, p1, p0, v1}, Lcom/alipay/mobile/quinox/bundle/e;-><init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Z)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/e;

    .line 186
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v2, "plugins"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 190
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    .line 191
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/c;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v3, "plugins_opt"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v3, "plugins_lib"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 198
    .end local v1    # "file":Ljava/io/File;
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    .line 200
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    .line 201
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    .line 203
    return-void
.end method

.method private static a(Ljava/util/Collection;I)Ljava/util/List;
    .locals 4
    .param p0, "allBundles"    # Ljava/util/Collection;
    .param p1, "realPackageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 3116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    .local v0, "result":Ljava/util/List;
    if-eqz p0, :cond_1

    .line 3119
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 3121
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 3123
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 3124
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3125
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3130
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 20
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BundleManagerImpl"

    .line 408
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getReusableBundleCombinations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 409
    .local v4, "combinations":Ljava/util/List;
    move-object v4, v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v18, v4

    goto/16 :goto_5

    .line 414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 416
    .local v5, "cachedBundles":Ljava/util/Map;
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getLastProductVersion()Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "lastVersionName":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/c;

    sget-object v7, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v8, v6}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v5}, Lcom/alipay/mobile/quinox/bundle/c;->b(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 420
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/c;

    sget-object v8, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8, v9, v6}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8, v5}, Lcom/alipay/mobile/quinox/bundle/c;->b(Ljava/util/List;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 424
    .local v0, "e1":Ljava/io/IOException;
    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    .line 430
    .local v0, "reusedBundleMap":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 432
    .local v12, "combination":Ljava/util/Map;
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v13}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v13

    .line 433
    .local v13, "curUpdateBundleKeys":Ljava/util/Set;
    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/bundle/k;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v14

    .line 435
    .local v3, "reusable":Ljava/util/Map;
    move-object v3, v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 440
    const/4 v14, 0x1

    .line 441
    .local v14, "check":Z
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v16, v0

    .end local v0    # "reusedBundleMap":Ljava/util/Map;
    .local v16, "reusedBundleMap":Ljava/util/Map;
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v15

    .line 443
    .local v0, "tempReusedBundleMap":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 444
    .local v9, "entry":Ljava/util/Map$Entry;
    move-object/from16 v9, v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    .line 445
    .local v1, "reusableBundleName":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 446
    .local v10, "cachedBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object/from16 v10, v17

    if-nez v17, :cond_1

    .line 447
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    .end local v3    # "reusable":Ljava/util/Map;
    .local v17, "reusable":Ljava/util/Map;
    const-string v3, "Failed to find cached bundle: "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v14, 0x0

    .line 449
    move-object/from16 v18, v4

    goto/16 :goto_3

    .line 451
    .end local v17    # "reusable":Ljava/util/Map;
    .restart local v3    # "reusable":Ljava/util/Map;
    :cond_1
    move-object/from16 v17, v3

    .end local v3    # "reusable":Ljava/util/Map;
    .restart local v17    # "reusable":Ljava/util/Map;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 452
    .local v3, "reusableBundleVersion":Ljava/lang/String;
    move-object/from16 v18, v4

    move-object/from16 v4, p1

    .end local v4    # "combinations":Ljava/util/List;
    .local v18, "combinations":Ljava/util/List;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 453
    .local v8, "newBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object/from16 v8, v19

    if-eqz v19, :cond_2

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    .end local v3    # "reusableBundleVersion":Ljava/lang/String;
    .local v19, "reusableBundleVersion":Ljava/lang/String;
    const-string v3, "No need to reuse bundle: "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_2

    .line 453
    .end local v19    # "reusableBundleVersion":Ljava/lang/String;
    .restart local v3    # "reusableBundleVersion":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v3

    .line 457
    .end local v3    # "reusableBundleVersion":Ljava/lang/String;
    .restart local v19    # "reusableBundleVersion":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v3

    move v4, v11

    .line 458
    .local v4, "bundlePackageId":I
    move v11, v3

    .end local v4    # "bundlePackageId":I
    .local v11, "bundlePackageId":I
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3

    const/16 v3, 0x7f

    if-eq v11, v3, :cond_3

    .line 459
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v11}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v3

    .line 460
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t reuse bundle whose packageId is not unique: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v14, 0x0

    .line 464
    goto :goto_3

    .line 467
    :cond_3
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .end local v1    # "reusableBundleName":Ljava/lang/String;
    .end local v8    # "newBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v10    # "cachedBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v11    # "bundlePackageId":I
    .end local v19    # "reusableBundleVersion":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_2

    .line 443
    .end local v17    # "reusable":Ljava/util/Map;
    .end local v18    # "combinations":Ljava/util/List;
    .local v3, "reusable":Ljava/util/Map;
    .local v4, "combinations":Ljava/util/List;
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 472
    .end local v3    # "reusable":Ljava/util/Map;
    .end local v4    # "combinations":Ljava/util/List;
    .restart local v17    # "reusable":Ljava/util/Map;
    .restart local v18    # "combinations":Ljava/util/List;
    :goto_3
    if-eqz v14, :cond_5

    .line 473
    move-object v1, v0

    .line 474
    .end local v16    # "reusedBundleMap":Ljava/util/Map;
    .local v1, "reusedBundleMap":Ljava/util/Map;
    goto :goto_4

    .line 476
    .end local v0    # "tempReusedBundleMap":Ljava/util/Map;
    .end local v1    # "reusedBundleMap":Ljava/util/Map;
    .end local v12    # "combination":Ljava/util/Map;
    .end local v13    # "curUpdateBundleKeys":Ljava/util/Set;
    .end local v14    # "check":Z
    .end local v17    # "reusable":Ljava/util/Map;
    .restart local v16    # "reusedBundleMap":Ljava/util/Map;
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 435
    .end local v16    # "reusedBundleMap":Ljava/util/Map;
    .end local v18    # "combinations":Ljava/util/List;
    .local v0, "reusedBundleMap":Ljava/util/Map;
    .restart local v3    # "reusable":Ljava/util/Map;
    .restart local v4    # "combinations":Ljava/util/List;
    .restart local v12    # "combination":Ljava/util/Map;
    .restart local v13    # "curUpdateBundleKeys":Ljava/util/Set;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 430
    .end local v0    # "reusedBundleMap":Ljava/util/Map;
    .end local v3    # "reusable":Ljava/util/Map;
    .end local v4    # "combinations":Ljava/util/List;
    .end local v12    # "combination":Ljava/util/Map;
    .end local v13    # "curUpdateBundleKeys":Ljava/util/Set;
    .restart local v16    # "reusedBundleMap":Ljava/util/Map;
    .restart local v18    # "combinations":Ljava/util/List;
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    .end local v16    # "reusedBundleMap":Ljava/util/Map;
    .end local v18    # "combinations":Ljava/util/List;
    .restart local v0    # "reusedBundleMap":Ljava/util/Map;
    .restart local v4    # "combinations":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v18, v4

    .line 478
    .end local v4    # "combinations":Ljava/util/List;
    .restart local v18    # "combinations":Ljava/util/List;
    :goto_4
    return-object v0

    .line 409
    .end local v0    # "reusedBundleMap":Ljava/util/Map;
    .end local v5    # "cachedBundles":Ljava/util/Map;
    .end local v6    # "lastVersionName":Ljava/lang/String;
    .end local v18    # "combinations":Ljava/util/List;
    .restart local v4    # "combinations":Ljava/util/List;
    :cond_8
    move-object/from16 v18, v4

    .line 410
    .end local v4    # "combinations":Ljava/util/List;
    .restart local v18    # "combinations":Ljava/util/List;
    :goto_5
    return-object v3
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/util/SparseArray;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 2231
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2233
    return-object v0

    .line 2236
    :cond_0
    nop

    .line 2238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2241
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2243
    iget-object v6, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2246
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2247
    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2250
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2251
    if-eqz p2, :cond_1

    .line 2252
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2253
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v9

    invoke-static {v9}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2254
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    goto :goto_0

    .line 2257
    :cond_1
    if-eqz p1, :cond_2

    .line 2258
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2259
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v9

    invoke-static {v9}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2260
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    goto :goto_1

    .line 2265
    :cond_2
    const/16 v7, 0x1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2266
    const/16 v7, 0x7f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2268
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v8, "BundleManagerImpl"

    if-eqz v0, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2269
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v10

    .line 2270
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x2

    if-lt v0, v11, :cond_19

    .line 2272
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->q:Ljava/util/Comparator;

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2273
    nop

    .line 2274
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 2275
    if-nez v0, :cond_3

    .line 2277
    nop

    .line 2278
    invoke-static {v9}, Lcom/alipay/mobile/quinox/bundle/d;->a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 2279
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-object v13, v0

    const/4 v14, 0x1

    goto :goto_3

    .line 2275
    :cond_3
    move-object v13, v0

    const/4 v14, 0x0

    .line 2281
    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2284
    if-eqz v14, :cond_4

    .line 2285
    goto :goto_5

    .line 2287
    :cond_4
    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v12

    .line 2288
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2290
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2291
    const-string v12, "-resMerged-"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 2292
    if-ltz v15, :cond_5

    .line 2293
    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2295
    :cond_5
    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 2296
    if-ltz v15, :cond_6

    .line 2297
    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2300
    :cond_6
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jar"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2301
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2302
    goto :goto_6

    .line 2303
    :cond_7
    nop

    .line 2305
    nop

    .line 2310
    :goto_5
    move-object v11, v0

    goto :goto_6

    .line 2307
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v11, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v12, v15}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 2310
    :goto_6
    invoke-static {v11}, Lcom/seiginonakama/res/utils/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 2313
    :try_start_0
    new-instance v15, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2314
    move-object/from16 v16, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    if-nez v14, :cond_9

    .line 2316
    new-instance v0, Ljava/util/zip/ZipFile;

    move-object/from16 v17, v6

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2315
    :cond_9
    move-object/from16 v17, v6

    .line 2319
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2320
    move-object/from16 v18, v6

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    .line 2323
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2328
    move-object/from16 v6, v18

    goto :goto_8

    .line 2324
    :catch_0
    move-exception v0

    .line 2327
    move-wide/from16 v19, v3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    move-object/from16 v6, v18

    move-wide/from16 v3, v19

    goto :goto_8

    .line 2330
    :cond_a
    move-wide/from16 v19, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not exist() when merge res"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    move-object/from16 v6, v18

    move-wide/from16 v3, v19

    goto :goto_8

    .line 2333
    :cond_b
    move-wide/from16 v19, v3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2334
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipFile;

    .line 2336
    const-string v4, "resources.arsc"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-nez v4, :cond_c

    .line 2338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " don\'t contain res, not need to merge res"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2341
    :cond_c
    goto :goto_9

    .line 2343
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2345
    const-string v0, "no res file to merge"

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2372
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2373
    invoke-static {v12}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 2268
    :cond_e
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-wide/from16 v3, v19

    goto/16 :goto_2

    .line 2349
    :cond_f
    const/4 v3, 0x1

    :try_start_3
    new-array v0, v3, [Z

    const/4 v3, 0x0

    aput-boolean v3, v0, v3

    .line 2350
    new-instance v3, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;

    invoke-direct {v3, v1, v0, v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;-><init>(Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;[ZLjava/util/List;)V

    .line 2365
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/zip/ZipFile;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/zip/ZipFile;

    .line 2350
    invoke-static {v15, v3, v0}, Lcom/abq/qba/a/a;->a(Ljava/util/zip/ZipOutputStream;Lcom/abq/qba/a/a$b;[Ljava/util/zip/ZipFile;)V

    .line 2367
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2368
    invoke-static {v11}, Lcom/seiginonakama/res/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 2370
    :cond_10
    invoke-static {v12, v11}, Lcom/seiginonakama/res/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2372
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2373
    invoke-static {v12}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 2377
    :cond_11
    invoke-static {v11}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v11}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genFileAdler32Sum(Ljava/io/File;)J

    move-result-wide v3

    .line 2379
    if-eqz v14, :cond_13

    .line 2380
    invoke-virtual {v13, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2381
    invoke-virtual {v13, v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2382
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2383
    if-nez v7, :cond_12

    .line 2384
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2385
    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p4

    goto :goto_a

    .line 2383
    :cond_12
    move-object/from16 v3, p4

    goto :goto_a

    .line 2388
    :cond_13
    new-instance v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    new-instance v6, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v6, v13}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-direct {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    .line 2389
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2390
    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2391
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "1.0.0."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2396
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p4

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    :goto_a
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2400
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2401
    if-eqz v2, :cond_15

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 2404
    :cond_15
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 2405
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2406
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v5

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2408
    :cond_16
    goto :goto_b

    .line 2409
    :cond_17
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/d$a;

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v0}, Lcom/alipay/mobile/quinox/bundle/d$a;-><init>(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 2410
    move-object/from16 v5, p5

    invoke-virtual {v5, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    .line 2372
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2373
    invoke-static {v12}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_18
    throw v0

    .line 2270
    :cond_19
    move-wide/from16 v19, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 2412
    :goto_c
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-wide/from16 v3, v19

    goto/16 :goto_2

    .line 2414
    :cond_1a
    move-wide/from16 v19, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mergeSamePackageIdBundlesRes() take "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    return-object v7
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 5
    .param p1, "mergeInfo"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)V"
        }
    .end annotation

    .line 2896
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2897
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2898
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2899
    .local v2, "key":I
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2897
    .end local v2    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2901
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/alipay/mobile/quinox/startup/UpgradeHelper;)V
    .locals 8
    .param p1, "bundles"    # Ljava/util/Map;
    .param p2, "helper"    # Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Lcom/alipay/mobile/quinox/startup/UpgradeHelper;",
            ")V"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/util/Map;)V

    .line 362
    const/4 v0, 0x0

    .line 365
    .local v0, "excludePrefixes":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isProductABIChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 366
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 367
    .local v1, "reusedBundleMap":Ljava/util/Map;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preInstall() : reusedBundleMap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BundleManagerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 370
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 372
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 374
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 375
    .local v2, "newUpdateBundleKeys":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 376
    .local v5, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v6

    .line 379
    .local v4, "nativeLibs":Ljava/util/List;
    move-object v4, v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 380
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 382
    .end local v4    # "nativeLibs":Ljava/util/List;
    .end local v5    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_0
    goto :goto_0

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->saveUpdateBundleKeys(Landroid/content/Context;Ljava/util/Set;)V

    .line 385
    const-string v3, "update.cfg"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v1    # "reusedBundleMap":Ljava/util/Map;
    .end local v2    # "newUpdateBundleKeys":Ljava/util/Set;
    :cond_2
    goto :goto_1

    .line 389
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->setBundleVersion(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/bundle/f;->a(Landroid/content/Context;)V

    .line 394
    :goto_1
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginFiles(Ljava/util/Set;)V

    .line 395
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginOpts(Ljava/util/Set;)V

    .line 396
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginLibs(Ljava/util/Set;)V

    .line 397
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;)V
    .locals 18
    .param p1, "bundles"    # Ljava/util/Map;
    .param p2, "needExtractSosFromBundle"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2492
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2496
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2497
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v3, v5

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2498
    .local v5, "bundleName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 2500
    .local v6, "location":Ljava/lang/String;
    iget-object v7, v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2501
    .local v7, "destPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "install:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " dest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "dynamicLoadToCheck"

    invoke-static {v9, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2505
    .local v8, "bRet":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " install: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", dest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", copyFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2505
    const-string v10, "BundleManagerImpl"

    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v9

    .line 2509
    .local v4, "nativeLibs":Ljava/util/List;
    move-object v4, v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2510
    invoke-direct {v0, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/util/List;)Z

    move-result v15

    .line 2512
    .local v15, "canExtractSoNow":Z
    if-eqz v1, :cond_1

    if-eqz v15, :cond_0

    goto :goto_1

    .line 2517
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2513
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v14, v9, [Ljava/lang/String;

    .line 2514
    .local v14, "sos":[Ljava/lang/String;
    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2515
    iget-object v9, v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v12, v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-object v10, v7

    move-object v11, v14

    move-object/from16 v17, v14

    .end local v14    # "sos":[Ljava/lang/String;
    .local v17, "sos":[Ljava/lang/String;
    move/from16 v14, v16

    invoke-static/range {v9 .. v14}, Lcom/alipay/mobile/quinox/bundle/a;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 2520
    .end local v15    # "canExtractSoNow":Z
    .end local v17    # "sos":[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v3, v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2521
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v4    # "nativeLibs":Ljava/util/List;
    .end local v8    # "bRet":Z
    goto/16 :goto_0

    .line 2523
    .end local v5    # "bundleName":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "destPath":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZZLandroid/os/Bundle;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 1156
    move-object/from16 v9, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v5, p4

    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_delay_update_bundles"

    const/4 v10, 0x0

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1157
    nop

    .line 1158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    goto :goto_0

    .line 1161
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1162
    const-string v2, "BundleManagerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1163
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 1158
    :cond_0
    move-object v2, v10

    .line 1167
    :goto_0
    nop

    .line 1168
    const/4 v11, 0x1

    if-eqz v2, :cond_2

    const-string v1, "updateWithProcessLock"

    invoke-virtual {v2, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v12, v10

    goto :goto_2

    .line 1169
    :cond_2
    :goto_1
    new-instance v1, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/.writeCfg.lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    move-object v12, v1

    .line 1172
    :goto_2
    if-eqz v12, :cond_3

    .line 1173
    :try_start_1
    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1837
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v12

    goto/16 :goto_4f

    .line 1176
    :cond_3
    :goto_3
    :try_start_2
    const-string v1, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateBundles(updatePaths="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", _removeBundleNames="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", checkVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    sput-boolean v11, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    .line 1181
    const-string v1, "BundleManagerImpl"

    const-string v3, "updateBundles make HostClassLoader.sHitTestSync = true"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1183
    if-nez p7, :cond_4

    .line 1184
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v1

    goto :goto_4

    .line 1183
    :cond_4
    move-object/from16 v13, p7

    .line 1187
    :goto_4
    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 1189
    if-nez p6, :cond_6

    if-eqz v2, :cond_5

    :try_start_5
    const-string v1, "enable"

    invoke-virtual {v2, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 1192
    :goto_5
    nop

    .line 1193
    :try_start_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 1194
    if-eqz v7, :cond_a

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1195
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1196
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/String;

    .line 1197
    invoke-direct {v9, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1198
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-interface {v4, v11, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_6

    .line 1201
    :cond_7
    const-string v6, ","

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1202
    move-object/from16 v17, v10

    array-length v10, v6

    const/4 v7, 0x2

    if-ne v7, v10, :cond_8

    .line 1203
    const/4 v7, 0x0

    aget-object v10, v6, v7

    const/16 v18, 0x1

    aget-object v6, v6, v18

    invoke-static {v10, v6}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->genBundleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1204
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-interface {v4, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1202
    :cond_8
    const/4 v7, 0x0

    .line 1208
    :goto_7
    move-object/from16 v7, p2

    move-object/from16 v10, v17

    const/4 v11, 0x1

    goto :goto_6

    .line 1209
    :cond_9
    const/4 v7, 0x0

    const-string v6, "BundleManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "removeBundleNames: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_8

    .line 1194
    :cond_a
    const/4 v7, 0x0

    .line 1213
    const/4 v10, 0x0

    :goto_8
    nop

    .line 1214
    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1215
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1216
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1217
    invoke-static {v11}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v7

    .line 1219
    move-object/from16 v17, v3

    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    move-object/from16 v19, v4

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1225
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v3

    .line 1226
    if-eqz v5, :cond_d

    .line 1227
    if-eqz v3, :cond_c

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v4, 0x1

    goto :goto_b

    .line 1229
    :cond_d
    const/4 v4, 0x1

    .line 1231
    :goto_b
    if-nez v4, :cond_f

    .line 1232
    iget-boolean v4, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    if-eqz v4, :cond_e

    .line 1237
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    const-string v13, " \'s BundleVersion is lower: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but mIsDebug="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1233
    :cond_e
    const-string v1, "BundleManagerImpl"

    const-string v2, "MonitorPoint_DynamicLoad_UpgradeErr"

    .line 1234
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1233
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v11

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1235
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " \'s BundleVersion is lower. vs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :cond_f
    move-object/from16 v20, v13

    .line 1242
    :goto_c
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/e;

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1243
    if-nez v6, :cond_10

    .line 1244
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    .line 1246
    :cond_10
    nop

    .line 1247
    if-nez p5, :cond_11

    if-eqz v1, :cond_11

    .line 1248
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v3

    .line 1249
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1250
    invoke-direct {v9, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/util/List;)Z

    move-result v3

    .line 1251
    if-nez v3, :cond_11

    .line 1252
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    nop

    .line 1254
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delay update bundle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_d

    .line 1258
    :cond_11
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_12

    .line 1259
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    :cond_12
    move/from16 v5, p4

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v13, v20

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1262
    :cond_13
    iget-boolean v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    if-eqz v3, :cond_14

    .line 1267
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " checkSign failed, but mIsDebug="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    goto/16 :goto_e

    .line 1263
    :cond_14
    const-string v1, "BundleManagerImpl"

    const-string v2, "MonitorPoint_DynamicLoad_UpgradeErr"

    .line 1264
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1263
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v11

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1265
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \'s checkSign failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_15
    const-string v1, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1271
    :cond_16
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v13

    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateBundles() ignore: path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    nop

    .line 1215
    :goto_e
    move/from16 v5, p4

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v13, v20

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1274
    :cond_17
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateBundlesMap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v6

    goto :goto_f

    .line 1214
    :cond_18
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    .line 1278
    const/4 v7, 0x0

    :goto_f
    nop

    .line 1279
    :try_start_8
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1280
    nop

    .line 1281
    if-eqz v10, :cond_33

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 1282
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1283
    invoke-direct {v9, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/util/Map;)V

    .line 1285
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1286
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_32

    .line 1287
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1289
    move-object/from16 v17, v10

    iget-object v10, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_31

    .line 1294
    invoke-virtual {v9, v13}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 1295
    if-eqz v10, :cond_1d

    .line 1296
    nop

    .line 1297
    if-eqz v7, :cond_19

    :try_start_9
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_19

    .line 1298
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alipay/mobile/quinox/bundle/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_11

    .line 1302
    :cond_19
    const/16 v21, 0x0

    :goto_11
    if-eqz v21, :cond_1b

    .line 1304
    move-object/from16 v22, v12

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v2

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1305
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1310
    const-string v2, "BundleManagerImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Can not recover the updated bundle: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    move-object/from16 v10, v17

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    goto :goto_10

    .line 1313
    :cond_1b
    move-object/from16 v23, v2

    move-object/from16 v22, v12

    if-nez v5, :cond_1c

    .line 1314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    :cond_1c
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1295
    :cond_1d
    move-object/from16 v23, v2

    move-object/from16 v22, v12

    .line 1320
    :goto_12
    if-eqz v7, :cond_1f

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_13

    :cond_1e
    move-object/from16 v21, v3

    goto/16 :goto_1a

    .line 1321
    :cond_1f
    :goto_13
    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1323
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1324
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v13}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1326
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1327
    if-eqz v5, :cond_20

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_20

    .line 1328
    invoke-interface {v5, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1330
    :cond_20
    const-string v10, "BundleManagerImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Can not recover this original bundle: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v3

    goto/16 :goto_1b

    .line 1332
    :cond_21
    if-nez v6, :cond_22

    .line 1333
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    :cond_22
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isPure()Z

    move-result v12

    if-nez v12, :cond_25

    .line 1337
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/io/File;

    move-object/from16 v21, v3

    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v13, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_24

    .line 1339
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    .line 1340
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v13

    .line 1339
    invoke-static {v3, v12, v13}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1341
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1342
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    goto :goto_14

    .line 1344
    :cond_23
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1345
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extractThingsFromApk("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") failed.\r\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_24
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    goto :goto_14

    .line 1336
    :cond_25
    move-object/from16 v21, v3

    .line 1351
    :goto_14
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v3

    .line 1352
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2b

    .line 1353
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v2

    .line 1354
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1355
    if-eqz v2, :cond_27

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    .line 1358
    :cond_27
    if-nez p5, :cond_2a

    if-nez v1, :cond_28

    goto :goto_16

    .line 1361
    :cond_28
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    if-eqz v5, :cond_29

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_29

    .line 1363
    invoke-interface {v5, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1366
    :cond_29
    goto :goto_15

    .line 1359
    :cond_2a
    :goto_16
    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1369
    :cond_2b
    move-object/from16 v10, v17

    move-object/from16 v3, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    goto/16 :goto_10

    .line 1371
    :cond_2c
    move-object/from16 v21, v3

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v2

    .line 1372
    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 1373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1374
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2f

    .line 1375
    if-nez p5, :cond_2e

    if-nez v1, :cond_2d

    goto :goto_18

    .line 1378
    :cond_2d
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    if-eqz v5, :cond_2f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1380
    invoke-interface {v5, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1376
    :cond_2e
    :goto_18
    invoke-interface {v11, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1384
    :cond_2f
    :goto_19
    goto :goto_17

    .line 1388
    :cond_30
    :goto_1a
    nop

    .line 1286
    :goto_1b
    move-object/from16 v10, v17

    move-object/from16 v3, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    goto/16 :goto_10

    .line 1290
    :cond_31
    move-object/from16 v22, v12

    const-string v1, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1390
    :cond_32
    move-object/from16 v23, v2

    move-object/from16 v17, v10

    move-object/from16 v22, v12

    const-string v1, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeBundles="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v1, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recoverBundle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v1, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "needRecoverSosFromApk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v5

    move-object v12, v6

    goto :goto_1c

    .line 1281
    :cond_33
    move-object/from16 v23, v2

    move-object/from16 v17, v10

    move-object/from16 v22, v12

    .line 1395
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1c
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    :cond_34
    if-nez p5, :cond_3c

    if-nez p6, :cond_3c

    .line 1399
    if-eqz v23, :cond_36

    const-string v1, "killLiteBg"

    move-object/from16 v2, v23

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_1d

    :cond_35
    const/4 v1, 0x0

    goto :goto_1e

    :cond_36
    :goto_1d
    const/4 v1, 0x1

    .line 1400
    :goto_1e
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1401
    if-eqz v2, :cond_3c

    .line 1402
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1404
    nop

    .line 1405
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v3

    .line 1406
    iget-object v4, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getFgProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1407
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isLiteProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    goto :goto_1f

    :cond_37
    const/4 v4, 0x0

    .line 1408
    :goto_1f
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1409
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1410
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isLiteProcess(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1411
    if-eqz v1, :cond_38

    if-nez v4, :cond_38

    .line 1413
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 1414
    const-string v6, "BundleManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    move/from16 p6, v1

    const-string v1, "kill process: "

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for update bundle."

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p6

    goto :goto_20

    .line 1416
    :cond_38
    nop

    .line 1417
    const/4 v1, 0x1

    goto :goto_21

    .line 1420
    :cond_39
    move/from16 p6, v1

    goto :goto_20

    .line 1422
    :cond_3a
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_3c

    .line 1424
    const-string v1, "BundleManagerImpl"

    const-string v2, "don\'t need to use DelayUpdateBundles when not lite process exist, recall updateBundles and force disable delay update."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZZLandroid/os/Bundle;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1837
    if-eqz v22, :cond_3b

    .line 1838
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 1425
    :cond_3b
    return v1

    .line 1431
    :cond_3c
    :try_start_b
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1432
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1433
    nop

    .line 1434
    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v12

    move-object/from16 v5, v19

    move-object v4, v10

    move-object v8, v5

    move-object v5, v6

    move-object/from16 p1, v6

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/util/SparseArray;)Ljava/util/Map;

    move-result-object v1

    .line 1435
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1436
    const-string v2, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changedMergedResBundles="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1438
    invoke-direct {v9, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v5

    .line 1439
    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1440
    if-eqz v8, :cond_3e

    if-eqz v5, :cond_3e

    if-eq v5, v8, :cond_3e

    .line 1441
    move-object/from16 p1, v2

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p4, v13

    iget-object v13, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1442
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1443
    if-nez v3, :cond_3d

    .line 1444
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v2

    .line 1446
    :cond_3d
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 1440
    :cond_3e
    move-object/from16 p1, v2

    move-object/from16 p4, v13

    .line 1448
    :cond_3f
    :goto_23
    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move-object/from16 p1, v6

    const/4 v8, 0x0

    goto :goto_22

    .line 1449
    :cond_40
    move-object/from16 v6, p1

    move-object/from16 p4, v13

    if-eqz v3, :cond_42

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 1450
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeMergedResBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1435
    :cond_41
    move-object/from16 v6, p1

    move-object/from16 p4, v13

    const/4 v3, 0x0

    .line 1453
    :cond_42
    :goto_24
    if-eqz v1, :cond_43

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 1454
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addedMergedResBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    nop

    .line 1460
    if-eqz v7, :cond_47

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-nez v4, :cond_47

    .line 1462
    :try_start_c
    invoke-direct {v9, v7, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1466
    nop

    .line 1468
    :try_start_d
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v16, 0x0

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1469
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v8

    .line 1470
    if-eqz v8, :cond_45

    .line 1471
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 1472
    if-nez v16, :cond_44

    .line 1473
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v16

    goto :goto_26

    .line 1472
    :cond_44
    move-object/from16 v5, v16

    .line 1475
    :goto_26
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v5

    .line 1478
    :cond_45
    goto :goto_25

    .line 1480
    :cond_46
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "removeOldBundles="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "needExtractSosFromBundle="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    goto :goto_27

    .line 1463
    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1464
    const-string v2, "BundleManagerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1465
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1485
    :cond_47
    const/4 v4, 0x0

    :goto_27
    nop

    .line 1486
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_28

    :cond_48
    const/4 v5, 0x1

    goto :goto_29

    .line 1487
    :cond_49
    :goto_28
    const/4 v5, 0x0

    .line 1489
    :goto_29
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v8

    .line 1490
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4b

    .line 1491
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v13

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    .line 1492
    if-eqz v5, :cond_4a

    .line 1493
    invoke-virtual {v8, v13}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->containsBundleClassLoader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_4a
    const/4 v5, 0x0

    .line 1494
    :goto_2b
    move-object/from16 v13, p1

    goto :goto_2a

    .line 1496
    :cond_4b
    if-eqz v17, :cond_4d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4d

    .line 1497
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v13

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    .line 1498
    if-eqz v5, :cond_4c

    .line 1499
    invoke-virtual {v8, v13}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->containsBundleClassLoader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    const/4 v5, 0x1

    goto :goto_2d

    :cond_4c
    const/4 v5, 0x0

    .line 1500
    :goto_2d
    move-object/from16 v13, p1

    goto :goto_2c

    .line 1502
    :cond_4d
    const-string v13, "BundleManagerImpl"

    move-object/from16 p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 p6, v4

    const-string v4, "immediately by ClassLoader judge="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    nop

    .line 1504
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1505
    :cond_4e
    if-nez p5, :cond_4f

    .line 1506
    nop

    .line 1507
    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_2e

    .line 1511
    :cond_4f
    const/4 v3, 0x0

    :goto_2e
    nop

    .line 1512
    const/16 v13, 0x1b

    if-eqz v7, :cond_51

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_51

    .line 1513
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v21, 0x0

    :goto_2f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_52

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1514
    if-eqz v23, :cond_50

    .line 1515
    invoke-virtual/range {v23 .. v23}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v4

    .line 1516
    if-eq v4, v13, :cond_50

    const/16 v13, 0x7f

    if-eq v4, v13, :cond_50

    .line 1517
    const/16 v21, 0x1

    .line 1520
    :cond_50
    const/16 v13, 0x1b

    goto :goto_2f

    .line 1522
    :cond_51
    const/16 v21, 0x0

    :cond_52
    if-eqz v12, :cond_56

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_56

    .line 1523
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1524
    if-eqz v13, :cond_54

    .line 1525
    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v13

    .line 1526
    move-object/from16 v16, v4

    const/16 v4, 0x1b

    if-eq v13, v4, :cond_53

    const/16 v4, 0x7f

    if-eq v13, v4, :cond_55

    .line 1527
    const/16 v21, 0x1

    goto :goto_31

    .line 1526
    :cond_53
    const/16 v4, 0x7f

    goto :goto_31

    .line 1524
    :cond_54
    move-object/from16 v16, v4

    const/16 v4, 0x7f

    .line 1530
    :cond_55
    :goto_31
    move-object/from16 v4, v16

    goto :goto_30

    .line 1533
    :cond_56
    if-eqz v5, :cond_57

    .line 1534
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1535
    instance-of v13, v4, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-eqz v13, :cond_57

    .line 1536
    check-cast v4, Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/resources/BundleResources;->isUseOriginAssets()Z

    move-result v4

    if-eqz v4, :cond_57

    if-eqz v21, :cond_57

    .line 1537
    nop

    .line 1538
    const-string v4, "BundleManagerImpl"

    const-string v5, "we can\'t replace bundle immediately because HostResources is using origin assets, and bundle in HostResources has changed."

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1542
    :cond_57
    const-string v4, "BundleManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    move/from16 v16, v3

    const-string v3, "immediately="

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v3, "immediately"

    move-object/from16 v4, v20

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1547
    if-eqz v5, :cond_6e

    .line 1548
    nop

    .line 1549
    if-eqz v10, :cond_5c

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1550
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v20, 0x0

    :goto_32
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v13

    move-object/from16 v13, v21

    check-cast v13, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1552
    move/from16 v21, v5

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1553
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    move-object/from16 v24, v2

    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1555
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    if-eqz v20, :cond_58

    goto :goto_33

    :cond_58
    const/16 v20, 0x0

    goto :goto_34

    :cond_59
    :goto_33
    const/16 v20, 0x1

    .line 1557
    :goto_34
    invoke-direct {v9, v13}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1559
    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v2

    .line 1560
    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5a

    .line 1561
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1562
    move-object/from16 v25, v2

    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    move-object/from16 v2, v25

    goto :goto_35

    .line 1566
    :cond_5a
    iget-object v2, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1567
    :try_start_e
    iget-object v13, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1569
    :try_start_f
    invoke-virtual {v8, v5}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1570
    move/from16 v5, v21

    move-object/from16 v13, v23

    move-object/from16 v2, v24

    goto :goto_32

    .line 1568
    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v1

    .line 1571
    :cond_5b
    move-object/from16 v24, v2

    move/from16 v21, v5

    const-string v2, "removeBundles"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_36

    .line 1549
    :cond_5c
    move-object/from16 v24, v2

    move/from16 v21, v5

    .line 1574
    const/16 v20, 0x0

    :goto_36
    if-eqz v12, :cond_62

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1577
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1578
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    move-object/from16 v23, v3

    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    if-eqz v20, :cond_5d

    goto :goto_38

    :cond_5d
    const/16 v20, 0x0

    goto :goto_39

    :cond_5e
    :goto_38
    const/16 v20, 0x1

    .line 1588
    :goto_39
    invoke-direct {v9, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1590
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v3

    .line 1591
    if-eqz v3, :cond_60

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_60

    .line 1592
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v3

    move-object/from16 v3, v25

    check-cast v3, Ljava/lang/String;

    .line 1593
    move-object/from16 v25, v11

    iget-object v11, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v11, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    move-object/from16 v11, v25

    move-object/from16 v3, v26

    goto :goto_3a

    .line 1592
    :cond_5f
    move-object/from16 v25, v11

    goto :goto_3b

    .line 1591
    :cond_60
    move-object/from16 v25, v11

    .line 1597
    :goto_3b
    iget-object v3, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1598
    :try_start_12
    iget-object v11, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1600
    :try_start_13
    invoke-virtual {v8, v5}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1601
    move-object/from16 v3, v23

    move-object/from16 v11, v25

    goto :goto_37

    .line 1599
    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v1

    .line 1602
    :cond_61
    move-object/from16 v25, v11

    const-string v3, "recoverBundles"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3c

    .line 1574
    :cond_62
    move-object/from16 v25, v11

    .line 1605
    :goto_3c
    if-eqz v7, :cond_68

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    .line 1606
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1607
    const-string v3, "updateBundles"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1609
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1610
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_64

    if-eqz v20, :cond_63

    goto :goto_3d

    :cond_63
    const/4 v2, 0x0

    goto :goto_3e

    :cond_64
    :goto_3d
    const/4 v2, 0x1

    .line 1612
    :goto_3e
    invoke-direct {v9, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1614
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1615
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v11

    .line 1616
    if-eqz v11, :cond_66

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_66

    .line 1617
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_40
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1618
    move/from16 v20, v2

    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    move/from16 v2, v20

    goto :goto_40

    .line 1617
    :cond_65
    move/from16 v20, v2

    goto :goto_41

    .line 1616
    :cond_66
    move/from16 v20, v2

    .line 1622
    :goto_41
    iget-object v2, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 1623
    :try_start_16
    iget-object v11, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 1625
    :try_start_17
    invoke-virtual {v8, v5}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 1626
    move/from16 v2, v20

    goto :goto_3f

    .line 1624
    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    throw v1

    .line 1614
    :cond_67
    move/from16 v20, v2

    .line 1629
    :cond_68
    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    .line 1630
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1631
    const-string v3, "addedMergedResBundles"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1633
    invoke-direct {v9, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1636
    :cond_69
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1637
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1638
    const-string v3, "changedMergedResBundles"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1640
    invoke-direct {v9, v6}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1643
    :cond_6a
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 1644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1646
    const/4 v5, 0x0

    :goto_42
    if-ge v5, v3, :cond_6b

    .line 1647
    move-object/from16 v11, p4

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1648
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    add-int/lit8 v5, v5, 0x1

    move-object/from16 p4, v11

    goto :goto_42

    .line 1650
    :cond_6b
    move-object/from16 v11, p4

    const-string v3, "changedMergeInfo"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1652
    invoke-direct {v9, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Landroid/util/SparseArray;)V

    goto :goto_43

    .line 1643
    :cond_6c
    move-object/from16 v11, p4

    .line 1656
    :goto_43
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources(Z)V

    .line 1658
    if-eqz v20, :cond_6d

    .line 1659
    iget-object v2, v8, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 1660
    const/4 v3, 0x1

    :try_start_1a
    sput-boolean v3, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    .line 1661
    monitor-exit v2

    goto :goto_44

    :catchall_6
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :try_start_1b
    throw v1

    .line 1663
    :cond_6d
    goto :goto_44

    .line 1664
    :cond_6e
    move-object/from16 v24, v2

    move/from16 v21, v5

    move-object/from16 v25, v11

    move-object/from16 v11, p4

    if-eqz v7, :cond_6f

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 1665
    invoke-direct {v9, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/util/Map;)V

    .line 1670
    :cond_6f
    :goto_44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1672
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1673
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAllBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    if-eqz v17, :cond_71

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_71

    .line 1675
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1676
    iget-object v5, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    goto :goto_45

    .line 1679
    :cond_70
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeBundleNames="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    :cond_71
    if-eqz v12, :cond_73

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    .line 1682
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1683
    iget-object v5, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    goto :goto_46

    .line 1686
    :cond_72
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recoverBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :cond_73
    if-eqz v7, :cond_74

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_74

    .line 1689
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1690
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1691
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateBundlesMap="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_74
    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    .line 1694
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1695
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1696
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addedMergedResBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :cond_75
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    .line 1699
    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1700
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1701
    const-string v1, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changedMergedResBundles="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :cond_76
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_78

    .line 1706
    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1707
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1708
    const/4 v6, 0x0

    :goto_47
    if-ge v6, v3, :cond_77

    .line 1709
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1710
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 1711
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1708
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 1713
    :cond_77
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/bundle/d;->b(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1734
    :cond_78
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v1, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(ZLjava/util/Collection;Z)V

    .line 1738
    const-class v1, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 1739
    :try_start_1c
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 1740
    if-eqz v17, :cond_7b

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1741
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1742
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1743
    :cond_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1744
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1745
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1749
    :cond_7a
    goto :goto_48

    .line 1751
    :cond_7b
    if-eqz v7, :cond_7e

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1752
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1755
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1756
    :cond_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1757
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1758
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1763
    :cond_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1764
    goto :goto_49

    .line 1766
    :cond_7e
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->saveUpdateBundleKeys(Landroid/content/Context;Ljava/util/Set;)V

    .line 1767
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 1769
    :try_start_1d
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 1770
    :cond_7f
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1771
    move-object/from16 v3, v19

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1773
    move-object/from16 v4, p2

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1774
    move-object/from16 v19, v3

    goto :goto_4a

    .line 1775
    :cond_80
    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v1, v14, v15}, Lcom/alipay/mobile/quinox/bundle/g;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1779
    :cond_81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    if-eqz v10, :cond_82

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    .line 1781
    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1783
    :cond_82
    if-eqz p6, :cond_83

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_83

    .line 1784
    move-object/from16 v2, p6

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1786
    :cond_83
    const-string v2, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "del="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_84

    .line 1788
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v9, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1789
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/bundle/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1792
    :cond_84
    if-eqz p1, :cond_85

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    .line 1794
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1796
    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1800
    :cond_85
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    .line 1801
    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1803
    :cond_86
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 1804
    iget-object v1, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-object/from16 v4, v24

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    goto :goto_4b

    .line 1803
    :cond_87
    move-object/from16 v4, v24

    .line 1807
    :goto_4b
    if-eqz p5, :cond_88

    if-eqz v21, :cond_88

    .line 1808
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->n()V

    .line 1812
    :cond_88
    if-eqz v7, :cond_89

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    .line 1813
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1817
    :cond_89
    if-eqz v16, :cond_8d

    if-nez v21, :cond_8d

    .line 1819
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1820
    if-eqz v2, :cond_8a

    .line 1821
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1823
    :cond_8a
    goto :goto_4c

    .line 1825
    :cond_8b
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1826
    if-eqz v12, :cond_8c

    .line 1827
    iget-object v3, v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_8c
    goto :goto_4d

    .line 1832
    :cond_8d
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    .line 1833
    const-string v1, "BundleManagerImpl"

    const-string v2, "updateBundles make HostClassLoader.sHitTestSync = false"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 1835
    nop

    .line 1837
    if-eqz v22, :cond_8e

    .line 1838
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 1835
    :cond_8e
    return v21

    .line 1767
    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 1837
    :catchall_8
    move-exception v0

    goto :goto_4e

    :catchall_9
    move-exception v0

    move-object/from16 v22, v12

    :goto_4e
    move-object v1, v0

    :goto_4f
    if-eqz v22, :cond_8f

    .line 1838
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    :cond_8f
    throw v1
.end method

.method private b(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 6
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "persistence"    # Z

    .line 3052
    if-nez p2, :cond_1

    .line 3053
    nop

    .line 3054
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3056
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v2

    .line 3053
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3057
    move-object p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3058
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getEntryInputStream() == null, bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", inputStream=null, persistence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3063
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3065
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3066
    .local v1, "location":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3068
    .local v2, "srcBundleFile":Ljava/io/File;
    if-eqz p3, :cond_2

    .line 3069
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 3070
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 3073
    :cond_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3074
    move-object v0, v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 3076
    const-string v3, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Oh, yeah!!! => Success to copy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 3081
    if-eqz p3, :cond_3

    .line 3082
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(ZLjava/util/Collection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3085
    :cond_3
    nop

    .line 3089
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 3085
    return-object v1

    .line 3086
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "srcBundleFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    .line 3087
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to copy bundle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "persistence":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3089
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "persistence":Z
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method private b(Ljava/util/Map;)V
    .locals 4
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 777
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 778
    const-string v1, "quinox_read_cfg_lock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    .line 779
    .local v1, "readWithProcessLock":Z
    move v1, v0

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/.writeCfg.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 783
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 786
    goto :goto_0

    .line 785
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v2

    .line 788
    .end local v0    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Ljava/util/Map;)V

    .line 791
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "readCachedBundlesCfg(), bundles.size()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",readWithProcessLock="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BundleManagerImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .line 844
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractBundleFromApk.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 847
    return v1

    .line 849
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private b(Ljava/util/List;)Z
    .locals 8
    .param p1, "nativeLibs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2526
    const/4 v0, 0x1

    .line 2527
    .local v0, "canExtractSoNow":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2529
    .local v2, "nativeLib":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2530
    .local v3, "libDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2532
    .local v4, "sharedLibFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2533
    .local v5, "targetLibFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2537
    .end local v2    # "nativeLib":Ljava/lang/String;
    .end local v3    # "libDir":Ljava/io/File;
    .end local v4    # "sharedLibFile":Ljava/io/File;
    .end local v5    # "targetLibFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 2534
    .restart local v2    # "nativeLib":Ljava/lang/String;
    .restart local v3    # "libDir":Ljava/io/File;
    .restart local v4    # "sharedLibFile":Ljava/io/File;
    .restart local v5    # "targetLibFile":Ljava/io/File;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 2535
    nop

    .line 2538
    .end local v2    # "nativeLib":Ljava/lang/String;
    .end local v3    # "libDir":Ljava/io/File;
    .end local v4    # "sharedLibFile":Ljava/io/File;
    .end local v5    # "targetLibFile":Ljava/io/File;
    :cond_2
    return v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 2
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 803
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "bRet":Z
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 859
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    const/4 v0, 0x1

    .line 861
    goto :goto_1

    .line 862
    :catchall_0
    move-exception v2

    .line 863
    .local v2, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 864
    iget v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->r:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->r:I

    .line 865
    const/16 v5, 0x32

    if-gt v3, v5, :cond_0

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") an exception occurs: dest="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0ccount:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->r:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "extractBundleFromApk"

    invoke-static {v5, v2, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 868
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 872
    :cond_0
    new-instance v3, Lcom/alipay/mobile/quinox/bundle/h;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/bundle/h;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3, v4, v2, v1}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V

    .line 857
    .end local v2    # "e":Ljava/lang/Throwable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "retry":I
    :cond_1
    :goto_1
    return v0
.end method

.method private d(Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2904
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .line 2706
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.copyBundleFile.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 2708
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 2709
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2711
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 2712
    return-void

    .line 2711
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private d(Ljava/util/Map;)V
    .locals 6
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 807
    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 808
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/quinox/bundle/c;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "flag":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 821
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 826
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 822
    .restart local v3    # "entry":Ljava/util/Map$Entry;
    :cond_1
    :goto_1
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readCachedBundlesCfg get bad result: entry="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x1

    .line 827
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_2
    if-eqz v1, :cond_3

    .line 828
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 830
    .end local v1    # "flag":Z
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "bundles":Ljava/util/Map;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 831
    .restart local p1    # "bundles":Ljava/util/Map;
    :catchall_1
    move-exception v1

    .line 832
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 833
    instance-of v2, v1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_4

    .line 834
    const-string v2, "readCfg-file-not-found"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 836
    :cond_4
    const-string v2, "readCfg-exception"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 838
    :goto_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 839
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 841
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1109
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 1110
    .local v0, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "make bundle : createBundleFromZipFile("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BundleManagerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    return-object v0
.end method

.method private e(Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2916
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .line 2717
    const/4 v0, 0x0

    .line 2719
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2720
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 2721
    .local v3, "in":Ljava/io/InputStream;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 2725
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 2726
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2727
    .local v2, "file":Ljava/io/File;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2730
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 2722
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "null == EntryInputStream, Failed to copyBundleFile[name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "newPath":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2729
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "newPath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 2730
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v1
.end method

.method private e(Ljava/util/Map;)V
    .locals 7
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 885
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 886
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 887
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 891
    .local v0, "hostSets":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 892
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 893
    .local v3, "bundleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 894
    .local v4, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 897
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 898
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 900
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v4    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_0

    .line 904
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "BundleManagerImpl"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 905
    .local v2, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v5

    .line 906
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v3, v5

    if-eqz v5, :cond_3

    .line 908
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependNames()Ljava/util/Set;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .local v4, "dependBundleNames":Ljava/util/Set;
    nop

    .line 913
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 914
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 909
    .end local v4    # "dependBundleNames":Ljava/util/Set;
    :catch_0
    move-exception v1

    .line 910
    .local v1, "tr":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toLongString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    throw v1

    .line 917
    .end local v1    # "tr":Ljava/lang/RuntimeException;
    .end local v2    # "bundleName":Ljava/lang/String;
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_3
    :goto_2
    goto :goto_1

    .line 919
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 920
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 921
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    const-string v3, "android-phone-mobilesdk-quinox"

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 923
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 924
    .local v1, "updateBundleNames":Ljava/util/Set;
    move-object v1, v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 925
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 926
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 927
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 930
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 931
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 932
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 933
    .local v3, "bundleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 934
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 935
    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    if-eqz v5, :cond_6

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] is not exist, remove it from mHostDepends."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .end local v3    # "bundleName":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 941
    .end local v0    # "hostSets":Ljava/util/Set;
    .end local v1    # "updateBundleNames":Ljava/util/Set;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2908
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    return-object v0
.end method

.method private static f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 3096
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3100
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3102
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "recordBundleIfAbsent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "BundleManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3104
    const-string v0, "absentBundle"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getBizExternParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3105
    .local v2, "absentBundles":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 3106
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3107
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3110
    :cond_3
    :goto_0
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    .end local v2    # "absentBundles":Ljava/lang/String;
    :cond_4
    return-void

    .line 3097
    :cond_5
    :goto_1
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 3
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2468
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.optimize.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 2470
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 2471
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 2474
    return-void

    .line 2473
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private g(Ljava/util/Map;)V
    .locals 8
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2478
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v0

    .line 2480
    .local v0, "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2481
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a()Ljava/lang/String;

    move-result-object v6

    .line 2482
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2483
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_0

    .line 2485
    .end local v0    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2912
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private h(Ljava/util/Map;)V
    .locals 1
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2488
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Ljava/util/List;)V

    .line 2489
    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 1
    .param p1, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2892
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 2893
    return-void
.end method

.method private u()Z
    .locals 19

    .line 229
    move-object/from16 v1, p0

    const-string v0, ")"

    const-string v2, "The \'lib\' ("

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 233
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 234
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 236
    iget-object v7, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v7}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v7

    .line 237
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v8

    .line 239
    sget-object v9, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$3;->a:[I

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1

    const/4 v11, 0x2

    if-eq v8, v11, :cond_0

    const/4 v11, 0x3

    if-eq v8, v11, :cond_0

    .line 259
    invoke-direct {v1, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/util/Map;)V

    .line 260
    const/4 v8, 0x1

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {v1, v5, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Lcom/alipay/mobile/quinox/startup/UpgradeHelper;)V

    .line 254
    nop

    .line 255
    const/4 v8, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {v1, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/util/Map;)V

    .line 244
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 246
    invoke-direct {v1, v5, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Lcom/alipay/mobile/quinox/startup/UpgradeHelper;)V

    .line 247
    const/4 v8, 0x1

    goto :goto_0

    .line 244
    :cond_2
    const/4 v8, 0x0

    .line 266
    :goto_0
    const-string v12, "BundleManagerImpl"

    if-nez v8, :cond_9

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 271
    :try_start_0
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 272
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x10000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_7

    .line 273
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 275
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") exists = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 278
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") isFile = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", length="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v12

    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v12, v18

    :try_start_4
    invoke-static {v12, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v11

    .line 281
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") isDirectory = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v11, :cond_6

    .line 283
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 284
    if-eqz v10, :cond_4

    array-length v11, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v16, 0x1

    .line 285
    :goto_2
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") files="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_5

    const-string v2, "null"

    goto :goto_3

    :cond_5
    array-length v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 288
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 282
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 288
    :catchall_1
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_5

    .line 272
    :cond_7
    const/4 v9, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 290
    :goto_4
    move/from16 v0, v16

    goto :goto_7

    .line 288
    :catchall_4
    move-exception v0

    const/4 v9, 0x0

    const/4 v14, 0x1

    :goto_5
    const/16 v16, 0x0

    .line 289
    :goto_6
    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v0, v16

    .line 292
    :goto_7
    if-eqz v14, :cond_8

    if-nez v9, :cond_8

    if-eqz v0, :cond_9

    .line 293
    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 294
    invoke-direct {v1, v5, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Lcom/alipay/mobile/quinox/startup/UpgradeHelper;)V

    .line 295
    nop

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "exists="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isFile="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isEmptyDir="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LIB_DIR_ERROR"

    const/4 v8, 0x0

    invoke-static {v2, v8, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v17, 0x1

    goto :goto_8

    .line 301
    :cond_9
    move/from16 v17, v8

    :goto_8
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/d;->a(Landroid/content/Context;)V

    .line 302
    if-nez v17, :cond_c

    .line 303
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    sget-object v8, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/lang/String;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 305
    :cond_a
    invoke-static {v6}, Lcom/alipay/mobile/quinox/bundle/d;->a(Landroid/util/SparseArray;)Z

    .line 307
    :cond_b
    goto :goto_9

    .line 308
    :cond_c
    invoke-static {v6}, Lcom/alipay/mobile/quinox/bundle/d;->a(Landroid/util/SparseArray;)Z

    .line 309
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/lang/String;)Z

    .line 314
    :goto_9
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->setProductVersion()V

    .line 317
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 320
    iput-object v6, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    .line 323
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Ljava/util/Map;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 329
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v5

    .line 330
    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 331
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 332
    iget-object v7, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 333
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " VS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    const-string v8, "replace_compo"

    const/4 v9, 0x0

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_c

    .line 333
    :cond_d
    const/4 v9, 0x0

    .line 337
    :goto_c
    iget-object v7, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    goto :goto_b

    .line 331
    :cond_e
    const/4 v9, 0x0

    goto :goto_d

    .line 330
    :cond_f
    const/4 v9, 0x0

    .line 340
    :goto_d
    goto :goto_a

    .line 342
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BundleManager.init() cost: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. , mBundles.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 343
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDynamicSets.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    .line 344
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mComponentName2Bundle.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    .line 345
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBundleResMergeInfo.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    .line 346
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return v17
.end method

.method private v()V
    .locals 13

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 611
    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 612
    invoke-static {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 617
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 620
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isPure()Z

    move-result v3

    const-string v4, "BootLoader"

    if-eqz v3, :cond_1

    .line 621
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Pure bundle: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_1
    nop

    .line 628
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ".so"

    if-eqz v5, :cond_2

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Strange bundle location :"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ") failed."

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 638
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 641
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    .line 643
    if-eqz v8, :cond_3

    .line 645
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-object v3, v5

    goto/16 :goto_2

    .line 647
    :cond_3
    const-string v8, "dynamicLoadToCheck"

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toLongString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 652
    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 653
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pre install path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 657
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-object v3, v5

    goto :goto_2

    .line 659
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    nop

    .line 661
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "extractThingsFromApk("

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 666
    move-object v3, v5

    move-object v2, v7

    goto :goto_2

    .line 664
    :catch_0
    move-exception v3

    move-object v2, v7

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v5, v7

    .line 665
    :goto_1
    const-string v7, "pre install error"

    invoke-static {v4, v7, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    move-object v3, v5

    goto :goto_2

    .line 672
    :cond_5
    nop

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Strange bundle location (not end with .so): "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_2
    if-eqz v2, :cond_6

    .line 678
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v2

    .line 679
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 680
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [Ljava/lang/String;

    .line 681
    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 682
    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v10, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v8, v3

    invoke-static/range {v7 .. v12}, Lcom/alipay/mobile/quinox/bundle/a;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "extractSosFromZipFile("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nativeLibs="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_6
    goto/16 :goto_0

    .line 701
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mFullCheckBundles:Z

    if-eqz v0, :cond_8

    .line 702
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->s()V

    .line 705
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->n()V

    .line 707
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->t()V

    .line 709
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d()V

    .line 710
    return-void
.end method

.method private w()V
    .locals 11

    .line 723
    sget v0, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    .line 729
    .local v0, "checkMD5":Z
    sget v1, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    if-nez v1, :cond_1

    .line 730
    const/4 v0, 0x0

    goto :goto_0

    .line 731
    :cond_1
    sget v1, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 733
    :cond_2
    const/4 v0, 0x1

    .line 736
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    move-object v2, v1

    .line 737
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 738
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 740
    .local v1, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v8, v3

    .end local v1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .local v8, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    if-eqz v3, :cond_5

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isPure()Z

    move-result v1

    if-nez v1, :cond_5

    .line 745
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v1

    .line 746
    .local v2, "nativeLibs":Ljava/util/List;
    move-object v9, v1

    .end local v2    # "nativeLibs":Ljava/util/List;
    .local v9, "nativeLibs":Ljava/util/List;
    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 747
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 748
    .local v10, "sos":[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v3, v10

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/quinox/bundle/a;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkBundleLibs("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nativeLibs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    const-string v2, "BundleManagerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .end local v8    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v9    # "nativeLibs":Ljava/util/List;
    .end local v10    # "sos":[Ljava/lang/String;
    :cond_4
    move-object v1, v8

    move-object v2, v9

    goto :goto_1

    .line 737
    :cond_5
    move-object v1, v8

    goto :goto_1

    .line 755
    :cond_6
    return-void
.end method

.method private x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    return-object v0
.end method

.method private y()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 2888
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 4
    .param p1, "packageId"    # I

    .line 2807
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2808
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2810
    return-object v2

    .line 2812
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_0
    goto :goto_0

    .line 2813
    :cond_1
    return-object v1
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 5
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2818
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2819
    return-object v0

    .line 2822
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v1

    .line 2823
    .local v1, "realPkgId":I
    const/4 v2, 0x0

    .line 2824
    .local v2, "mergedResBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 2825
    .local v0, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move-object v0, v3

    if-eqz v3, :cond_1

    .line 2826
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v2

    .line 2829
    :cond_1
    if-nez v2, :cond_2

    .line 2830
    invoke-static {v1}, Lcom/alipay/mobile/quinox/bundle/d;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v3

    .line 2831
    move-object v2, v3

    if-eqz v3, :cond_2

    .line 2832
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found mergedResBundle("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") by getBundleByName(BundleResMerge.getMergedResBundleName(realPkgId)), mergeInfo is incorrect? mergeInfo.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    .line 2833
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2832
    const-string v4, "BundleManagerImpl"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    :cond_2
    return-object v2
.end method

.method public final varargs a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cpus"    # [Ljava/lang/String;

    .line 2737
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    move-result-object v0

    .line 2738
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    .line 2740
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 2741
    .local v1, "in":Ljava/io/InputStream;
    const-string v2, "lib"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2742
    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, p3, v6

    .line 2743
    .local v7, "cpu":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2744
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 2745
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v5, v9

    if-eqz v9, :cond_1

    .line 2747
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    move-object v1, v9

    if-eqz v9, :cond_0

    .line 2749
    goto :goto_2

    .line 2753
    :cond_0
    goto :goto_1

    .line 2751
    :catch_0
    move-exception v9

    .line 2752
    .local v9, "e":Ljava/io/IOException;
    const-string v10, "BundleManagerImpl"

    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2742
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "cpu":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2783
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 2784
    array-length v4, p3

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, p3, v3

    .line 2785
    .local v5, "cpu":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2786
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 2787
    move-object v1, v7

    if-nez v7, :cond_3

    .line 2784
    .end local v5    # "cpu":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2792
    :cond_3
    return-object v1
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 3
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "persistence"    # Z

    .line 3019
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->hasExtractBundles:Z

    .line 3020
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractBundle.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 3022
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 3023
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 3026
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 3023
    return-object v1

    .line 3025
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 3026
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    monitor-enter p0

    .line 2953
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2952
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
    .end local p1    # "bundleName":Ljava/lang/String;
    .end local p2    # "version":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2954
    .restart local p1    # "bundleName":Ljava/lang/String;
    .restart local p2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2955
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "BundleManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2957
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2952
    .end local p1    # "bundleName":Ljava/lang/String;
    .end local p2    # "version":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 2608
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    .line 2612
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->genBundleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2614
    .local v0, "bundleName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2616
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, p3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 2619
    goto :goto_0

    .line 2617
    :catchall_0
    move-exception v2

    .line 2618
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "BundleManagerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2620
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 2609
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 9
    .param p1, "revertBundleNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2420
    const-string v0, "dynamicLoadToCheck"

    const-string v1, "revert"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 2424
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2426
    .local v1, "bundleFiles":Ljava/util/List;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "apps"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 2427
    .local v3, "rootDir":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2428
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2431
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2432
    .local v2, "bundles":Ljava/util/Map;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/util/Map;)V

    .line 2433
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2434
    .local v0, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v0, v5

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2435
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 2436
    .local v6, "path":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2438
    .local v7, "file":Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2441
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2442
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2446
    :goto_1
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2447
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2442
    :cond_2
    move-object v5, v6

    goto :goto_2

    .line 2450
    .end local v0    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    :cond_3
    move-object v5, v6

    goto :goto_0

    .line 2453
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2454
    .local v0, "removeBundleNames":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2455
    .local v6, "bundleName":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2456
    .end local v6    # "bundleName":Ljava/lang/String;
    goto :goto_3

    .line 2457
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 2458
    .local v4, "bundleNames":Ljava/util/Set;
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v0, v4, v6}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    .line 2460
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2461
    .local v5, "wastefulBundleFile":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 2462
    .end local v5    # "wastefulBundleFile":Ljava/lang/String;
    goto :goto_4

    .line 2463
    :cond_6
    return-object v4

    .line 2422
    .end local v0    # "removeBundleNames":Ljava/util/List;
    .end local v1    # "bundleFiles":Ljava/util/List;
    .end local v2    # "bundles":Ljava/util/Map;
    .end local v3    # "rootDir":Ljava/io/File;
    .end local v4    # "bundleNames":Ljava/util/Set;
    :cond_7
    :goto_5
    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 2976
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2977
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2993
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 2995
    .local v1, "observer":Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;->onBundleLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2998
    goto :goto_0

    .line 2996
    :catchall_0
    move-exception v2

    .line 2997
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "BundleManagerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2999
    .end local v1    # "observer":Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;
    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 3000
    :cond_0
    return-void
.end method

.method public declared-synchronized a(ZLjava/util/Collection;Z)V
    .locals 3
    .param p1, "setup"    # Z
    .param p2, "bundles"    # Ljava/util/Collection;
    .param p3, "updateLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 2634
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.writeCfg.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2636
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 2637
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(ZLjava/util/Collection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2639
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2640
    monitor-exit p0

    return-void

    .line 2639
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2633
    .end local v0    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    .end local p1    # "setup":Z
    .end local p2    # "bundles":Ljava/util/Collection;
    .end local p3    # "updateLocation":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 2
    .param p1, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2558
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2559
    return-void
.end method

.method public a()Z
    .locals 3

    .line 207
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.BundleManagerImpl_init.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 211
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->u()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 211
    return v1

    .line 213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 951
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1
    .param p1, "updatePaths"    # Ljava/util/List;
    .param p2, "removeNames"    # Ljava/util/List;
    .param p3, "bundleNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZ)Z
    .locals 8
    .param p1, "updatePaths"    # Ljava/util/List;
    .param p2, "_removeBundleNames"    # Ljava/util/List;
    .param p3, "bundleNames"    # Ljava/util/Set;
    .param p4, "checkVersion"    # Z
    .param p5, "fromDelayUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1130
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "compClassName"    # Ljava/lang/String;

    .line 2604
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 5
    .param p1, "bundlePackageId"    # I

    .line 2873
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v0

    .line 2874
    .local v0, "realPackageId":I
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/d$a;

    const/4 v2, 0x0

    move-object v3, v2

    .line 2875
    .local v3, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 2876
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/d$a;->b()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2880
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    move-object v4, v2

    .line 2881
    .local v4, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 2882
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2884
    :cond_1
    return-object v2
.end method

.method public final b()V
    .locals 3

    .line 595
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->hasExtractBundles:Z

    .line 596
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractBundles.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 599
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public final b(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 2984
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2985
    return-void
.end method

.method public declared-synchronized b(ZLjava/util/Collection;Z)V
    .locals 11
    .param p1, "setup"    # Z
    .param p2, "bundles"    # Ljava/util/Collection;
    .param p3, "updateLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 2644
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->s:Z

    if-eqz v0, :cond_0

    .line 2645
    const-string v0, "BundleManagerImpl"

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeCfg(setup=true(mAlreadyWritten=true), updateLocation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2646
    monitor-exit p0

    return-void

    .line 2643
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
    .end local p1    # "setup":Z
    .end local p2    # "bundles":Ljava/util/Collection;
    .end local p3    # "updateLocation":Z
    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2650
    .restart local p1    # "setup":Z
    .restart local p2    # "bundles":Ljava/util/Collection;
    .restart local p3    # "updateLocation":Z
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 2651
    .local v3, "slink":Ljava/util/List;
    move-object v3, v2

    const-string v4, "no-static-link-info"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2653
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeCfg: setup="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", updateLocation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", bundles="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 2656
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2653
    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2658
    if-eqz p3, :cond_7

    .line 2659
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 2665
    :cond_2
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAllBundles="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2668
    .local v2, "map":Ljava/util/HashMap;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2669
    .local v5, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v5, v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2670
    .local v6, "bundleName":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2671
    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2673
    .local v7, "updateBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2674
    const-string v8, "BundleManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "writeCfg: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has effected already."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2676
    :cond_3
    const-string v8, "BundleManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "writeCfg: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " will be replaced by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    .end local v7    # "updateBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_1

    .line 2679
    :cond_4
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    nop

    .end local v5    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v6    # "bundleName":Ljava/lang/String;
    goto :goto_1

    .line 2683
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2684
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2685
    .end local v2    # "map":Ljava/util/HashMap;
    goto :goto_3

    .line 2663
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 2687
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->m:Lcom/alipay/mobile/quinox/bundle/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2690
    :goto_3
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2695
    .end local v3    # "slink":Ljava/util/List;
    monitor-exit p0

    return-void

    .line 2691
    :catchall_1
    move-exception v2

    .line 2692
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "writeCfg-exception"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2693
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 2694
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2696
    .end local v2    # "e":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 2643
    .end local p1    # "setup":Z
    .end local p2    # "bundles":Ljava/util/Collection;
    .end local p3    # "updateLocation":Z
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z
    .locals 3
    .param p1, "depend"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2841
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2842
    return v0

    .line 2844
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 2845
    .local v2, "mergedResBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v1

    if-eqz v1, :cond_1

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final c(Lcom/alipay/mobile/quinox/bundle/Bundle;)Ljava/lang/String;
    .locals 8
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2850
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v0

    const/4 v1, 0x0

    .line 2851
    .local v1, "bundlePackageId":I
    move v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateRealPackageId(I)I

    move-result v0

    .line 2852
    .local v0, "realPackageId":I
    const/4 v2, 0x0

    .line 2853
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/d$a;

    const/4 v4, 0x0

    move-object v5, v4

    .line 2854
    .local v5, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 2855
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/d$a;->b()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 2857
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containRes()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2858
    if-nez v2, :cond_1

    .line 2860
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->readPackageNameFromArsc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2864
    goto :goto_0

    .line 2861
    :catchall_0
    move-exception v3

    .line 2862
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "BundleManagerImpl"

    const-string v7, "readPackageNameFromArsc failed!"

    invoke-static {v6, v7, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2863
    return-object v4

    .line 2867
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v2
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 974
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v0

    .line 975
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    .line 976
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/e;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 977
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    if-eqz v2, :cond_0

    .line 982
    const-string v2, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " checkSign failed, but mIsDebug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_0
    const-string v2, "BundleManagerImpl"

    const-string v3, "MonitorPoint_DynamicLoad_addExternalErr"

    .line 979
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 978
    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 980
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s checkSign failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v3

    .line 988
    if-eqz v3, :cond_3

    .line 989
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 990
    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    if-eqz v4, :cond_2

    .line 994
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " \'BundleVersion is lower. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but mIsDebug="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->l:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 991
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s BundleVersion is lower :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_3
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1000
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1001
    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1003
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1004
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1007
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 1008
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1009
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, v11

    move-object v9, v13

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/util/SparseArray;)Ljava/util/Map;

    move-result-object v5

    .line 1010
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1011
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1013
    :cond_4
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1014
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1017
    :cond_5
    invoke-direct {p0, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h(Ljava/util/Map;)V

    .line 1019
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    .line 1020
    new-array v8, v6, [Lcom/alipay/mobile/quinox/bundle/Bundle;

    aput-object v3, v8, v7

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1022
    :cond_6
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->containsBundleClassLoader(Ljava/lang/String;)Z

    move-result v3

    .line 1023
    xor-int/2addr v3, v6

    if-nez v3, :cond_7

    .line 1024
    const-string v6, "BundleManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The added bundle is already loaded, [path="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], so you should restart app to take effect"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1027
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1028
    instance-of v6, p1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-eqz v6, :cond_8

    .line 1029
    check-cast p1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->isUseOriginAssets()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1030
    nop

    .line 1031
    const-string p1, "BundleManagerImpl"

    const-string v3, "we can\'t replace bundle immediately because HostResources is using origin assets"

    invoke-static {p1, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1035
    :cond_8
    :goto_2
    if-eqz v3, :cond_c

    .line 1036
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 1037
    invoke-direct {p0, v11}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1038
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1039
    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1041
    :cond_9
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1042
    invoke-direct {p0, v13}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 1044
    :cond_a
    invoke-direct {p0, v12}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Landroid/util/SparseArray;)V

    .line 1045
    iget-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {p1, v7}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources(Z)V

    .line 1047
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object p1

    .line 1048
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1049
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1050
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    goto :goto_3

    .line 1053
    :cond_b
    iget-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_c
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 1059
    iget-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    .line 1060
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1061
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_d

    .line 1062
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1063
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 1064
    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1061
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1066
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/bundle/d;->b(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1069
    :cond_e
    iget-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {p1, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1070
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, v7, p1, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(ZLjava/util/Collection;Z)V

    .line 1072
    const-class p1, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1073
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1074
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1075
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1076
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1077
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1081
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->saveUpdateBundleKeys(Landroid/content/Context;Ljava/util/Set;)V

    .line 1083
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    monitor-exit p0

    return-object v2

    .line 1083
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 973
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "BundleManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    .end local v0    # "e":Ljava/lang/InterruptedException;
    return-void
.end method

.method public final d()V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 769
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 1090
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 1091
    .local v0, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 1092
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v1

    .line 1093
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    monitor-exit p0

    return-void

    .line 1089
    .end local v0    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 2797
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 2931
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 2962
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2802
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBundleLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "bundleVersion"    # Ljava/lang/String;

    .line 2941
    const/4 v0, 0x0

    .line 2942
    .local v0, "location":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 2943
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 2944
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2945
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 2947
    :cond_1
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 2966
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2567
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/e;->a()V

    .line 2583
    return-void
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 2921
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final k()[Ljava/lang/String;
    .locals 5

    .line 2587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2588
    .local v0, "bundleList":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2589
    .local v3, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 2590
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 2591
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2593
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v3    # "bundleName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2594
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    .local v1, "sortedBundleNameList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2597
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2598
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_1

    .line 2599
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public final l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final m()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 2926
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->y()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 2544
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/bundle/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2546
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2548
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2549
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 2936
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lcom/alipay/mobile/quinox/bundle/e;
    .locals 1

    .line 3032
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/e;

    return-object v0
.end method

.method public final q()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;"
        }
    .end annotation

    .line 3037
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i:Landroid/util/SparseArray;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 3048
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public refreshUpdatedBundlesInLite(Landroid/os/Bundle;Ljava/util/Set;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1844
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "BundleManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RUBIL(updateResult="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1847
    const-string v0, "BundleManagerImpl"

    const-string v3, "RUBIL but updateResult is null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return v2

    .line 1851
    :cond_0
    const-string v3, "immediately"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1852
    if-nez v3, :cond_1

    .line 1853
    const-string v0, "BundleManagerImpl"

    const-string v3, "RUBIL but updateResult is not immediately, no operations can be done!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    return v2

    .line 1857
    :cond_1
    if-nez p2, :cond_2

    .line 1858
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 1857
    :cond_2
    move-object/from16 v3, p2

    .line 1861
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    .line 1862
    const-string v5, "BundleManagerImpl"

    const-string v6, "RUBIL make HostClassLoader.sHitTestSync = true"

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v5, "updateBundles"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1866
    const-string v6, "removeBundles"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1867
    const-string v7, "recoverBundles"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1868
    const-string v8, "addedMergedResBundles"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1869
    const-string v9, "changedMergedResBundles"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1870
    const-string v10, "changedMergeInfo"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1873
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1874
    invoke-direct {v1, v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b(Ljava/util/Map;)V

    .line 1878
    nop

    .line 1879
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1880
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1881
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1882
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1883
    if-eqz v14, :cond_4

    .line 1887
    iget-object v15, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1891
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    goto :goto_1

    .line 1888
    :cond_3
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_4
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL updateBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL updateBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1893
    :cond_5
    const-string v5, "BundleManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "RUBIL updateBundlesMap: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1896
    :cond_6
    const/4 v12, 0x0

    :goto_2
    nop

    .line 1897
    if-eqz v6, :cond_d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 1898
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1899
    iget-object v14, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->p:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 1904
    invoke-virtual {v1, v13}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v14

    .line 1905
    if-eqz v14, :cond_a

    .line 1906
    nop

    .line 1907
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1908
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/quinox/bundle/Bundle;

    goto :goto_4

    .line 1912
    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_9

    .line 1924
    if-nez v11, :cond_8

    .line 1925
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    :cond_8
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1929
    goto :goto_3

    .line 1913
    :cond_9
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL removeBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info also in updateBundles, is the upgration ok?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL removeBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info also in updateBundles, is the upgration ok?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1930
    :cond_a
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL removeBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in mem, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL removeBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in mem, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1900
    :cond_b
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL Last update not done, wait till next launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1934
    :cond_c
    const-string v5, "BundleManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RUBIL removeBundles="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1937
    :cond_d
    const/4 v11, 0x0

    :goto_5
    nop

    .line 1938
    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 1939
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1941
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1942
    if-eqz v14, :cond_e

    .line 1946
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1947
    goto :goto_6

    .line 1943
    :cond_e
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL recoverBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL recoverBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1948
    :cond_f
    const-string v7, "BundleManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RUBIL recoverBundles: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1952
    :cond_10
    const/4 v5, 0x0

    :goto_7
    nop

    .line 1953
    nop

    .line 1954
    nop

    .line 1956
    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 1957
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1958
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1959
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1960
    if-eqz v14, :cond_11

    .line 1964
    invoke-interface {v7, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    goto :goto_8

    .line 1961
    :cond_11
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL changedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL changedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1967
    :cond_12
    const/4 v7, 0x0

    :cond_13
    if-eqz v7, :cond_17

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_17

    .line 1968
    const-string v9, "BundleManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RUBIL changedMergedResBundles="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1970
    invoke-direct {v1, v14}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v15

    .line 1971
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1972
    if-eqz v4, :cond_15

    if-eqz v15, :cond_15

    if-eq v15, v4, :cond_15

    .line 1973
    invoke-virtual {v15}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v9

    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1974
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1975
    if-nez v13, :cond_14

    .line 1976
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1978
    :cond_14
    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v17

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_9

    .line 1980
    :cond_15
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL changedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is same with old one, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL changedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is same with old one, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1984
    :cond_16
    if-eqz v13, :cond_17

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1985
    const-string v2, "BundleManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "RUBIL removeMergedResBundles="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :cond_17
    if-eqz v8, :cond_19

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 1989
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1990
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1991
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 1992
    if-eqz v9, :cond_18

    .line 1996
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    goto :goto_a

    .line 1993
    :cond_18
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL addedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL addedMergedResBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_19
    const/4 v2, 0x0

    :cond_1a
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2000
    const-string v4, "BundleManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RUBIL addedMergedResBundles="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    :cond_1b
    nop

    .line 2005
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 2006
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2007
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 2008
    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->b:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/lang/String;Landroid/util/SparseArray;)Z

    .line 2009
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2010
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 2011
    if-eqz v10, :cond_1c

    .line 2015
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2016
    goto :goto_b

    .line 2012
    :cond_1c
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL mergeInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RUBIL mergeInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s info is not in config file, is there an upgration?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2020
    :cond_1d
    const/4 v4, 0x0

    :cond_1e
    nop

    .line 2021
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->x()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v0

    .line 2022
    if-eqz v12, :cond_20

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 2023
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2024
    if-eqz v9, :cond_1f

    .line 2025
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->containsBundleClassLoader(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_d

    :cond_1f
    const/4 v9, 0x0

    .line 2026
    :goto_d
    goto :goto_c

    .line 2028
    :cond_20
    const/4 v9, 0x1

    :cond_21
    if-eqz v6, :cond_23

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_23

    .line 2029
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2030
    if-eqz v9, :cond_22

    .line 2031
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->containsBundleClassLoader(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    const/4 v9, 0x1

    goto :goto_f

    :cond_22
    const/4 v9, 0x0

    .line 2032
    :goto_f
    goto :goto_e

    .line 2034
    :cond_23
    const-string v8, "BundleManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "RUBIL immediately by ClassLoader judge="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    nop

    .line 2037
    const/16 v8, 0x7f

    const/16 v10, 0x1b

    if-eqz v12, :cond_25

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_25

    .line 2038
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2039
    if-eqz v15, :cond_24

    .line 2040
    invoke-virtual {v15}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v15

    .line 2041
    if-eq v15, v10, :cond_24

    if-eq v15, v8, :cond_24

    .line 2042
    const/4 v14, 0x1

    .line 2045
    :cond_24
    goto :goto_10

    .line 2047
    :cond_25
    const/4 v14, 0x0

    :cond_26
    if-eqz v5, :cond_28

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_28

    .line 2048
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2049
    if-eqz v15, :cond_27

    .line 2050
    invoke-virtual {v15}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v15

    .line 2051
    if-eq v15, v10, :cond_27

    if-eq v15, v8, :cond_27

    .line 2052
    const/4 v14, 0x1

    .line 2055
    :cond_27
    goto :goto_11

    .line 2058
    :cond_28
    if-eqz v9, :cond_29

    .line 2059
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2060
    instance-of v10, v8, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-eqz v10, :cond_29

    .line 2061
    check-cast v8, Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/resources/BundleResources;->isUseOriginAssets()Z

    move-result v8

    if-eqz v8, :cond_29

    if-eqz v14, :cond_29

    .line 2062
    nop

    .line 2063
    const-string v8, "BundleManagerImpl"

    const-string v9, "RUBIL we can\'t replace bundle immediately because HostResources is using origin assets, and bundle in HostResources has changed."

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 2067
    :cond_29
    const-string v8, "BundleManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "RUBIL immediately="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    if-nez v9, :cond_2a

    .line 2070
    const-string v0, "BundleManagerImpl"

    const-string v2, "RUBIL stop processing for refreshUpdatedBundlesInLite"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const/4 v0, 0x0

    return v0

    .line 2075
    :cond_2a
    nop

    .line 2076
    if-eqz v11, :cond_2e

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 2077
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2079
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2081
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2082
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c

    if-eqz v9, :cond_2b

    goto :goto_13

    :cond_2b
    const/4 v9, 0x0

    goto :goto_14

    :cond_2c
    :goto_13
    const/4 v9, 0x1

    .line 2084
    :goto_14
    invoke-direct {v1, v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2086
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v10

    .line 2087
    if-eqz v10, :cond_2d

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2d

    .line 2088
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2089
    iget-object v14, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    goto :goto_15

    .line 2093
    :cond_2d
    iget-object v10, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v10

    .line 2094
    :try_start_0
    iget-object v13, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    invoke-virtual {v0, v11}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)V

    .line 2097
    goto :goto_12

    .line 2095
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2100
    :cond_2e
    const/4 v9, 0x0

    :cond_2f
    if-eqz v5, :cond_33

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_33

    .line 2101
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2102
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2108
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2109
    iget-object v13, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    if-eqz v9, :cond_30

    goto :goto_17

    :cond_30
    const/4 v9, 0x0

    goto :goto_18

    :cond_31
    :goto_17
    const/4 v9, 0x1

    .line 2112
    :goto_18
    invoke-direct {v1, v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->d(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 2114
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v13

    .line 2115
    if-eqz v13, :cond_32

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_32

    .line 2116
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2117
    iget-object v15, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    goto :goto_19

    .line 2121
    :cond_32
    iget-object v13, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v13

    .line 2122
    :try_start_2
    iget-object v14, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2124
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 2125
    goto :goto_16

    .line 2123
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2128
    :cond_33
    if-eqz v12, :cond_38

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    .line 2129
    iget-object v8, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->e:Ljava/util/Set;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2130
    iget-object v8, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f:Ljava/util/Set;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_35

    if-eqz v9, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v8, 0x0

    goto :goto_1b

    :cond_35
    :goto_1a
    const/4 v8, 0x1

    .line 2132
    :goto_1b
    invoke-direct {v1, v12}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 2134
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2135
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v11

    .line 2136
    if-eqz v11, :cond_36

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_36

    .line 2137
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2138
    iget-object v14, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o:Ljava/util/HashMap;

    invoke-virtual {v14, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    goto :goto_1d

    .line 2142
    :cond_36
    iget-object v11, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v11

    .line 2143
    :try_start_4
    iget-object v13, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2145
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 2146
    goto :goto_1c

    .line 2144
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2134
    :cond_37
    move v9, v8

    .line 2149
    :cond_38
    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_39

    .line 2150
    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 2153
    :cond_39
    if-eqz v7, :cond_3a

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 2154
    invoke-direct {v1, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->i(Ljava/util/Map;)V

    .line 2157
    :cond_3a
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_3b

    .line 2158
    invoke-direct {v1, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Landroid/util/SparseArray;)V

    .line 2162
    :cond_3b
    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources(Z)V

    .line 2164
    if-eqz v9, :cond_3c

    .line 2165
    iget-object v4, v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 2166
    const/4 v0, 0x1

    :try_start_6
    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    .line 2167
    monitor-exit v4

    goto :goto_1e

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 2172
    :cond_3c
    :goto_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->j()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2174
    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2175
    const-string v4, "BundleManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RUBIL mAllBundles="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2177
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2178
    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    goto :goto_1f

    .line 2181
    :cond_3d
    const-string v4, "BundleManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RUBIL removeBundleNames="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    :cond_3e
    if-eqz v5, :cond_40

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    .line 2184
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2185
    iget-object v8, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    goto :goto_20

    .line 2188
    :cond_3f
    const-string v4, "BundleManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "RUBIL recoverBundles="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    :cond_40
    if-eqz v12, :cond_41

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 2191
    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2192
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2193
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RUBIL updateBundlesMap="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_41
    if-eqz v2, :cond_42

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 2196
    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2197
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2198
    const-string v4, "BundleManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RUBIL addedMergedResBundles="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    :cond_42
    if-eqz v7, :cond_43

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 2201
    iget-object v2, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2202
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2203
    const-string v0, "BundleManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "RUBIL changedMergedResBundles="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    :cond_43
    if-eqz v12, :cond_44

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2208
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2211
    :cond_44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    .line 2212
    const-string v0, "BundleManagerImpl"

    const-string v2, "RUBIL make HostClassLoader.sHitTestSync = false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const/4 v0, 0x1

    return v0
.end method

.method public final s()V
    .locals 22

    move-object/from16 v1, p0

    const-class v2, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    .line 482
    const-string v3, "BundleManagerImpl"

    const-string v0, "do fullCheckRecovery"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 486
    .local v4, "orgAllBundlesMap":Ljava/util/Map;
    :try_start_0
    invoke-direct {v1, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->c(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 490
    nop

    .line 492
    iget-object v0, v1, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 495
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 496
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 498
    .local v10, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    if-eqz v10, :cond_d

    :try_start_1
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isPure()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_9

    .line 503
    :cond_0
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/quinox/bundle/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 504
    .local v0, "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v12, v11

    .end local v0    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .local v12, "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    if-nez v11, :cond_1

    .line 505
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "fullCheckRecovery failed on bundle ("

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "), new bundle."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    move-object v0, v12

    goto :goto_0

    .line 587
    .end local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_8

    .line 509
    .restart local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 510
    .local v0, "dynamicBundle":Z
    :try_start_3
    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 511
    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    .line 510
    :cond_2
    move v11, v0

    .line 513
    .end local v0    # "dynamicBundle":Z
    .local v11, "dynamicBundle":Z
    :goto_1
    const/4 v13, 0x0

    .line 515
    .local v13, "needExtract":Z
    new-instance v0, Ljava/io/File;

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-object v14, v0

    .line 516
    .local v14, "file":Ljava/io/File;
    if-nez v11, :cond_5

    .line 517
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 519
    .local v15, "tempFileInputStream":Ljava/io/InputStream;
    nop

    .line 520
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 521
    move-object/from16 v16, v4

    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .local v16, "orgAllBundlesMap":Ljava/util/Map;
    :try_start_5
    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 522
    move-object/from16 v17, v5

    .end local v5    # "iterator":Ljava/util/Iterator;
    .local v17, "iterator":Ljava/util/Iterator;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-virtual {v1, v0, v4, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object v4, v0

    .line 524
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_7
    invoke-static {v15, v4}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->checkMd5(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_3

    .line 525
    const/4 v13, 0x1

    .line 528
    :cond_3
    :try_start_8
    invoke-static {v15}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 529
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 530
    move-object v6, v4

    goto/16 :goto_4

    .line 528
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-static {v15}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 529
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .end local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 587
    .end local v11    # "dynamicBundle":Z
    .end local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v13    # "needExtract":Z
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "tempFileInputStream":Ljava/io/InputStream;
    .restart local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v6, v4

    goto/16 :goto_8

    .end local v17    # "iterator":Ljava/util/Iterator;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v2

    .end local v5    # "iterator":Ljava/util/Iterator;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    goto/16 :goto_8

    .line 532
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .local v4, "orgAllBundlesMap":Ljava/util/Map;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    .restart local v11    # "dynamicBundle":Z
    .restart local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v13    # "needExtract":Z
    .restart local v14    # "file":Ljava/io/File;
    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    const/4 v13, 0x1

    goto :goto_4

    .line 587
    .end local v11    # "dynamicBundle":Z
    .end local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v13    # "needExtract":Z
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v2

    goto/16 :goto_8

    .line 535
    .restart local v11    # "dynamicBundle":Z
    .restart local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v13    # "needExtract":Z
    .restart local v14    # "file":Ljava/io/File;
    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :try_start_9
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 536
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v4, v0

    .line 538
    .local v4, "tempFileInputStream":Ljava/io/InputStream;
    :try_start_a
    invoke-static {v4}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genInputStreamMd5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 539
    .local v6, "md5Sum1":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getMD5()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "md5Sum2":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .end local v6    # "md5Sum1":Ljava/lang/String;
    :cond_7
    :goto_2
    const/4 v5, 0x1

    :goto_3
    move v13, v5

    .line 542
    .end local v0    # "md5Sum2":Ljava/lang/String;
    :try_start_b
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 543
    goto :goto_4

    .line 542
    :catchall_5
    move-exception v0

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .end local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 545
    .end local v4    # "tempFileInputStream":Ljava/io/InputStream;
    .restart local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :cond_8
    const/4 v13, 0x1

    .line 549
    :goto_4
    if-eqz v13, :cond_c

    .line 551
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "optimizedDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->o()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v6, "installDir":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v5, v15}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "srcBundleFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v5, "srcBundleFile":Ljava/io/File;
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 558
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 560
    nop

    .line 561
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 562
    move-object/from16 v18, v0

    .end local v0    # "optimizedDir":Ljava/lang/String;
    .local v18, "optimizedDir":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 563
    move-object/from16 v19, v2

    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v1, v15, v0, v2}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 564
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 565
    .local v7, "bufferedInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v2

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 567
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 569
    invoke-virtual {v10, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 571
    if-eqz v11, :cond_b

    .line 572
    invoke-virtual {v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v2

    .line 573
    .local v8, "nativeSo":Ljava/util/List;
    move-object v8, v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->g()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "nativeLibDir":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v20

    .line 576
    .local v21, "so":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v20, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, v21

    .end local v21    # "so":Ljava/lang/String;
    .local v1, "so":Ljava/lang/String;
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v9, "f":Ljava/io/File;
    move-object v9, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/io/File;)Z

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v21, v1

    .end local v1    # "so":Ljava/lang/String;
    .restart local v21    # "so":Ljava/lang/String;
    const-string v1, "bundle extracted, delete old so "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 579
    .end local v9    # "f":Ljava/io/File;
    .end local v21    # "so":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v0, v20

    goto :goto_5

    .line 575
    .end local v6    # "installDir":Ljava/lang/String;
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v8    # "nativeSo":Ljava/util/List;
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_9
    move-object/from16 v20, v0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 573
    .end local v2    # "nativeLibDir":Ljava/lang/String;
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_a
    move-object/from16 v20, v0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 571
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v20, v0

    .line 583
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "srcBundleFilePath":Ljava/lang/String;
    .end local v5    # "srcBundleFile":Ljava/io/File;
    .end local v18    # "optimizedDir":Ljava/lang/String;
    :goto_6
    :try_start_e
    invoke-static {v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .line 584
    move-object/from16 v1, p0

    move-object v0, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 583
    :catchall_6
    move-exception v0

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object/from16 v19, v2

    :goto_7
    invoke-static {v10}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->f(Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    .end local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 587
    .end local v11    # "dynamicBundle":Z
    .end local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v13    # "needExtract":Z
    .end local v14    # "file":Ljava/io/File;
    .restart local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :catchall_8
    move-exception v0

    goto :goto_8

    .line 549
    .restart local v11    # "dynamicBundle":Z
    .restart local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local v13    # "needExtract":Z
    .restart local v14    # "file":Ljava/io/File;
    :cond_c
    move-object/from16 v19, v2

    .line 589
    .end local v11    # "dynamicBundle":Z
    .end local v12    # "oriBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v13    # "needExtract":Z
    .end local v14    # "file":Ljava/io/File;
    move-object/from16 v1, p0

    move-object v0, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_0

    .line 587
    :catchall_9
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_8

    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .local v4, "orgAllBundlesMap":Ljava/util/Map;
    .local v5, "iterator":Ljava/util/Iterator;
    :catchall_a
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 588
    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :goto_8
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    .end local v0    # "tr":Ljava/lang/Throwable;
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 498
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 499
    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 591
    .end local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v16    # "orgAllBundlesMap":Ljava/util/Map;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    :cond_e
    return-void

    .line 487
    .end local v5    # "iterator":Ljava/util/Iterator;
    :catchall_b
    move-exception v0

    move-object/from16 v16, v4

    move-object v1, v0

    .end local v4    # "orgAllBundlesMap":Ljava/util/Map;
    .restart local v16    # "orgAllBundlesMap":Ljava/util/Map;
    move-object v0, v1

    .line 488
    .restart local v0    # "tr":Ljava/lang/Throwable;
    const-string v1, "fullCheckRecovery fail"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    return-void
.end method

.method public final t()V
    .locals 3

    .line 713
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.checkBundleLibs.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 716
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z
    .locals 6
    .param p1, "updatePaths"    # Ljava/util/List;
    .param p2, "_removeBundleNames"    # Ljava/util/List;
    .param p3, "bundleNames"    # Ljava/util/Set;
    .param p4, "checkVersion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1124
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZ)Z

    move-result v0

    return v0
.end method

.method public updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZLandroid/os/Bundle;)Z
    .locals 8
    .param p1, "updatePaths"    # Ljava/util/List;
    .param p2, "_removeBundleNames"    # Ljava/util/List;
    .param p3, "bundleNames"    # Ljava/util/Set;
    .param p4, "checkVersion"    # Z
    .param p5, "fromDelayUpdate"    # Z
    .param p6, "updateResult"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 1137
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

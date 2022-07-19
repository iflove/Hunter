.class public Lcom/alipay/mobile/quinox/resources/BundleResources;
.super Landroid/content/res/Resources;
.source "BundleResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    }
.end annotation


# static fields
.field private static final SP_NAME_RES_REPORT:Ljava/lang/String; = "quinox_res_not_found_report"

.field public static final TAG:Ljava/lang/String; = "BundleResources"

.field private static final sBundlePackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnsureStringBlocks:Ljava/lang/reflect/Method;

.field private static sOriginResEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sStringBlocksFiled:Ljava/lang/reflect/Field;


# instance fields
.field private final mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

.field private mBundle27PackageName:Ljava/lang/String;

.field private mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private mCheckResult:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

.field private final mDescription:Ljava/lang/String;

.field private mHasSamePackageId:Z

.field private final mOldResources:Landroid/content/res/Resources;

.field private final mPackageIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseOriginAssets:Z

.field private final mViolenceFindingThreadIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sBundlePackages:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sPreloadedDrawables:Landroid/util/SparseArray;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .locals 20
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p5, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p6, "ids"    # Ljava/util/List;
    .param p7, "pkgCookies"    # Ljava/util/List;
    .param p8, "useOriginAssets"    # Z
    .param p9, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Landroid/util/DisplayMetrics;",
            "Landroid/content/res/Configuration;",
            "Lcom/alipay/mobile/quinox/bundle/BundleManager;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 101
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {p0 .. p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 88
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->UNKNOWN:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    iput-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mCheckResult:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    .line 102
    if-eqz v4, :cond_8

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 107
    iput-object v3, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 108
    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 110
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->q()Landroid/util/SparseArray;

    move-result-object v8

    .line 111
    .local v8, "mResMergeInfo":Landroid/util/SparseArray;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mHasSamePackageId:Z

    .line 113
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    .line 114
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 116
    iput-object v6, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mDescription:Ljava/lang/String;

    .line 118
    iput-boolean v5, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mUseOriginAssets:Z

    .line 120
    move-object/from16 v10, p7

    invoke-direct {v1, v2, v10}, Lcom/alipay/mobile/quinox/resources/BundleResources;->checkAndRepairStringBlocks(Landroid/content/res/AssetManager;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v11

    .line 122
    .local v11, "stringBlocks":[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v12

    .line 124
    .local v12, "assetPaths":Ljava/util/LinkedHashSet;
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v13

    iput-object v13, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    .line 127
    if-eqz v13, :cond_6

    :try_start_0
    sget-object v13, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    if-nez v13, :cond_6

    .line 128
    const-class v13, Lcom/alipay/mobile/quinox/resources/BundleResources;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 129
    :try_start_1
    sget-object v15, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    if-nez v15, :cond_5

    .line 130
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    sput-object v15, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    .line 131
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v15

    .line 132
    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v9, "origin_res_entries"

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->isSamsungDevice()Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v17, :cond_1

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v0, v14, :cond_1

    const-string v0, "android:dimen/status_bar_height"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_5

    .line 133
    :cond_1
    :try_start_3
    const-string v0, ""

    :goto_1
    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    move-object v14, v9

    .line 135
    .local v14, "configStr":Ljava/lang/String;
    move-object v9, v0

    .end local v14    # "configStr":Ljava/lang/String;
    .local v9, "configStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    array-length v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v15, v14, :cond_3

    aget-object v18, v0, v15

    move-object/from16 v19, v18

    .line 138
    .local v19, "ore":Ljava/lang/String;
    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    move-object/from16 v4, v19

    const/4 v7, 0x0

    .end local v19    # "ore":Ljava/lang/String;
    .local v4, "ore":Ljava/lang/String;
    invoke-virtual {v0, v4, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v16, "id":I
    move/from16 v16, v0

    if-eqz v0, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/seiginonakama/res/utils/ResIdUtils;->getPackageId(I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 140
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v0, "BundleResources"

    new-instance v7, Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v19, v8

    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .local v19, "mResMergeInfo":Landroid/util/SparseArray;
    :try_start_4
    const-string v8, "init origin res entry, name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " id: 0x0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 139
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_2
    move-object/from16 v19, v8

    .line 137
    .end local v4    # "ore":Ljava/lang/String;
    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .end local v16    # "id":I
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p4

    move-object/from16 v4, p6

    move-object/from16 v0, v18

    move-object/from16 v8, v19

    goto :goto_2

    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_3
    move-object/from16 v19, v8

    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    goto :goto_4

    .line 135
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_4
    move-object/from16 v19, v8

    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    goto :goto_4

    .line 129
    .end local v9    # "configStr":Ljava/lang/String;
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_5
    move-object/from16 v19, v8

    .line 146
    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    :goto_4
    monitor-exit v13

    goto :goto_7

    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    :goto_5
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v11    # "stringBlocks":[Ljava/lang/Object;
    .end local v12    # "assetPaths":Ljava/util/LinkedHashSet;
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .end local p1    # "assets":Landroid/content/res/AssetManager;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "config":Landroid/content/res/Configuration;
    .end local p4    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p5    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p6    # "ids":Ljava/util/List;
    .end local p7    # "pkgCookies":Ljava/util/List;
    .end local p8    # "useOriginAssets":Z
    .end local p9    # "description":Ljava/lang/String;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    .restart local v11    # "stringBlocks":[Ljava/lang/Object;
    .restart local v12    # "assetPaths":Ljava/util/LinkedHashSet;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local p1    # "assets":Landroid/content/res/AssetManager;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "config":Landroid/content/res/Configuration;
    .restart local p4    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p5    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p6    # "ids":Ljava/util/List;
    .restart local p7    # "pkgCookies":Ljava/util/List;
    .restart local p8    # "useOriginAssets":Z
    .restart local p9    # "description":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 146
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 148
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v8

    .line 149
    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    :goto_6
    const-string v4, "BundleResources"

    const-string v7, "init sOriginResEntries failed."

    invoke-static {v4, v7, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 127
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_6
    move-object/from16 v19, v8

    .line 150
    .end local v8    # "mResMergeInfo":Landroid/util/SparseArray;
    .restart local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    nop

    .line 152
    :goto_7
    const-string v0, "BundleResources"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "new BundleResources() "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", packageId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", depends:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    .line 153
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", description:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pkgCookies:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getPkgCookieString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", stringBlocks.length:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_7

    const/4 v14, 0x0

    goto :goto_8

    :cond_7
    array-length v7, v11

    .line 156
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", assetManager:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", useOriginAssets:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", assetPaths:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 102
    .end local v11    # "stringBlocks":[Ljava/lang/Object;
    .end local v12    # "assetPaths":Ljava/util/LinkedHashSet;
    .end local v19    # "mResMergeInfo":Landroid/util/SparseArray;
    :cond_8
    move-object/from16 v10, p7

    .line 103
    new-instance v0, Lcom/alipay/mobile/quinox/error/BundleResourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "new BundleResources(bundle="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), ids[] is empty, description:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alipay/mobile/quinox/error/BundleResourceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAndRepairStringBlocks(Landroid/content/res/AssetManager;Ljava/util/List;)[Ljava/lang/Object;
    .locals 12
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "pkgCookies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "BundleResources"

    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, "stringBlocks":[Ljava/lang/Object;
    if-eqz p2, :cond_6

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 774
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getStringBlocks(Landroid/content/res/AssetManager;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 775
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 776
    .local v2, "expectStringBlockLength":I
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources;->checkStringBlocks([Ljava/lang/Object;I)Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 777
    .local v6, "checkResult":Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    move-object v6, v4

    iget v4, v4, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    if-eqz v4, :cond_5

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "checkStringBlocks failed:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v4, ""

    .line 780
    .local v4, "recoverMessage":Ljava/lang/String;
    move-object v7, v1

    .line 781
    .local v7, "backup":[Ljava/lang/Object;
    iget v8, v6, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 805
    move-object v8, v5

    goto :goto_1

    .line 788
    :cond_0
    sget-object v8, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v8, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 790
    :try_start_1
    sget-object v8, Lcom/alipay/mobile/quinox/resources/BundleResources;->sEnsureStringBlocks:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v10, "ensureStringBlocks"

    new-array v11, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 792
    sput-object v8, Lcom/alipay/mobile/quinox/resources/BundleResources;->sEnsureStringBlocks:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 794
    :cond_1
    sget-object v8, Lcom/alipay/mobile/quinox/resources/BundleResources;->sEnsureStringBlocks:Ljava/lang/reflect/Method;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v8, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v1, v8

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "call assets.ensureStringBlocks() success, stringBlocks.length:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    move-object v9, v5

    goto :goto_0

    :cond_2
    array-length v9, v1

    .line 797
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 798
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    move-object v8, v5

    goto :goto_1

    .line 799
    :catchall_0
    move-exception v8

    .line 800
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "call assets.ensureStringBlocks() failed, e:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 801
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getStringBlocks(Landroid/content/res/AssetManager;)[Ljava/lang/Object;

    move-result-object v9

    .line 806
    move-object v1, v9

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources;->checkStringBlocks([Ljava/lang/Object;I)Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    move-result-object v9

    .line 807
    .local v8, "recoverCheckResult":Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    move-object v8, v9

    iget v9, v9, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    if-eqz v9, :cond_3

    .line 809
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "recover StringBlocks failed:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v9, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v9, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 812
    :cond_3
    iput-object v8, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mCheckResult:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    .line 813
    iget v9, v6, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    if-ne v9, v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v3, v9, :cond_4

    .line 815
    return-object v1

    .line 817
    :cond_4
    const-string v3, "checkStringBlocks"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", recover checkMsg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v5, v9}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 818
    .end local v4    # "recoverMessage":Ljava/lang/String;
    .end local v7    # "backup":[Ljava/lang/Object;
    .end local v8    # "recoverCheckResult":Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    goto :goto_3

    .line 819
    :cond_5
    const-string v3, "check mStringBlocks[] ok!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 822
    .end local v2    # "expectStringBlockLength":I
    .end local v6    # "checkResult":Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    :catchall_1
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "check mStringBlocks[] failed!"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 824
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_2
    nop

    .line 825
    :goto_3
    return-object v1
.end method

.method private static checkStringBlocks([Ljava/lang/Object;I)Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    .locals 5
    .param p0, "stringBlocks"    # [Ljava/lang/Object;
    .param p1, "expectStringBlockLength"    # I

    .line 834
    if-nez p0, :cond_0

    .line 835
    new-instance v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    const/4 v1, 0x2

    const-string v2, "found mStringBlocks[] is null!"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 837
    :cond_0
    array-length v0, p0

    if-eq p1, v0, :cond_1

    .line 838
    new-instance v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expect mStringBlocks[].length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 841
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 842
    aget-object v1, p0, v0

    if-nez v1, :cond_2

    .line 843
    new-instance v1, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found the item index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of mStringBlocks[] is null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 841
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private endViolenceFinding()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 604
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getBundleByBundlePackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "bundlePackageId"    # I

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getBundlePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "bundlePackageId"    # I

    .line 615
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 617
    const/high16 v0, 0x1040000

    invoke-super {p0, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 620
    :cond_0
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle27PackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 622
    return-object v0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->c(Lcom/alipay/mobile/quinox/bundle/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle27PackageName:Ljava/lang/String;

    .line 626
    return-object v0

    .line 629
    :cond_2
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sBundlePackages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 630
    .local v2, "packageName":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 631
    return-object v2

    .line 633
    :cond_3
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    .line 634
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-object v2

    .line 638
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    move-object v2, v0

    if-nez v0, :cond_5

    if-ge p1, v1, :cond_5

    .line 642
    shl-int/lit8 v0, p1, 0x18

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    :try_start_0
    invoke-super {p0, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 643
    :catchall_0
    move-exception v0

    .line 644
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BundleResources"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 647
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    if-eqz v2, :cond_6

    .line 648
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sBundlePackages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_6
    return-object v2
.end method

.method private static getPkgCookieString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "pkgCookies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 883
    if-nez p0, :cond_0

    .line 884
    const-string v0, "null"

    return-object v0

    .line 885
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    const-string v0, "[]"

    return-object v0

    .line 888
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 889
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 891
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 892
    .local v2, "p":Landroid/util/Pair;
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 893
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 894
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 895
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 896
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .end local v2    # "p":Landroid/util/Pair;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "i":I
    :cond_3
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 902
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    .line 903
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BundleResources"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 904
    const-string v1, ""

    return-object v1
.end method

.method private static getStringBlocks(Landroid/content/res/AssetManager;)[Ljava/lang/Object;
    .locals 2
    .param p0, "assets"    # Landroid/content/res/AssetManager;

    .line 874
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mStringBlocks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 876
    sput-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 878
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sStringBlocksFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private inViolenceFinding()Z
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private markViolenceFinding()V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    monitor-enter v0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mViolenceFindingThreadIds:Ljava/util/Set;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 598
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportResNotFound(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .line 593
    return-void
.end method

.method private static shouldUseOriginRes(I)Z
    .locals 2
    .param p0, "id"    # I

    .line 944
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sOriginResEntries:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearPreloadedDrawables()V
    .locals 2

    .line 938
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sPreloadedDrawables:Landroid/util/SparseArray;

    monitor-enter v0

    .line 939
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 940
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBundle()Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    return-object v0
.end method

.method public getBundleName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCheckResult()Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mCheckResult:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    return-object v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "id"    # I

    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "id"    # I

    .line 290
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDimension(I)F
    .locals 2
    .param p1, "id"    # I

    .line 254
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 2
    .param p1, "id"    # I

    .line 266
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 269
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 2
    .param p1, "id"    # I

    .line 278
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "id"    # I

    .line 205
    :try_start_0
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ResIdUtils;->getPackageId(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 206
    sget-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources;->sPreloadedDrawables:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move-object v3, v2

    .line 208
    .local v3, "cache":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 210
    .local v2, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "BundleResources"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hit cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 216
    .end local v2    # "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v3    # "cache":Landroid/graphics/drawable/Drawable;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "id":I
    :try_start_2
    throw v1

    .line 218
    .restart local p1    # "id":I
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 221
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 27
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 394
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mHasSamePackageId:Z

    if-nez v0, :cond_0

    .line 395
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 398
    :cond_0
    if-nez v2, :cond_1

    .line 399
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 404
    :cond_1
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 405
    .local v3, "packageNameIndex":I
    const/4 v4, 0x0

    if-nez p3, :cond_3

    .line 406
    if-gtz v3, :cond_2

    .line 408
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 410
    :cond_2
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v5, p3

    .line 415
    .restart local v5    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "BundleResources"

    if-eqz v6, :cond_4

    .line 416
    const-string v0, "packageName is empty when getIdentifier()"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 415
    :cond_4
    const/4 v6, 0x0

    move-object v8, v6

    .line 421
    .local v8, "typeName":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 422
    .local v10, "typeNameIndex":I
    if-nez p2, :cond_6

    .line 423
    add-int/lit8 v11, v3, 0x1

    if-ge v10, v11, :cond_5

    .line 425
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 427
    :cond_5
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 429
    :cond_6
    move-object/from16 v8, p2

    .line 431
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 432
    const-string v0, "typeName is empty when getIdentifier()"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 431
    :cond_7
    move-object v11, v6

    .line 437
    .local v11, "entryName":Ljava/lang/String;
    if-lez v10, :cond_8

    .line 438
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 440
    :cond_8
    move-object/from16 v11, p1

    .line 442
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 443
    const-string v0, "entryName is empty when getIdentifier()"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 447
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 449
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 453
    :cond_a
    invoke-super/range {p0 .. p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v12, v4

    .line 454
    .local v12, "id":I
    move v12, v0

    if-nez v0, :cond_b

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".R$"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 458
    .local v13, "R":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v6

    .line 459
    .local v14, "rCls":Ljava/lang/Class;
    :try_start_1
    invoke-static {v0, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v0

    .line 462
    .end local v14    # "rCls":Ljava/lang/Class;
    goto :goto_4

    .line 460
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v14, v6

    :goto_3
    move-object v0, v14

    .line 461
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getIdentifier though "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " failed!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 454
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v13    # "R":Ljava/lang/String;
    :cond_b
    move-object v13, v6

    .line 465
    :goto_4
    if-nez v12, :cond_1a

    .line 467
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->markViolenceFinding()V

    .line 468
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->q()Landroid/util/SparseArray;

    move-result-object v0

    .line 469
    .local v13, "resMergeInfo":Landroid/util/SparseArray;
    move-object v13, v0

    if-eqz v0, :cond_19

    .line 470
    const/4 v0, 0x0

    move v4, v0

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v0, 0x0

    const/4 v6, 0x0

    .local v4, "i":I
    :goto_5
    move/from16 v19, v0

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_18

    .line 471
    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    move/from16 v20, v0

    .line 472
    .local v20, "realPkgId":I
    move/from16 v2, v20

    .end local v20    # "realPkgId":I
    .local v2, "realPkgId":I
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 473
    .local v14, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move-object v14, v0

    if-eqz v0, :cond_17

    .line 474
    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/bundle/d$a;->b()Landroid/util/SparseArray;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 475
    .local v15, "pkgNameMap":Landroid/util/SparseArray;
    move-object v15, v0

    if-eqz v0, :cond_16

    .line 476
    const/4 v0, 0x0

    move/from16 v26, v6

    move v6, v0

    move/from16 v0, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move/from16 v16, v26

    .local v6, "index":I
    :goto_6
    move/from16 v20, v3

    .end local v3    # "packageNameIndex":I
    .local v20, "packageNameIndex":I
    :try_start_3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v6, v3, :cond_15

    .line 477
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 478
    .local v3, "bundlePackageId":I
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 479
    .local v17, "bundlePackageName":Ljava/lang/String;
    move-object/from16 v22, v21

    .end local v17    # "bundlePackageName":Ljava/lang/String;
    .local v22, "bundlePackageName":Ljava/lang/String;
    if-eqz v21, :cond_14

    .line 480
    move/from16 v21, v10

    move-object/from16 v10, v22

    .end local v22    # "bundlePackageName":Ljava/lang/String;
    .local v10, "bundlePackageName":Ljava/lang/String;
    .local v21, "typeNameIndex":I
    :try_start_4
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 482
    move-object/from16 v17, v10

    .end local v10    # "bundlePackageName":Ljava/lang/String;
    .restart local v17    # "bundlePackageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculatePkgIdAndTypeOffset(I)Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;

    move-result-object v10

    .line 483
    iget v10, v10, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;->typeIdOffset:I

    .line 486
    .local v0, "typeIdOffset":I
    .local v16, "entryId":I
    move/from16 v22, v10

    .end local v0    # "typeIdOffset":I
    .local v22, "typeIdOffset":I
    add-int/lit8 v10, v10, 0x1

    .local v10, "typeId":I
    :goto_7
    add-int/lit8 v0, v22, 0x20

    if-gt v10, v0, :cond_12

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "typeNameGot":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v23, v3

    move-object/from16 v24, v13

    move/from16 v13, v16

    move-object v3, v0

    .line 490
    .end local v0    # "typeNameGot":Ljava/lang/String;
    .end local v16    # "entryId":I
    .local v3, "typeNameGot":Ljava/lang/String;
    .local v13, "entryId":I
    .local v23, "bundlePackageId":I
    .local v24, "resMergeInfo":Landroid/util/SparseArray;
    :goto_8
    if-nez v3, :cond_c

    const/16 v0, 0xa

    if-ge v13, v0, :cond_c

    .line 491
    invoke-static {v2, v10, v13}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getResId(III)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 v16, v0

    .line 493
    .local v16, "resId":I
    move-object/from16 v25, v14

    move/from16 v14, v16

    .end local v16    # "resId":I
    .local v14, "resId":I
    .local v25, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :try_start_5
    invoke-virtual {v1, v14}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 496
    .end local v3    # "typeNameGot":Ljava/lang/String;
    .restart local v0    # "typeNameGot":Ljava/lang/String;
    move-object v3, v0

    goto :goto_9

    .line 494
    .end local v0    # "typeNameGot":Ljava/lang/String;
    .restart local v3    # "typeNameGot":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v0, v18

    .line 495
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 497
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v25

    goto :goto_8

    .line 490
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .local v14, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :cond_c
    move-object/from16 v25, v14

    .line 499
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    if-eqz v3, :cond_11

    .line 502
    :try_start_6
    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_10

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "entryNameGot":Ljava/lang/String;
    const/4 v14, 0x0

    .line 506
    .local v14, "continueMissCount":I
    const/4 v13, 0x0

    move/from16 v16, v14

    move v14, v13

    move-object v13, v0

    .line 509
    .end local v0    # "entryNameGot":Ljava/lang/String;
    .local v13, "entryNameGot":Ljava/lang/String;
    .local v14, "entryId":I
    .local v16, "continueMissCount":I
    :goto_a
    :try_start_7
    invoke-static {v2, v10, v14}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getResId(III)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 510
    .end local v13    # "entryNameGot":Ljava/lang/String;
    .restart local v0    # "entryNameGot":Ljava/lang/String;
    const/4 v13, 0x0

    .line 514
    .end local v16    # "continueMissCount":I
    .local v13, "continueMissCount":I
    move/from16 v26, v13

    move-object v13, v0

    move/from16 v0, v26

    goto :goto_b

    .line 511
    .end local v0    # "entryNameGot":Ljava/lang/String;
    .local v13, "entryNameGot":Ljava/lang/String;
    .restart local v16    # "continueMissCount":I
    :catchall_3
    move-exception v0

    move-object/from16 v0, v19

    .line 513
    .local v0, "e":Ljava/lang/Throwable;
    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    .line 515
    .end local v16    # "continueMissCount":I
    .local v0, "continueMissCount":I
    :goto_b
    move-object/from16 v16, v3

    .end local v3    # "typeNameGot":Ljava/lang/String;
    .local v16, "typeNameGot":Ljava/lang/String;
    const/16 v3, 0x64

    if-gt v0, v3, :cond_f

    .line 518
    :try_start_8
    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 519
    invoke-static {v2, v10, v14}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getResId(III)I

    move-result v3

    .line 520
    .local v3, "resId":I
    iget-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    if-nez v7, :cond_d

    .line 521
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    .line 523
    :cond_d
    iget-object v7, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    move/from16 v18, v0

    .end local v0    # "continueMissCount":I
    .local v18, "continueMissCount":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 524
    nop

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->endViolenceFinding()V

    .line 524
    return v3

    .line 526
    .end local v3    # "resId":I
    .end local v18    # "continueMissCount":I
    .restart local v0    # "continueMissCount":I
    :cond_e
    move/from16 v18, v0

    .end local v0    # "continueMissCount":I
    .restart local v18    # "continueMissCount":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move/from16 v16, v18

    goto :goto_a

    .line 515
    .end local v18    # "continueMissCount":I
    .restart local v0    # "continueMissCount":I
    :cond_f
    move/from16 v18, v0

    .end local v0    # "continueMissCount":I
    .restart local v18    # "continueMissCount":I
    move-object/from16 v18, v13

    move/from16 v16, v14

    goto :goto_d

    .line 502
    .end local v14    # "entryId":I
    .end local v16    # "typeNameGot":Ljava/lang/String;
    .end local v18    # "continueMissCount":I
    .local v3, "typeNameGot":Ljava/lang/String;
    .local v13, "entryId":I
    :cond_10
    move-object/from16 v16, v3

    .end local v3    # "typeNameGot":Ljava/lang/String;
    .restart local v16    # "typeNameGot":Ljava/lang/String;
    goto :goto_c

    .line 499
    .end local v16    # "typeNameGot":Ljava/lang/String;
    .restart local v3    # "typeNameGot":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v3

    .line 486
    .end local v3    # "typeNameGot":Ljava/lang/String;
    :goto_c
    move/from16 v16, v13

    .end local v13    # "entryId":I
    .local v16, "entryId":I
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    goto/16 :goto_7

    .end local v23    # "bundlePackageId":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .local v3, "bundlePackageId":I
    .local v13, "resMergeInfo":Landroid/util/SparseArray;
    .local v14, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :cond_12
    move/from16 v23, v3

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .line 531
    .end local v3    # "bundlePackageId":I
    .end local v10    # "typeId":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .end local v16    # "entryId":I
    .end local v22    # "typeIdOffset":I
    .restart local v23    # "bundlePackageId":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move/from16 v0, v22

    goto :goto_e

    .line 480
    .end local v17    # "bundlePackageName":Ljava/lang/String;
    .end local v23    # "bundlePackageId":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v3    # "bundlePackageId":I
    .local v10, "bundlePackageName":Ljava/lang/String;
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :cond_13
    move/from16 v23, v3

    move-object/from16 v17, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .end local v3    # "bundlePackageId":I
    .end local v10    # "bundlePackageName":Ljava/lang/String;
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v17    # "bundlePackageName":Ljava/lang/String;
    .restart local v23    # "bundlePackageId":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    goto :goto_e

    .line 541
    .end local v2    # "realPkgId":I
    .end local v4    # "i":I
    .end local v6    # "index":I
    .end local v15    # "pkgNameMap":Landroid/util/SparseArray;
    .end local v17    # "bundlePackageName":Ljava/lang/String;
    .end local v23    # "bundlePackageId":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :catchall_4
    move-exception v0

    goto/16 :goto_11

    .line 533
    .end local v21    # "typeNameIndex":I
    .restart local v2    # "realPkgId":I
    .restart local v3    # "bundlePackageId":I
    .restart local v4    # "i":I
    .restart local v6    # "index":I
    .local v10, "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v15    # "pkgNameMap":Landroid/util/SparseArray;
    .local v22, "bundlePackageName":Ljava/lang/String;
    :cond_14
    move/from16 v23, v3

    move/from16 v21, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v17, v22

    .end local v3    # "bundlePackageId":I
    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .end local v22    # "bundlePackageName":Ljava/lang/String;
    .restart local v17    # "bundlePackageName":Ljava/lang/String;
    .restart local v21    # "typeNameIndex":I
    .restart local v23    # "bundlePackageId":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "getBundleByPackageId() return null when getIdentifier(), packageName:"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 476
    .end local v17    # "bundlePackageName":Ljava/lang/String;
    .end local v23    # "bundlePackageId":I
    :goto_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v20

    move/from16 v10, v21

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    goto/16 :goto_6

    .end local v21    # "typeNameIndex":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v10    # "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :cond_15
    move/from16 v21, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v21    # "typeNameIndex":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move/from16 v6, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    goto :goto_f

    .line 541
    .end local v2    # "realPkgId":I
    .end local v4    # "i":I
    .end local v6    # "index":I
    .end local v15    # "pkgNameMap":Landroid/util/SparseArray;
    .end local v21    # "typeNameIndex":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v10    # "typeNameIndex":I
    :catchall_5
    move-exception v0

    move/from16 v21, v10

    .end local v10    # "typeNameIndex":I
    .restart local v21    # "typeNameIndex":I
    goto :goto_11

    .line 475
    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .restart local v2    # "realPkgId":I
    .local v3, "packageNameIndex":I
    .restart local v4    # "i":I
    .restart local v10    # "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v15    # "pkgNameMap":Landroid/util/SparseArray;
    :cond_16
    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move/from16 v0, v19

    goto :goto_f

    .line 473
    .end local v15    # "pkgNameMap":Landroid/util/SparseArray;
    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v3    # "packageNameIndex":I
    .restart local v10    # "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :cond_17
    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .end local v14    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    move/from16 v0, v19

    .line 470
    .end local v2    # "realPkgId":I
    .end local v25    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    :goto_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v20

    move/from16 v10, v21

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    goto/16 :goto_5

    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v3    # "packageNameIndex":I
    .restart local v10    # "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    :cond_18
    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v24, v13

    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    .restart local v24    # "resMergeInfo":Landroid/util/SparseArray;
    goto :goto_10

    .line 469
    .end local v4    # "i":I
    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .end local v24    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v3    # "packageNameIndex":I
    .restart local v10    # "typeNameIndex":I
    .restart local v13    # "resMergeInfo":Landroid/util/SparseArray;
    :cond_19
    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v24, v13

    .line 541
    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .end local v13    # "resMergeInfo":Landroid/util/SparseArray;
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->endViolenceFinding()V

    .line 542
    goto :goto_12

    .line 541
    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .restart local v3    # "packageNameIndex":I
    .restart local v10    # "typeNameIndex":I
    :catchall_6
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v10

    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->endViolenceFinding()V

    throw v0

    .line 465
    .end local v20    # "packageNameIndex":I
    .end local v21    # "typeNameIndex":I
    .restart local v3    # "packageNameIndex":I
    .restart local v10    # "typeNameIndex":I
    :cond_1a
    move/from16 v20, v3

    move/from16 v21, v10

    .line 545
    .end local v3    # "packageNameIndex":I
    .end local v10    # "typeNameIndex":I
    .restart local v20    # "packageNameIndex":I
    .restart local v21    # "typeNameIndex":I
    :goto_12
    if-eqz v12, :cond_1c

    .line 546
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    if-nez v0, :cond_1b

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    .line 549
    :cond_1b
    iget-object v0, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->mResNameCache:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 552
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->reportResNotFound(Ljava/lang/String;)V

    .line 554
    :goto_13
    return v12
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "id"    # I

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 372
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # I

    .line 302
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "resName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mHasSamePackageId:Z

    if-nez v1, :cond_0

    .line 305
    return-object v0

    .line 308
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getTypeIdOffset(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 309
    .local v3, "typeIdOffset":I
    move v3, v1

    if-nez v1, :cond_1

    .line 310
    return-object v0

    .line 313
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getPackageId(I)I

    move-result v1

    move v4, v2

    .line 314
    .local v4, "pkgId":I
    move v4, v1

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateBundlePackageId(II)I

    move-result v1

    .line 315
    .local v2, "bundlePackageId":I
    move v2, v1

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_2

    .line 316
    return-object v0

    .line 319
    :cond_2
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundlePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "realPackageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundlePackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "bundlePackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 323
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 325
    :cond_3
    return-object v0

    .line 327
    .end local v0    # "resName":Ljava/lang/String;
    .end local v1    # "realPackageName":Ljava/lang/String;
    .end local v2    # "bundlePackageId":I
    .end local v3    # "typeIdOffset":I
    .end local v4    # "pkgId":I
    .end local v5    # "bundlePackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # I

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mHasSamePackageId:Z

    if-nez v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getTypeIdOffset(I)I

    move-result v0

    const/4 v1, 0x0

    .line 340
    .local v1, "typeIdOffset":I
    move v1, v0

    if-nez v0, :cond_1

    .line 341
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->getPackageId(I)I

    move-result v0

    .line 345
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->calculateBundlePackageId(II)I

    move-result v0

    .line 347
    .local v0, "bundlePackageId":I
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundlePackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 348
    .local v3, "packageName":Ljava/lang/String;
    move-object v3, v2

    if-eqz v2, :cond_2

    .line 349
    return-object v3

    .line 351
    :cond_2
    const-string v2, "BundleResources"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getBundlePackageName() return null when getResourcePackageName(), id: 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 355
    .end local v0    # "bundlePackageId":I
    .end local v1    # "typeIdOffset":I
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 363
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 242
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 230
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 382
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->shouldUseOriginRes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 384
    return-void

    .line 386
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method handleNotFoundException(ILjava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 11

    .line 659
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->inViolenceFinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    return-object p2

    .line 664
    :cond_0
    shr-int/lit8 v0, p1, 0x18

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resourceId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], packageId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], mPackageIDs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    .line 668
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 669
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDescription={"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    const-string v6, "BundleResources"

    if-lt v4, v5, :cond_5

    .line 674
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 675
    nop

    .line 676
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getAssignedPackageIdentifiers"

    .line 675
    const/4 v8, 0x0

    invoke-static {v5, v4, v7, v8, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 677
    instance-of v5, v4, Landroid/util/SparseArray;

    if-eqz v5, :cond_4

    .line 678
    check-cast v4, Landroid/util/SparseArray;

    .line 679
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 680
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    .line 682
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 684
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", assignedPackageIDs="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v4, v0, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 688
    iget-object v4, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 689
    if-eqz v4, :cond_2

    .line 690
    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 691
    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 694
    :cond_2
    if-eqz v4, :cond_3

    .line 695
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    .line 696
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", bundleLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    goto :goto_1

    .line 700
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bundleLocation=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :cond_4
    goto :goto_1

    .line 704
    :catchall_0
    move-exception v3

    .line 705
    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/quinox/compat/b;->a()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 711
    if-eqz v3, :cond_6

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", originAssets="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", assetsManager="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", useOriginAssets="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mUseOriginAssets:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 723
    :try_start_1
    invoke-static {v3}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getStringBlocks(Landroid/content/res/AssetManager;)[Ljava/lang/Object;

    move-result-object v3

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", stringBlocks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_7

    const-string v3, "null"

    goto :goto_2

    :cond_7
    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 727
    goto :goto_3

    .line 725
    :catchall_1
    move-exception v3

    .line 731
    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 733
    const/16 v3, 0x1b

    if-ne v3, p1, :cond_8

    .line 734
    iget-object p1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    goto :goto_4

    .line 736
    :cond_8
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundleByBundlePackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    .line 738
    :goto_4
    if-nez p1, :cond_9

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> null==bundle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 740
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_a

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> Bundle\'s file is deleted?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 743
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> Nothing found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 745
    goto :goto_5

    .line 746
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> are you using correct Context?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 749
    :goto_5
    instance-of v0, p2, Landroid/content/res/Resources$NotFoundException;

    if-eqz v0, :cond_c

    .line 750
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p2, v0

    goto :goto_6

    .line 752
    :cond_c
    instance-of v0, p2, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_d

    .line 753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p2, v0

    goto :goto_6

    .line 756
    :cond_d
    invoke-static {v6, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    nop

    .line 760
    :goto_6
    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->reportResNotFound(Ljava/lang/String;)V

    .line 762
    return-object p2
.end method

.method public isUseOriginAssets()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mUseOriginAssets:Z

    return v0
.end method

.method public preloadDrawables([Ljava/lang/String;)V
    .locals 8
    .param p1, "drawableResNames"    # [Ljava/lang/String;

    .line 916
    if-eqz p1, :cond_2

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v0, "drawableResIds":Ljava/util/List;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 920
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4, v4}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    goto :goto_1

    .line 921
    :catchall_0
    move-exception v4

    .line 922
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "BundleResources"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getId failed, name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 918
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/resources/BundleResources;->sPreloadedDrawables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 926
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 928
    .local v3, "resId":I
    :try_start_2
    sget-object v4, Lcom/alipay/mobile/quinox/resources/BundleResources;->sPreloadedDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    goto :goto_2

    .line 929
    :catchall_1
    move-exception v4

    .line 930
    .restart local v4    # "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "BundleResources"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "preload drawable failed, resId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 932
    .end local v3    # "resId":I
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 933
    :cond_1
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 935
    .end local v0    # "drawableResIds":Ljava/util/List;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BundleResources{mBundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources;->mPackageIDs:Ljava/util/List;

    .line 951
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    return-object v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 911
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 912
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->clearPreloadedDrawables()V

    .line 913
    return-void
.end method

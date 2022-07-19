.class public Lcom/alipay/mobile/quinox/compat/b;
.super Ljava/lang/Object;
.source "WebViewCompat.java"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field private static f:Z

.field private static g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/b;->f:Z

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 86
    .local v2, "sOPPOs":Ljava/util/HashSet;
    move-object v2, v0

    const-string v3, "OPPO A53m"

    const-string v4, "OPPO A53"

    const-string v5, "R7Plusm"

    const-string v6, "OPPO R7sm"

    const-string v7, "OPPO A33"

    const-string v8, "OPPO A33m"

    const-string v9, "OPPO A33t"

    const-string v10, "OPPO R7sPlus"

    const-string v11, "A51"

    const-string v12, "A51kc"

    const-string v13, "OPPO A30"

    const-string v14, "OPPO A53t"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 88
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x16

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/b;->a:Z

    .line 90
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "C106-9"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "6.0.1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/b;->c:Z

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v1

    .line 93
    .local v6, "sOPPOs_2":Ljava/util/HashSet;
    move-object v6, v0

    const-string v7, "OPPO R9 Plusm A"

    const-string v8, "OPPO R9m"

    const-string v9, "OPPO R7s"

    const-string v10, "OPPO R9tm"

    const-string v11, "OPPO R9t"

    const-string v12, "OPPO A59m"

    const-string v13, "OPPO A37m"

    const-string v14, "OPPO R9km"

    const-string v15, "OPPO R9 Plustm A"

    const-string v16, "OPPO A37t"

    const-string v17, "OPPO R7"

    const-string v18, "OPPO R9 Plust A"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 95
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/b;->b:Z

    .line 97
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "G8142"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x1a

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "G8441"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "G8342"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/b;->d:Z

    .line 99
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v7, "htc"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "HTC U-3w"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "HTC U11"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    sput-boolean v4, Lcom/alipay/mobile/quinox/compat/b;->e:Z

    .line 102
    .end local v2    # "sOPPOs":Ljava/util/HashSet;
    .end local v6    # "sOPPOs_2":Ljava/util/HashSet;
    sput-object v1, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    .line 105
    sput-object v1, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    .line 108
    sput-object v1, Lcom/alipay/mobile/quinox/compat/b;->i:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->i:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public static a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;
    .locals 10
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 300
    .local v0, "assets":Ljava/util/LinkedHashSet;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "WebViewCompat"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1c

    if-ge v1, v5, :cond_2

    move-object v1, v4

    .line 303
    .local v1, "source":Ljava/lang/String;
    const/4 v5, 0x1

    .line 305
    .local v5, "cookie":I
    :goto_0
    :try_start_0
    const-string v6, "getCookieName"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    new-array v7, v7, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v9, v5, 0x1

    .line 306
    .end local v5    # "cookie":I
    .local v9, "cookie":I
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    .line 305
    invoke-static {p0, v6, v8, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v9

    goto :goto_0

    .line 314
    :cond_0
    goto :goto_3

    .line 309
    :catchall_0
    move-exception v3

    move v5, v9

    goto :goto_1

    .end local v9    # "cookie":I
    .restart local v5    # "cookie":I
    :catchall_1
    move-exception v3

    .line 311
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    move-object v4, v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/IndexOutOfBoundsException;

    if-nez v3, :cond_1

    .line 312
    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v1    # "source":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "cookie":I
    :cond_1
    goto :goto_3

    .line 317
    :cond_2
    :try_start_2
    const-string v1, "getApkAssets"

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v5, v4

    .line 318
    .local v5, "apkAssets":[Ljava/lang/Object;
    move-object v5, v1

    if-eqz v1, :cond_4

    array-length v1, v5

    if-lez v1, :cond_4

    .line 319
    array-length v1, v5

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v6, v5, v3

    .line 320
    .local v4, "asset":Ljava/lang/Object;
    move-object v4, v6

    if-eqz v6, :cond_3

    .line 321
    const-string v6, "getAssetPath"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 319
    .end local v4    # "asset":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    .end local v5    # "apkAssets":[Ljava/lang/Object;
    :cond_4
    goto :goto_3

    .line 325
    :catchall_2
    move-exception v1

    .line 326
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_3
    return-object v0
.end method

.method private static a(Landroid/util/SparseArray;)Z
    .locals 4
    .param p0, "rawAry"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    .line 287
    .local v2, "M":I
    move v2, v0

    if-lez v0, :cond_1

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 289
    .local v0, "hs":Ljava/util/HashSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 290
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    :cond_0
    const-string v1, "com.le.android.webview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 295
    .end local v0    # "hs":Ljava/util/HashSet;
    .end local v2    # "M":I
    :cond_1
    return v1
.end method

.method public static a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z
    .locals 17

    .line 116
    move-object/from16 v1, p0

    .line 121
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "quinox_fix_resource_common"

    .line 122
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v0, "WebViewCompat"

    const-string v1, "config say we can\'t do fixResourcesCommon()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v3

    .line 128
    :cond_0
    const-string v0, "WebViewCompat"

    const-string v2, "start do fixResourcesCommon()"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_13

    .line 131
    const-class v2, Lcom/alipay/mobile/quinox/compat/b;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_12

    .line 133
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 135
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 137
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v6

    .line 138
    sput-object v6, Lcom/alipay/mobile/quinox/compat/b;->i:Ljava/util/LinkedHashSet;

    .line 139
    invoke-static {v0}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/content/res/AssetManager;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 146
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 152
    invoke-static {v8}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->readPackageFromArsc(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    .line 153
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 154
    const/16 v0, 0x7f

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 157
    nop

    .line 159
    nop

    .line 160
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 162
    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_8

    .line 163
    :cond_1
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 165
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_8

    .line 167
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_8

    .line 168
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 169
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 172
    shl-int/lit8 v0, v15, 0x18

    const/high16 v16, 0x10000

    or-int v0, v0, v16

    :try_start_2
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    goto :goto_3

    .line 173
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 174
    nop

    .line 175
    :try_start_3
    instance-of v0, v11, Landroid/content/res/Resources$NotFoundException;

    if-eqz v0, :cond_3

    .line 176
    const-string v0, "WebViewCompat"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v3, "pkgId:"

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name not found, it\'s a shared library"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :cond_3
    const-string v0, "WebViewCompat"

    const-string v3, "getResourcePackageName failed"

    invoke-static {v0, v3, v11}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v14, :cond_5

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v14, 0x1

    .line 182
    :goto_5
    if-nez v13, :cond_7

    if-nez v14, :cond_6

    const/16 v0, 0x1b

    if-lt v15, v0, :cond_6

    const/16 v0, 0x7e

    if-gt v15, v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v13, 0x1

    .line 167
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 186
    :cond_8
    :goto_8
    if-nez v13, :cond_9

    .line 187
    const-string v0, "WebViewCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "join other resources pkg, path:"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isSharedLibrary:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgs:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 191
    :cond_9
    const-string v0, "WebViewCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "found conflict res pkg, path:"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isSharedLibrary:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgs:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    const-string v3, "conflict_res_reported"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v10, 0x0

    :try_start_4
    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 194
    if-eqz v3, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v11

    sget-object v12, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v11, v12, :cond_e

    .line 195
    :cond_a
    if-nez v3, :cond_b

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "conflict_res_reported"

    const/4 v11, 0x1

    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    :cond_b
    const-string v0, "conflictResPkg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "source="

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pkgs="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v0, v8, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 204
    :catchall_1
    move-exception v0

    goto :goto_a

    .line 155
    :cond_c
    const/4 v10, 0x0

    goto :goto_9

    .line 153
    :cond_d
    const/4 v10, 0x0

    .line 203
    :cond_e
    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 147
    :cond_f
    const/4 v10, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 146
    :cond_10
    const/4 v10, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 206
    :cond_11
    const/4 v10, 0x0

    goto :goto_b

    .line 204
    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    .line 205
    :goto_a
    :try_start_5
    const-string v1, "WebViewCompat"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_b
    sput-object v4, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    goto :goto_c

    .line 132
    :cond_12
    const/4 v10, 0x0

    .line 210
    :goto_c
    monitor-exit v2

    goto :goto_d

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 130
    :cond_13
    const/4 v10, 0x0

    .line 213
    :goto_d
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 214
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->h:Ljava/util/LinkedHashSet;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->doAddResPackages(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/LinkedHashSet;)Z

    move-result v3

    goto :goto_e

    .line 213
    :cond_14
    const/4 v3, 0x0

    .line 216
    :goto_e
    return v3
.end method

.method public static b()V
    .locals 3

    .line 334
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x15

    const-string v2, "android.webkit.WebViewFactory"

    if-eq v0, v1, :cond_4

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 337
    const-string v0, "getChromiumProviderClass"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 338
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    .line 339
    :cond_2
    const-string v0, "getProviderClass"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    :cond_3
    return-void

    .line 335
    :cond_4
    :goto_0
    const-string v0, "getFactoryClass"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "WebViewCompat"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static b(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z
    .locals 15
    .param p0, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p1, "res"    # Ljava/lang/String;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .line 223
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 224
    .local v2, "bRet":Z
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 225
    const-class v3, Lcom/alipay/mobile/quinox/compat/b;

    monitor-enter v3

    .line 226
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 227
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    .line 229
    .local v4, "set":Ljava/util/HashSet;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 230
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v0

    .line 232
    .local v6, "rawAssetManager":Landroid/content/res/AssetManager;
    :try_start_1
    const-class v0, Landroid/content/res/AssetManager;

    const-string v7, "getAssignedPackageIdentifiers"

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    move-object v7, v8

    .line 234
    .local v7, "rawAry":Landroid/util/SparseArray;
    move-object v7, v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 235
    const-class v0, Landroid/content/res/AssetManager;

    const-string v9, "getAssignedPackageIdentifiers"

    invoke-static {v0, v1, v9, v8, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 237
    .local v0, "newAry":Landroid/util/SparseArray;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    .local v9, "N":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 238
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 237
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 241
    .end local v8    # "i":I
    .end local v9    # "N":I
    :cond_0
    const-string v9, "WebViewCompat"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getAssignedPackageIdentifiers=> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 244
    .local v8, "M":I
    move v8, v9

    if-lez v9, :cond_3

    sget-boolean v9, Lcom/alipay/mobile/quinox/compat/b;->f:Z

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/alipay/mobile/quinox/compat/b;->a:Z

    if-nez v9, :cond_1

    invoke-static {v7}, Lcom/alipay/mobile/quinox/compat/b;->a(Landroid/util/SparseArray;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 245
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 246
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 247
    .local v10, "packageName":Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->getChromeSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "chromeDir":Ljava/lang/String;
    const-string v12, "WebViewCompat"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Get chrome dir: packageName="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", chromeDir="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 252
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "chromeDir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "newAry":Landroid/util/SparseArray;
    .end local v7    # "rawAry":Landroid/util/SparseArray;
    .end local v8    # "M":I
    .end local v9    # "i":I
    :cond_3
    goto :goto_2

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "WebViewCompat"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    .line 263
    .end local v4    # "set":Ljava/util/HashSet;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "rawAssetManager":Landroid/content/res/AssetManager;
    :cond_4
    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 266
    :cond_5
    :goto_3
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 267
    sget-object v0, Lcom/alipay/mobile/quinox/compat/b;->g:Ljava/util/Set;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static {v3, v1, v4, v0}, Lcom/alipay/mobile/quinox/resources/BundleResourcesHelper;->doAddChromeSourceDirs(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z

    move-result v2

    goto :goto_4

    .line 266
    :cond_6
    move-object/from16 v3, p1

    move-object/from16 v4, p3

    .line 269
    :goto_4
    return v2
.end method

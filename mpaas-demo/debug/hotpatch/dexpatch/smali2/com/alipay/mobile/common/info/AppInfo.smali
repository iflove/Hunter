.class public Lcom/alipay/mobile/common/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final DEF_NAME:Ljava/lang/String; = "ALIPAY_WALLET"

.field public static final NAME:Ljava/lang/String; = "product_name"

.field public static final VERSION:Ljava/lang/String; = "product_version"

.field private static a:Lcom/alipay/mobile/common/info/AppInfo;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/ActivityManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Landroid/content/SharedPreferences;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "mPaaS_Product"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/common/info/AppInfo;->init()V

    .line 83
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "versionName"    # Ljava/lang/String;

    .line 126
    const-string v0, "ctch1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 129
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "mProductVersion"    # Ljava/lang/String;

    .line 236
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "versions":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "productVersions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 239
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 240
    .local v3, "v1":I
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 241
    .local v5, "v2":I
    if-le v3, v5, :cond_0

    .line 242
    const/4 v4, 0x1

    return v4

    .line 243
    :cond_0
    if-eq v3, v5, :cond_1

    .line 246
    return v4

    .line 238
    .end local v3    # "v1":I
    .end local v5    # "v2":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/info/AppInfo;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/alipay/mobile/common/info/AppInfo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/info/AppInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    .line 108
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 104
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/info/AppInfo;
    .locals 2

    .line 91
    sget-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppManager must be created by calling createInstance(Context context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 5

    .line 376
    iget v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->o:I

    if-nez v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 378
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v2, v0

    const-string v3, "AppInfo"

    if-nez v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 381
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 384
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 388
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    .line 391
    goto :goto_1

    .line 389
    :catchall_1
    move-exception v0

    .line 390
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 395
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->o:I

    .line 398
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->o:I

    return v0
.end method

.method public getExternalCacheDir()Ljava/lang/String;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 364
    .local v1, "cacheFile":Ljava/io/File;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .end local v1    # "cacheFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    .line 372
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesDirPath()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:I

    return v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "Android-container"

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->c:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 338
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getmAwid()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
    return-object v0

    .line 321
    :cond_0
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 323
    monitor-exit p0

    return-object v0

    .line 325
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Ljava/lang/String;

    .line 326
    monitor-exit p0

    .line 327
    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getmChannels()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getmProductVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 7

    const-string v0, ""

    .line 137
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .local v2, "tpackageName":Ljava/lang/String;
    :try_start_1
    const-string v3, "AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPackageName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    .line 142
    const-string/jumbo v4, "product_version"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 145
    .local v3, "mPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/info/AppInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_0

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/info/AppInfo;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iput-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    .line 152
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 153
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v4

    .line 159
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 161
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->isDebuggable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:Z

    .line 167
    iget-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 168
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Ljava/lang/String;

    .line 170
    iget-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    const-string v6, "activity"

    .line 171
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->c:Landroid/app/ActivityManager;

    .line 172
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:I

    .line 173
    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    .line 174
    const-string v5, "alipay"

    iput-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 185
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "tpackageName":Ljava/lang/String;
    .end local v3    # "mPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 180
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    .line 182
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Package manager has died"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/info/AppInfo;->init2(Ljava/lang/RuntimeException;)V

    .line 186
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    return-void

    .line 178
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v2, "AppManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public init2(Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .line 190
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 192
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "tpackageName":Ljava/lang/String;
    const-string v3, "AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPackageName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    .line 197
    const-string/jumbo v4, "product_version"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "version":Ljava/lang/String;
    const-string v4, "VERSION_NAME"

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/common/info/BuildConfigUtil;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/info/AppInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 200
    if-eqz v3, :cond_0

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/info/AppInfo;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    iput-object v3, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 204
    :cond_0
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 205
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:Z

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    const-string v5, "activity"

    .line 218
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->c:Landroid/app/ActivityManager;

    .line 219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:I

    .line 220
    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    .line 221
    const-string v4, "alipay"

    iput-object v4, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;

    .line 225
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "tpackageName":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    return-void

    .line 212
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "tpackageName":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mProductName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mProductVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mAppName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "exception":Ljava/lang/RuntimeException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "tpackageName":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .restart local p1    # "exception":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 224
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDebuggable()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:Z

    return v0
.end method

.method public recoverProductVersion()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "product_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method public setChannels(Ljava/lang/String;)V
    .locals 2
    .param p1, "channels"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channels"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "productId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "product_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 273
    :cond_0
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;

    .line 117
    return-void
.end method

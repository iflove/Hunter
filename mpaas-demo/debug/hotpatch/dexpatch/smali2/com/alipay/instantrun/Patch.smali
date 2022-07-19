.class public Lcom/alipay/instantrun/Patch;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/instantrun/Patch;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIGS:Ljava/lang/String; = "-Configs"

.field private static final CREATED_TIME:Ljava/lang/String; = "Created-Time"

.field private static final ENTRY_NAME:Ljava/lang/String; = "META-INF/PATCH.MF"

.field private static final FROM_FILE:Ljava/lang/String; = "From-File"

.field private static final KEY_INSTANT_RUN_API_LEVEL:Ljava/lang/String; = "InstantRunApiLevel"

.field private static final LOAD_ON_ADD:Ljava/lang/String; = "-LoadOnAdd"

.field private static final PATCH_ID:Ljava/lang/String; = "-PatchID"

.field private static final PATCH_NAME:Ljava/lang/String; = "Patch-Name"

.field private static final PATCH_PACKAGE_NAME:Ljava/lang/String; = "-PPN"

.field private static final PATCH_TYPE:Ljava/lang/String; = "-PatchType"

.field private static final PATCH_TYPE_INSTANT_RUN:Ljava/lang/String; = "instant-run"

.field private static final PRE_LOAD:Ljava/lang/String; = "-PreLoad"

.field private static final RUNNING_PROCESSES:Ljava/lang/String; = "-RProcesses"

.field private static final SPLIT_COMMA:Ljava/lang/String; = ","

.field private static final SPLIT_NUMBER:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "IR.PATCH"


# instance fields
.field private mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mFromFile:Ljava/lang/String;

.field private mLoadOnAddMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPatchClassLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ldalvik/system/DexClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLoadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningProcessesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mLoadOnAddMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mPreLoadMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mRunningProcessesMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchIDMap:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchPackageNameMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchClassLoaderMap:Ljava/util/Map;

    .line 96
    return-void
.end method

.method private getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 180
    return-object p1
.end method

.method private isInstantRun(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 249
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 250
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 251
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 252
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "instant-run"

    const/4 v3, 0x1

    if-gt p2, v3, :cond_3

    .line 258
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 259
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 261
    invoke-virtual {p0, p1}, Lcom/alipay/instantrun/Patch;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 262
    if-eqz p1, :cond_6

    .line 263
    const-string p2, "InstantRunApiLevel"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 265
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 266
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 267
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    .line 268
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 271
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    .line 274
    return v3

    .line 281
    :cond_6
    goto :goto_2

    .line 279
    :catchall_0
    move-exception p1

    .line 280
    const-string p2, "IR.PATCH"

    invoke-static {p2, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    :goto_2
    return v1

    .line 246
    :cond_7
    :goto_3
    return v1
.end method


# virtual methods
.method public canLoadOnAddOn5_0(Ljava/lang/String;)Z
    .locals 4

    .line 338
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 339
    return v2

    .line 343
    :cond_0
    nop

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 347
    if-eqz p1, :cond_1

    .line 348
    const-string/jumbo v1, "true"

    const-string v3, "canLoadOnAddOn5_0"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 349
    return v2

    .line 354
    :cond_1
    goto :goto_0

    .line 352
    :catchall_0
    move-exception p1

    .line 353
    const-string v1, "Patch"

    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_0
    return v0

    .line 341
    :catchall_1
    move-exception p1

    .line 342
    return v0
.end method

.method public clone()Lcom/alipay/instantrun/Patch;
    .locals 2

    .line 384
    nop

    .line 386
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/instantrun/Patch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    const-string v1, "IR.PATCH"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/alipay/instantrun/Patch;->clone()Lcom/alipay/instantrun/Patch;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/alipay/instantrun/Patch;)I
    .locals 3

    .line 396
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 397
    return v0

    .line 399
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    return v0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 403
    const/4 p1, -0x1

    return p1

    .line 405
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 406
    :catchall_0
    move-exception p1

    .line 407
    const-string v1, "IR.PATCH"

    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/alipay/instantrun/Patch;

    invoke-virtual {p0, p1}, Lcom/alipay/instantrun/Patch;->compareTo(Lcom/alipay/instantrun/Patch;)I

    move-result p1

    return p1
.end method

.method public forceInstantRun(Ljava/lang/String;)Z
    .locals 2

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 362
    if-eqz p1, :cond_0

    .line 363
    const-string/jumbo v0, "true"

    const-string v1, "forceInstantRun"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 364
    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    goto :goto_0

    .line 367
    :catchall_0
    move-exception p1

    .line 368
    const-string v0, "Patch"

    invoke-static {v0, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFromFile()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mFromFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadOnAdd(Ljava/lang/String;)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mLoadOnAddMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 325
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized getPatchClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 5

    monitor-enter p0

    .line 188
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    monitor-exit p0

    return-object v0

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mPatchClassLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    if-eqz v1, :cond_1

    .line 193
    monitor-exit p0

    return-object v1

    .line 196
    :cond_1
    :try_start_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    invoke-static {}, Lcom/alipay/instantrun/InstantRunManager;->getInstance()Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/instantrun/InstantRunManager;->getOptDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/instantrun/runtime/PatchHelper;->getOptimizedDirFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    nop

    .line 201
    :try_start_2
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchClassLoaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    monitor-exit p0

    return-object v1

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    :try_start_3
    const-string v1, "IR.PATCH"

    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    monitor-exit p0

    return-object v0

    .line 187
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchIDMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    const-string v1, "IR.PATCH"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPatchPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchPackageNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPreLoad(Ljava/lang/String;)Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPreLoadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 333
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRunningProcesses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mRunningProcessesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public hasInstantRunPatch()Z
    .locals 4

    .line 287
    const-string v0, "IR.PATCH"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-direct {p0, v3, v2}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v1, "hasInstantRunPatch: true"

    invoke-static {v0, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_0
    goto :goto_0

    .line 297
    :cond_1
    goto :goto_1

    .line 295
    :catchall_0
    move-exception v1

    .line 296
    invoke-static {v0, v1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :goto_1
    const-string v1, "hasInstantRunPatch: false"

    invoke-static {v0, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 20

    .line 103
    move-object/from16 v1, p0

    const-string v0, "-PreLoad"

    const-string v2, "-PPN"

    const-string v3, "-PatchType"

    const-string v4, "-PatchID"

    const-string v5, "-Configs"

    const-string v6, "-RProcesses"

    const-string v7, "-LoadOnAdd"

    .line 104
    nop

    .line 106
    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/util/jar/JarFile;

    iget-object v10, v1, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    const-string v10, "META-INF/PATCH.MF"

    invoke-virtual {v9, v10}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v10

    .line 108
    invoke-virtual {v9, v10}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 109
    new-instance v10, Ljava/util/jar/Manifest;

    invoke-direct {v10, v8}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 110
    invoke-virtual {v10}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v10

    .line 111
    const-string v11, "Patch-Name"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/alipay/instantrun/Patch;->mName:Ljava/lang/String;

    .line 112
    new-instance v11, Ljava/util/Date;

    const-string v12, "Created-Time"

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v11, v1, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    .line 113
    const-string v11, "From-File"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/alipay/instantrun/Patch;->mFromFile:Ljava/lang/String;

    .line 118
    invoke-virtual {v10}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 119
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/jar/Attributes$Name;

    .line 120
    invoke-virtual {v12}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v13

    .line 122
    invoke-virtual {v13, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 123
    iget-object v14, v1, Lcom/alipay/instantrun/Patch;->mLoadOnAddMap:Ljava/util/Map;

    invoke-direct {v1, v13, v7}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v13, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v15, ","

    if-eqz v14, :cond_1

    .line 125
    :try_start_2
    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 126
    iget-object v14, v1, Lcom/alipay/instantrun/Patch;->mRunningProcessesMap:Ljava/util/Map;

    invoke-direct {v1, v13, v6}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v13, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 128
    invoke-direct {v1, v13, v5}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    iget-object v14, v1, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 130
    if-nez v14, :cond_2

    .line 131
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 132
    move-object/from16 v16, v5

    iget-object v5, v1, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_2
    move-object/from16 v16, v5

    .line 134
    :goto_1
    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 135
    array-length v12, v5

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_4

    aget-object v13, v5, v15

    .line 136
    move-object/from16 v18, v5

    const-string v5, "-"

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 137
    array-length v13, v5

    move-object/from16 v19, v6

    const/4 v6, 0x2

    if-ne v13, v6, :cond_3

    .line 138
    const/4 v6, 0x0

    aget-object v13, v5, v6

    const/16 v17, 0x1

    aget-object v5, v5, v17

    invoke-interface {v14, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 137
    :cond_3
    const/4 v6, 0x0

    .line 135
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_2

    .line 141
    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    iget-object v5, v1, Lcom/alipay/instantrun/Patch;->mPatchIDMap:Ljava/util/Map;

    invoke-direct {v1, v13, v4}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_0

    .line 143
    :cond_6
    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    iget-object v5, v1, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-direct {v1, v13, v3}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_0

    .line 145
    :cond_7
    invoke-virtual {v13, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 146
    iget-object v5, v1, Lcom/alipay/instantrun/Patch;->mPatchPackageNameMap:Ljava/util/Map;

    invoke-direct {v1, v13, v2}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 148
    iget-object v5, v1, Lcom/alipay/instantrun/Patch;->mPreLoadMap:Ljava/util/Map;

    invoke-direct {v1, v13, v0}, Lcom/alipay/instantrun/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_0

    .line 147
    :cond_9
    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_0

    .line 152
    :cond_a
    iget-object v0, v1, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    invoke-virtual {v1, v3}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 156
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_b
    goto :goto_4

    .line 159
    :cond_c
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mRunningProcessesMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mLoadOnAddMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mPreLoadMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mConfigMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mPatchIDMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v3, v1, Lcom/alipay/instantrun/Patch;->mPatchPackageNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    goto :goto_5

    .line 170
    :cond_d
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    .line 172
    if-eqz v8, :cond_e

    .line 173
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    return-void

    .line 176
    :cond_e
    return-void

    .line 169
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v0, v8

    :goto_6
    if-eqz v8, :cond_f

    .line 170
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    .line 172
    :cond_f
    if-eqz v0, :cond_10

    .line 173
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_10
    throw v2
.end method

.method public isInstantRun(Ljava/lang/String;)Z
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mPatchTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInstantRun: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " patchName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IR.PATCH"

    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return v0
.end method

.method public setPatchFile(Ljava/io/File;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    .line 100
    return-void
.end method

.method public shouldRunOnProcess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/Patch;->mRunningProcessesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 308
    if-nez p1, :cond_1

    .line 309
    return v1

    .line 311
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    return v1

    .line 315
    :cond_2
    goto :goto_0

    .line 317
    :cond_3
    const/4 p1, 0x0

    return p1

    .line 305
    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Patch{mTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFromFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/instantrun/Patch;->mFromFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

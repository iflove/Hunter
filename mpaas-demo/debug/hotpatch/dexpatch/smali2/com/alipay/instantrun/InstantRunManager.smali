.class public Lcom/alipay/instantrun/InstantRunManager;
.super Ljava/lang/Object;
.source "InstantRunManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.InstantRunManager"

.field private static sInstance:Lcom/alipay/instantrun/InstantRunManager;


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mIRContext:Lcom/alipay/instantrun/IRContext;

.field private final mLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptDir:Ljava/io/File;

.field private final mPatchDir:Ljava/io/File;

.field private final mPatches:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/alipay/instantrun/Patch;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessName:Ljava/lang/String;

.field private mSecurityChecker:Lcom/alipay/instantrun/runtime/SecurityChecker;

.field private mSupport:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    .line 63
    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/alipay/instantrun/util/SystemUtil;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "instant_run"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    .line 66
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "opt"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    .line 67
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    .line 68
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mLoaders:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private addPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;
    .locals 5

    .line 174
    iget-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return-object v1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addPatch(file="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IR.InstantRunManager"

    invoke-static {v3, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    nop

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/alipay/instantrun/PatchFactory;->getPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object v1

    .line 182
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/alipay/instantrun/runtime/InstantRunException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to addPath(File="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alipay/instantrun/runtime/InstantRunException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/instantrun/InstantRunManager;
    .locals 2

    const-class v0, Lcom/alipay/instantrun/InstantRunManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alipay/instantrun/InstantRunManager;->sInstance:Lcom/alipay/instantrun/InstantRunManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;
    .locals 2

    const-class v0, Lcom/alipay/instantrun/InstantRunManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/instantrun/InstantRunManager;->sInstance:Lcom/alipay/instantrun/InstantRunManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 37
    new-instance v1, Lcom/alipay/instantrun/InstantRunManager;

    invoke-direct {v1, p0}, Lcom/alipay/instantrun/InstantRunManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/instantrun/InstantRunManager;->sInstance:Lcom/alipay/instantrun/InstantRunManager;

    .line 39
    :cond_0
    sget-object p0, Lcom/alipay/instantrun/InstantRunManager;->sInstance:Lcom/alipay/instantrun/InstantRunManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSecurityChecker()Lcom/alipay/instantrun/runtime/SecurityChecker;
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSecurityChecker:Lcom/alipay/instantrun/runtime/SecurityChecker;

    if-nez v0, :cond_1

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSecurityChecker:Lcom/alipay/instantrun/runtime/SecurityChecker;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/alipay/instantrun/runtime/SecurityChecker;

    iget-object v1, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/alipay/instantrun/InstantRunManager;->mDebuggable:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/instantrun/runtime/SecurityChecker;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSecurityChecker:Lcom/alipay/instantrun/runtime/SecurityChecker;

    .line 413
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 416
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSecurityChecker:Lcom/alipay/instantrun/runtime/SecurityChecker;

    return-object v0
.end method

.method private hasPatchFile()Z
    .locals 6

    .line 129
    iget-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 133
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_2
    return v1
.end method

.method private initPatches()V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    invoke-direct {p0, v3}, Lcom/alipay/instantrun/InstantRunManager;->addPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method

.method private loadPatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    nop

    .line 317
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    .line 318
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p1, p2}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/instantrun/Patch;->shouldRunOnProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "IR.InstantRunManager"

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadPatch(cl).installPatch(patchName="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", patch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", classLoader="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p1, p2, p3}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->installPatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result p1

    goto :goto_0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "loadPatch(cl) but patch not run on process:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 331
    const/4 p1, 0x1

    .line 333
    :cond_2
    return p1
.end method

.method private declared-synchronized preDexOptForPatchFile(Ljava/io/File;)V
    .locals 4

    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 373
    monitor-exit p0

    return-void

    .line 376
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/instantrun/InstantRunManager;->getSecurityChecker()Lcom/alipay/instantrun/runtime/SecurityChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/runtime/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const-string p1, "IR.InstantRunManager"

    const-string v0, "AndFixManager.preDexOptForPatchFile() verifyApk: failed, return."

    invoke-static {p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    monitor-exit p0

    return-void

    .line 382
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-static {p1, v1}, Lcom/alipay/instantrun/runtime/PatchHelper;->getOptimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-direct {p0}, Lcom/alipay/instantrun/InstantRunManager;->getSecurityChecker()Lcom/alipay/instantrun/runtime/SecurityChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/instantrun/runtime/SecurityChecker;->verifyOpt(Ljava/io/File;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 390
    monitor-exit p0

    return-void

    .line 392
    :cond_2
    :try_start_3
    const-string v1, "IR.InstantRunManager"

    const-string v2, "AndFixManager.preDexOptForPatchFile() verifyOpt: failed, try to delete opt file."

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 394
    const-string v0, "IR.InstantRunManager"

    const-string v1, "AndFixManager.preDexOptForPatchFile() verifyOpt: failed to delete opt file. return."

    invoke-static {v0, v1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 399
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 399
    invoke-static {v1, v2, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 401
    invoke-direct {p0}, Lcom/alipay/instantrun/InstantRunManager;->getSecurityChecker()Lcom/alipay/instantrun/runtime/SecurityChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/instantrun/runtime/SecurityChecker;->saveOptSig(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    .line 403
    :try_start_5
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to preDexOptForPatchFile (file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 405
    monitor-exit p0

    return-void

    .line 371
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addNewPatch(Ljava/lang/String;Z)I
    .locals 12

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addNewPatch(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", immediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IR.InstantRunManager"

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const-string/jumbo v5, "patch ["

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 197
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v6

    .line 201
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v7, 0x10

    if-eqz v4, :cond_1

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is already added."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return v7

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/instantrun/InstantRunManager;->containInstantRunPatch(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] contain no instant run patch"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v6

    .line 209
    :cond_2
    invoke-static {v0, v3}, Lcom/alipay/instantrun/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 210
    const/16 p1, 0x110

    if-eqz p2, :cond_12

    .line 211
    invoke-direct {p0, v3}, Lcom/alipay/instantrun/InstantRunManager;->addPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object p2

    .line 212
    if-eqz p2, :cond_11

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "loadPatch(patch="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    nop

    .line 216
    nop

    .line 218
    invoke-virtual {p2}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    invoke-virtual {p2, v5}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    invoke-virtual {p2, v5}, Lcom/alipay/instantrun/Patch;->getLoadOnAdd(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 225
    const-string v4, "loadPatch immediately but patch not loadOnAdd"

    invoke-static {v2, v4}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    nop

    .line 227
    const/4 v4, 0x1

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p2, v5}, Lcom/alipay/instantrun/Patch;->canLoadOnAddOn5_0(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 230
    const-string v4, "loadPatch immediately but patch not canLoadOnAddOn5_0"

    invoke-static {v2, v4}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    nop

    .line 232
    const/4 v4, 0x1

    goto :goto_0

    .line 234
    :cond_5
    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {p2, v5, v8}, Lcom/alipay/instantrun/Patch;->shouldRunOnProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "loadPatch immediately but patch not run on process:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    goto :goto_0

    .line 238
    :cond_6
    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mLoaders:Ljava/util/Map;

    const-string v9, "*"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 239
    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    goto :goto_1

    .line 241
    :cond_7
    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ClassLoader;

    .line 244
    :goto_1
    if-nez v8, :cond_8

    iget-object v9, p0, Lcom/alipay/instantrun/InstantRunManager;->mIRContext:Lcom/alipay/instantrun/IRContext;

    if-eqz v9, :cond_8

    .line 245
    invoke-interface {v9, v5}, Lcom/alipay/instantrun/IRContext;->loadByDefaultClassLoader(Ljava/lang/String;)Z

    move-result v9

    .line 246
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "loadPatch immediately loadByDefaultClassLoader="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz v9, :cond_8

    .line 248
    iget-object v8, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 251
    :cond_8
    if-eqz v8, :cond_b

    .line 252
    invoke-direct {p0, p2, v5, v8}, Lcom/alipay/instantrun/InstantRunManager;->loadPatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    .line 254
    and-int/lit8 v5, v1, 0x1

    if-gtz v5, :cond_9

    and-int/lit16 v1, v1, 0x100

    if-lez v1, :cond_a

    .line 256
    :cond_9
    const/4 v4, 0x1

    .line 258
    :cond_a
    nop

    .line 259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    :cond_b
    const-string v5, "loadPatch immediately but patch not found any fitable classloader"

    invoke-static {v2, v5}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_c
    if-nez v1, :cond_d

    .line 265
    invoke-direct {p0, v3}, Lcom/alipay/instantrun/InstantRunManager;->preDexOptForPatchFile(Ljava/io/File;)V

    .line 268
    :cond_d
    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    .line 269
    return p1

    .line 271
    :cond_e
    if-eqz v1, :cond_f

    .line 272
    return v7

    .line 274
    :cond_f
    if-eqz v4, :cond_10

    .line 275
    return p1

    .line 277
    :cond_10
    return p1

    .line 279
    :cond_11
    return p1

    .line 282
    :cond_12
    invoke-direct {p0, v3}, Lcom/alipay/instantrun/InstantRunManager;->preDexOptForPatchFile(Ljava/io/File;)V

    .line 283
    return p1
.end method

.method public checkPatchStatus(Ljava/lang/String;)I
    .locals 5

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkPatchStatus(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IR.InstantRunManager"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/instantrun/PatchFactory;->getPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object p1

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    .line 489
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 490
    invoke-virtual {p1, v3}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    goto :goto_0

    .line 495
    :cond_1
    invoke-static {v0}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->checkPatchStatus(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 496
    :catchall_0
    move-exception p1

    .line 497
    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    const/4 p1, 0x0

    return p1
.end method

.method public cleanPatches(Z)V
    .locals 9

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanPatches(force="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IR.InstantRunManager"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    const-string v2, "instant_run"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 347
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 348
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".jar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    iget-object v6, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-static {v6, v5}, Lcom/alipay/instantrun/runtime/PatchHelper;->removeOptFile(Ljava/io/File;Ljava/io/File;)V

    .line 351
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-static {v5}, Lcom/alipay/instantrun/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " delete success."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-md5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_1
    new-instance p1, Lcom/alipay/instantrun/runtime/InstantRunException;

    const-string v0, "File delete failed"

    invoke-direct {p1, v0}, Lcom/alipay/instantrun/runtime/InstantRunException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 363
    if-eqz p1, :cond_3

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 367
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    return-void
.end method

.method public declared-synchronized containInstantRunPatch(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 143
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "containInstantRunPatch(path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const-string p1, "IR.InstantRunManager"

    const-string v1, "containInstantRunPatch: false"

    invoke-static {p1, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return v0

    .line 151
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/alipay/instantrun/PatchFactory;->getPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->hasInstantRunPatch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    const-string p1, "IR.InstantRunManager"

    const-string v1, "containInstantRunPatch: true"

    invoke-static {p1, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 158
    :cond_1
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p1

    .line 157
    :try_start_2
    const-string v1, "IR.InstantRunManager"

    const-string v2, "containInstantRunPatch: failed "

    invoke-static {v1, v2, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :goto_0
    const-string p1, "IR.InstantRunManager"

    const-string v1, "containInstantRunPatch: false"

    invoke-static {p1, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    monitor-exit p0

    return v0

    .line 142
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIRContext()Lcom/alipay/instantrun/IRContext;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mIRContext:Lcom/alipay/instantrun/IRContext;

    return-object v0
.end method

.method public getOptDir()Ljava/io/File;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getPatchFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 504
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchFromFile(path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    const-string p1, "IR.InstantRunManager"

    const-string v1, "getPatchFromFile: patch file not exists"

    invoke-static {p1, v1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-object v0

    .line 512
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/alipay/instantrun/PatchFactory;->getPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getFromFile()Ljava/lang/String;

    move-result-object p1

    .line 514
    const-string v1, "IR.InstantRunManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchFromFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    monitor-exit p0

    return-object p1

    .line 516
    :catchall_0
    move-exception p1

    .line 517
    :try_start_2
    const-string v1, "IR.InstantRunManager"

    const-string v2, "getPatchFromFile: failed "

    invoke-static {v1, v2, p1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    monitor-exit p0

    return-object v0

    .line 503
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 529
    iget-object v1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/instantrun/Patch;

    .line 530
    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v2}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_0

    .line 533
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    :cond_0
    goto :goto_0

    .line 537
    :cond_1
    return-object v0
.end method

.method public getPreLoadPatchNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/instantrun/Patch;

    .line 548
    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v2}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_1

    .line 551
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 552
    invoke-virtual {v2, v4}, Lcom/alipay/instantrun/Patch;->getPreLoad(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    goto :goto_1

    .line 558
    :cond_1
    goto :goto_0

    .line 559
    :cond_2
    return-object v0
.end method

.method public hasInstantPatch(Ljava/lang/String;)Z
    .locals 5

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasInstantPatch(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IR.InstantRunManager"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/instantrun/PatchFactory;->getPatch(Ljava/io/File;)Lcom/alipay/instantrun/Patch;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    invoke-virtual {p1, v2}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {p1, v2}, Lcom/alipay/instantrun/Patch;->getLoadOnAdd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-static {v2}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->isPatchTriggered(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 467
    invoke-static {p1, v2}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    invoke-virtual {p1, v2}, Lcom/alipay/instantrun/Patch;->forceInstantRun(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 469
    return v4

    .line 474
    :cond_1
    return v4

    .line 478
    :cond_2
    goto :goto_0

    .line 476
    :catchall_0
    move-exception p1

    .line 477
    invoke-static {v1, p1}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasPatch(Ljava/lang/String;)Z
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/instantrun/Patch;

    .line 432
    invoke-virtual {v1}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    .line 433
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    invoke-virtual {v1, p1}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasPatch(patchName="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", patch="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1}, Lcom/alipay/instantrun/Patch;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    const-string v0, "IR.InstantRunManager"

    invoke-static {v0, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 p1, 0x1

    return p1

    .line 441
    :cond_1
    goto :goto_0

    .line 442
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized init(Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mAppVersion:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mDebuggable:Z

    .line 90
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    .line 91
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    const-string p1, "IR.InstantRunManager"

    const-string/jumbo v0, "patch dir create error."

    invoke-static {p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-boolean p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 97
    const-string p1, "IR.InstantRunManager"

    const-string/jumbo v0, "patch dir not directory."

    invoke-static {p1, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-boolean p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    .line 102
    iput-boolean p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    .line 103
    const-string p1, "IR.InstantRunManager"

    const-string/jumbo p2, "opt dir create error."

    invoke-static {p1, p2}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 105
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 107
    iput-boolean p2, p0, Lcom/alipay/instantrun/InstantRunManager;->mSupport:Z

    .line 108
    const-string p1, "IR.InstantRunManager"

    const-string/jumbo p2, "opt dir not directory."

    invoke-static {p1, p2}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/alipay/instantrun/InstantRunManager;->hasPatchFile()Z

    move-result p1

    .line 112
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mContext:Landroid/content/Context;

    const-string v1, "instant_run"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "IR.InstantRunManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InstantRunManager.init(ver="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/alipay/instantrun/InstantRunManager;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 122
    :cond_4
    if-eqz p1, :cond_5

    .line 123
    invoke-direct {p0}, Lcom/alipay/instantrun/InstantRunManager;->initPatches()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :cond_5
    monitor-exit p0

    return-void

    .line 117
    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    .line 118
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/alipay/instantrun/InstantRunManager;->cleanPatches(Z)V

    .line 120
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "version"

    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mAppVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDebuggable()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mDebuggable:Z

    return v0
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    nop

    .line 291
    iget-object v0, p0, Lcom/alipay/instantrun/InstantRunManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/instantrun/Patch;

    .line 292
    invoke-virtual {v2}, Lcom/alipay/instantrun/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v3

    .line 293
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    invoke-virtual {v2, p1}, Lcom/alipay/instantrun/Patch;->isInstantRun(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/alipay/instantrun/Patch;->shouldRunOnProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "IR.InstantRunManager"

    if-nez v3, :cond_1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadPatch() but patch not run on process:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/instantrun/InstantRunManager;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    goto :goto_0

    .line 301
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "loadPatch().installPatch(patchName="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", patch="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Lcom/alipay/instantrun/Patch;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", classLoader="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-static {v4, v3}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {v2, p1, p2}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->installPatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v2

    or-int/2addr v1, v2

    .line 306
    :cond_2
    goto :goto_0

    .line 307
    :cond_3
    if-nez v1, :cond_4

    .line 308
    const/4 v1, 0x1

    .line 310
    :cond_4
    return v1
.end method

.method public rollback()V
    .locals 0

    .line 337
    invoke-static {}, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->cleanRuntimePatch()V

    .line 338
    return-void
.end method

.method public setIRContext(Lcom/alipay/instantrun/IRContext;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunManager;->mIRContext:Lcom/alipay/instantrun/IRContext;

    .line 81
    return-void
.end method

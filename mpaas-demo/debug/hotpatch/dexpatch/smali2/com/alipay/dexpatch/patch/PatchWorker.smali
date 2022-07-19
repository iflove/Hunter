.class public Lcom/alipay/dexpatch/patch/PatchWorker;
.super Ljava/lang/Object;
.source "PatchWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/dexpatch/patch/PatchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModulePrepared(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 7
    monitor-exit v3

    return v5

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 13
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 14
    invoke-static {v6, v7}, Lcom/alipay/dexpatch/patch/ModuleInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v6, :cond_1

    const-string v0, "DexP.PatchWorker"

    .line 16
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "checkModulePrepared: got moduleInfo null, return false, module="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    monitor-exit v3

    return v4

    .line 19
    :cond_1
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getODexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getOptimizedDirFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleCLType(Ljava/lang/String;)I

    move-result v0

    .line 26
    iget-object v9, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isSystemOTA(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_2

    const-string v9, "DexP.PatchWorker"

    .line 27
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkModulePrepared: got system ota, module="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    .line 26
    :cond_2
    const/4 v9, 0x1

    .line 31
    :goto_0
    iget-object v10, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isRuntimeEnvChange(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v10, :cond_3

    const-string v9, "DexP.PatchWorker"

    .line 32
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkModulePrepared: got RuntimeEnvChange, module="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_3
    if-eqz v9, :cond_5

    if-ne v0, v5, :cond_4

    .line 39
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/alipay/dexpatch/DexPatchContext;->getOriginDexFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 32
    :cond_4
    const/4 v11, 0x0

    .line 39
    :goto_1
    if-ne v0, v5, :cond_5

    .line 42
    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :cond_5
    const/4 v11, 0x2

    if-eqz v9, :cond_8

    .line 47
    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 50
    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    array-length v12, v0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_8

    aget-object v14, v0, v13

    .line 51
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v14, "DexP.PatchWorker"

    .line 52
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v5, "checkModulePrepared: check dex file exist: %s, size %d"

    :try_start_5
    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v4, v17

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v4, v16

    invoke-static {v10, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v15}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v4, :cond_6

    const-string v4, "DexP.PatchWorker"

    .line 54
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v9, "checkModulePrepared: not a legal dex file: %s, size %d, set prepared false"

    :try_start_7
    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v10, v17

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v10, v15

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :cond_8
    if-eqz v9, :cond_16

    .line 62
    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v0, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    array-length v5, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_b

    aget-object v10, v0, v7

    .line 67
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v12}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    const-string v10, "DexP.PatchWorker"

    .line 69
    :try_start_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v14, "checkModulePrepared: check dex optimizer file exist: %s, size %d"

    :try_start_9
    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v15, v17

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v12}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v10, :cond_a

    const-string v10, "DexP.PatchWorker"

    .line 72
    :try_start_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v14, "checkModulePrepared: dex optimizer file %s is not legal, set prepared false"

    const/4 v15, 0x1

    :try_start_b
    new-array v11, v15, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v11, v17

    invoke-static {v13, v14, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x2

    goto :goto_3

    .line 77
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v0, :cond_c

    const-string v0, "DexP.PatchWorker"

    .line 78
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "checkModulePrepared: check prepared failed, module="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_c
    const/16 v0, 0x15

    if-eqz v9, :cond_10

    .line 81
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v0, :cond_10

    const/4 v5, 0x0

    .line 82
    :goto_5
    iget-object v7, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_10

    .line 83
    iget-object v7, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    aget-object v7, v7, v5

    .line 84
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const-string v7, "DexP.PatchWorker"

    .line 85
    :try_start_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-string v12, "checkModulePrepared: check dex optimizer file md5: %s, size %d"

    const/4 v13, 0x2

    :try_start_e
    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    invoke-static {v11, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v7, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_d

    .line 88
    iget-object v7, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    aget-object v7, v7, v5

    goto :goto_6

    .line 87
    :cond_d
    const/4 v7, 0x0

    .line 90
    :goto_6
    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-nez v11, :cond_e

    const-string v5, "DexP.PatchWorker"

    .line 92
    :try_start_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const-string v9, "checkModulePrepared: dex optimizer file %s md5 is not right"

    const/4 v11, 0x1

    :try_start_10
    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-static {v7, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_7

    .line 95
    :cond_e
    invoke-static {v10}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-nez v7, :cond_f

    const-string v5, "DexP.PatchWorker"

    .line 98
    :try_start_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const-string v9, "checkModulePrepared: dex optimizer file %s md5 is not right"

    const/4 v11, 0x1

    :try_start_12
    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-static {v7, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_10
    :goto_7
    if-eqz v9, :cond_14

    .line 103
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v0, :cond_14

    .line 105
    iget-object v5, v6, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v7, v6, :cond_12

    aget-object v0, v5, v7

    .line 106
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-string v0, "DexP.PatchWorker"

    .line 107
    :try_start_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const-string v13, "checkModulePrepared: check dex optimizer file format: %s, size %d"

    const/4 v14, 0x2

    :try_start_14
    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v15, v17

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v15, v16

    invoke-static {v12, v13, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 110
    :try_start_15
    invoke-static {v11}, Lcom/alipay/dexpatch/util/DPElfFile;->getFileTypeByMagic(Ljava/io/File;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const/4 v12, 0x1

    if-ne v0, v12, :cond_11

    .line 118
    :try_start_16
    new-instance v0, Lcom/alipay/dexpatch/util/DPElfFile;

    invoke-direct {v0, v11}, Lcom/alipay/dexpatch/util/DPElfFile;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 124
    :try_start_17
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v10, v0

    const-string v0, "DexP.PatchWorker"

    .line 125
    :try_start_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    const-string v13, "checkModulePrepared: dex optimizer file %s is not elf format"

    const/4 v15, 0x1

    :try_start_19
    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v14, v17

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 129
    const/4 v11, 0x0

    :try_start_1a
    invoke-static {v11}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    const/4 v12, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw v0

    .line 110
    :cond_11
    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_9

    .line 129
    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    const/4 v15, 0x1

    .line 130
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 146
    :cond_12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    if-nez v10, :cond_13

    .line 147
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    const-string v4, "CHECK_DEX_OAT_FORMAT_FAIL"

    invoke-direct {v0, v4}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    const-string v4, "CHECK_DEX_OAT_FORMAT_FAIL"

    invoke-direct {v0, v4, v10}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    const-string v4, "DexP.PatchWorker"

    const-string/jumbo v5, "waitAndCheckDexOptFile: failed"

    .line 151
    invoke-static {v4, v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_b

    :cond_14
    move v4, v9

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v4, 0x0

    goto :goto_c

    .line 54
    :cond_16
    move v4, v9

    .line 151
    :goto_c
    const-string v0, "DexP.PatchWorker"

    .line 158
    :try_start_1b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkModulePrepared: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", module="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v2, v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->setModulePrepared(Ljava/lang/String;Z)V

    .line 160
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    return v4

    .line 162
    :catchall_3
    move-exception v0

    goto :goto_d

    .line 160
    :cond_17
    const-string v0, "DexP.PatchWorker"

    .line 161
    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checkModulePrepared: param invalid, return false, module="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    monitor-exit v3

    const/4 v1, 0x0

    return v1

    .line 301
    :goto_d
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    throw v0
.end method

.method public static loadModulePatch(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/patch/PatchWorker;->checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "DexP.PatchWorker"

    const-string p1, "loadModulePatch: failed, module not prepared"

    .line 2
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->setInUse(Z)V

    .line 8
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/alipay/dexpatch/DexPatchContext;->beforeModulePatchLoad(Ljava/lang/String;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleCLType(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 15
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isVmArt()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleUseMerge(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dexpatch_merged.jar"

    invoke-direct {p2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    if-nez v4, :cond_2

    .line 23
    instance-of v4, p2, Landroid/app/Application;

    if-eqz v4, :cond_1

    .line 24
    move-object v4, p2

    check-cast v4, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const-string p0, "DexP.PatchWorker"

    const-string p1, "loadModulePatch: cannot find application object"

    .line 26
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleEnableDexImage(Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo p1, "odex"

    invoke-static {v4, v3, v0, p1, p0}, Lcom/alipay/dexpatch/patch/DexLoader;->loadDPJars(Landroid/app/Application;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "DexP.PatchWorker"

    const-string p1, "loadModulePatch: loadDPJars failed"

    .line 31
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 35
    :cond_3
    new-instance p0, Ljava/io/File;

    const-string p1, "dex"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 38
    array-length p2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_5

    aget-object v4, p0, v3

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 44
    :cond_5
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-nez p2, :cond_7

    .line 47
    instance-of p2, p0, Landroid/app/Application;

    if-eqz p2, :cond_6

    .line 48
    move-object p2, p0

    check-cast p2, Landroid/app/Application;

    goto :goto_2

    :cond_6
    const-string p0, "DexP.PatchWorker"

    const-string p1, "loadModulePatch: cannot find application object"

    .line 50
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_2
    const-string/jumbo p0, "odex"

    .line 54
    invoke-static {p2, p1, v0, p0, v1}, Lcom/alipay/dexpatch/patch/DexLoader;->loadDPJars(Landroid/app/Application;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "DexP.PatchWorker"

    const-string p1, "loadModulePatch: loadDPJars failed"

    .line 55
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    return v2

    .line 60
    :cond_9
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isVmArt()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleUseMerge(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/dex/dexpatch_merged.jar"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/odex"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, p1, v0}, Lcom/alipay/dexpatch/DexPatchContext;->customPatch(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 66
    :cond_a
    new-instance p0, Ljava/io/File;

    const-string p1, "dex"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 69
    array-length v2, p0

    :goto_3
    if-ge v1, v2, :cond_c

    aget-object v3, p0, v1

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 71
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    :cond_c
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/odex"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, p1, v0}, Lcom/alipay/dexpatch/DexPatchContext;->customPatch(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static preparePatch(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->isPreparing()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "DexP.PatchWorker"

    .line 8
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preparePatch: isPreparing patchInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", scene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getPrepareFuture()Ljava/util/concurrent/Future;

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :cond_0
    const-string v1, "DexP.PatchWorker"

    .line 11
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preparePatch: patchInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", scene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "DexP.PatchWorker"

    .line 13
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preparePatch add sPreparingPatches: patchInfo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPConfigUtil;->getPreparePatchConfig(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->initPrepareDelayEnv(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/alipay/dexpatch/util/ThreadUtil;->getPatchExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;

    invoke-direct {v1, p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;-><init>(Lcom/alipay/dexpatch/patch/PatchInfo;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPrepareFuture(Ljava/util/concurrent/Future;)V

    .line 18
    monitor-exit v0

    return-object p1

    :cond_1
    const-string p0, "DexP.PatchWorker"

    const-string/jumbo p1, "preparePatch: patchInfo null or eliminated"

    .line 19
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 20
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static releaseWaitingPatchPreparations()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 2
    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->releasePatchPreparationWaiting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    const-string v1, "DexP.PatchWorker"

    const-string/jumbo v2, "releaseWaitingPatchPreparations warn."

    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trigPatchPreparation(Lcom/alipay/dexpatch/patch/PatchInfo;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-static {p0, v4}, Lcom/alipay/dexpatch/patch/PatchWorker;->checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 11
    :cond_1
    move v2, v3

    .line 12
    :cond_2
    const-string v1, "DexP.PatchWorker"

    .line 15
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trigPatchPreparation: prepared="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_3

    const-string v1, "launch"

    .line 17
    invoke-static {p0, v1}, Lcom/alipay/dexpatch/patch/PatchWorker;->preparePatch(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/alipay/dexpatch/DexPatchContext;->onPatchPrepared(Ljava/lang/String;)V

    .line 21
    :goto_1
    monitor-exit v0

    return-void

    :cond_4
    const-string p0, "DexP.PatchWorker"

    const-string/jumbo v1, "trigPatchPreparation: param invalid, return false"

    .line 22
    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

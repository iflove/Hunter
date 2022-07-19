.class public Lcom/alipay/dexpatch/DexPatchManager;
.super Ljava/lang/Object;
.source "DexPatchManager.java"


# static fields
.field private static a:Lcom/alipay/dexpatch/DexPatchManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private final h:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/alipay/dexpatch/patch/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/alipay/dexpatch/patch/PatchInfo;

.field private j:Lcom/alipay/dexpatch/DexPatchContext;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->m:Z

    .line 7
    iput-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    .line 8
    iput-boolean p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    .line 9
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->d:Ljava/lang/String;

    .line 11
    new-instance p2, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    .line 13
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->e:Ljava/io/File;

    .line 14
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    .line 15
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchWorkspaceDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    .line 17
    new-instance p1, Lcom/alipay/dexpatch/DefaultDexPatchContext;

    invoke-direct {p1}, Lcom/alipay/dexpatch/DefaultDexPatchContext;-><init>()V

    iput-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->j:Lcom/alipay/dexpatch/DexPatchContext;

    .line 19
    iget-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->e:Ljava/io/File;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->k:Z

    return-void
.end method

.method private static a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPatchInfo: File="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchInfo: Failed, File="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return-object p0
.end method

.method private a()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/alipay/dexpatch/util/ToolsUtil;->getPatchFilesToDelete(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_0

    .line 8
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_0
    if-eqz v0, :cond_5

    .line 11
    array-length v5, v0

    if-lez v5, :cond_5

    .line 12
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {v5, v6, v7}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v5

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    array-length v7, v0

    :goto_0
    if-ge v1, v7, :cond_2

    aget-object v8, v0, v1

    .line 17
    invoke-virtual {v5, v8}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v9

    .line 18
    invoke-virtual {v5, v8}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyFingerPrint(Ljava/io/File;)Z

    move-result v10

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-nez v11, :cond_1

    .line 22
    :try_start_0
    invoke-static {v8}, Lcom/alipay/dexpatch/DexPatchManager;->a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 24
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    const-string v9, "DexP.DexPatchManager"

    const-string v10, "initLocalPatchOnInit: init patchInfo got failure"

    .line 27
    invoke-static {v9, v8, v10}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 33
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/dexpatch/patch/PatchInfo;

    goto :goto_2

    .line 31
    :cond_3
    move-object v0, v3

    .line 35
    :goto_2
    if-eqz v0, :cond_4

    .line 39
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isTargetClientVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 48
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v1, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_6
    return-void

    .line 56
    :cond_7
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/alipay/dexpatch/util/ToolsUtil;->getPatchFilesToDelete(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    :try_start_2
    invoke-static {v6}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v7

    const-string v8, "DexP.DexPatchManager"

    const-string v9, "initLocalPatchOnInit: init to clean patchInfo got failure"

    .line 65
    invoke-static {v8, v7, v9}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v7, v3

    .line 67
    :goto_5
    invoke-static {v6}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 73
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v5

    iget-object v8, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {v5, v8, v9}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/alipay/dexpatch/patch/SecurityChecker;->removeFingerPrint(Ljava/io/File;)V

    if-eqz v7, :cond_8

    .line 75
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    nop

    .line 76
    invoke-virtual {p0, v1}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initLocalPatchOnInit: failed to delete file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    .line 79
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLocalPatchOnInit: failed to delete file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_a
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/alipay/dexpatch/util/ToolsUtil;->cleanPatchFilesToDelete(Landroid/content/Context;)V

    :cond_b
    nop

    .line 91
    invoke-virtual {p0, v4, v2}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V

    .line 92
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 95
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/alipay/dexpatch/util/ToolsUtil;->getPureProcessesToKill(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 97
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/alipay/dexpatch/DexPatchContext;->triggerKillPureProcesses(Ljava/util/List;)V

    .line 98
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/alipay/dexpatch/util/ToolsUtil;->clearPureProcessesToKill(Landroid/content/Context;)V

    :cond_c
    nop

    .line 103
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_13

    .line 106
    array-length v6, v0

    if-lez v6, :cond_13

    .line 107
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {v6, v7, v8}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v6

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    array-length v8, v0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_e

    aget-object v10, v0, v9

    .line 111
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v6, v10}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v11

    .line 114
    invoke-virtual {v6, v10}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyFingerPrint(Ljava/io/File;)Z

    move-result v12

    if-eqz v11, :cond_d

    if-eqz v12, :cond_d

    .line 117
    :try_start_3
    invoke-static {v10}, Lcom/alipay/dexpatch/DexPatchManager;->a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 119
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v10

    const-string v11, "DexP.DexPatchManager"

    const-string v12, "initLocalPatchOnInit: init patchInfo got failure"

    .line 122
    invoke-static {v11, v10, v12}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 126
    :cond_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 128
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 130
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 131
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 126
    :cond_f
    move-object v0, v3

    .line 131
    :goto_8
    if-eqz v0, :cond_10

    .line 135
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTargetCVersion()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 137
    iget-object v8, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v0, v8}, Lcom/alipay/dexpatch/patch/PatchInfo;->isTargetClientVersion(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 140
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    .line 146
    :cond_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 148
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 151
    :try_start_4
    invoke-static {v7}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v8

    const-string v9, "DexP.DexPatchManager"

    const-string v10, "initLocalPatchOnInit: init to clean patchInfo got failure"

    .line 153
    invoke-static {v9, v8, v10}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v8, v3

    .line 155
    :goto_a
    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 162
    invoke-virtual {v6, v7}, Lcom/alipay/dexpatch/patch/SecurityChecker;->removeFingerPrint(Ljava/io/File;)V

    .line 163
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    nop

    .line 164
    invoke-virtual {p0, v1}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "initLocalPatchOnInit: setSupport(false);"

    .line 165
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initLocalPatchOnInit: failed to delete file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    .line 168
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLocalPatchOnInit: failed to delete file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v3, v0

    :cond_13
    nop

    .line 177
    invoke-virtual {p0, v4, v2}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V

    .line 178
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_14

    .line 184
    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v2

    .line 185
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 191
    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    invoke-static {v4, v2, v0, v1}, Lcom/alipay/dexpatch/util/DPFileUtil;->listAllFiles(Ljava/io/File;Ljava/util/List;Ljava/util/List;Z)V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 195
    invoke-static {}, Lcom/alipay/dexpatch/util/ThreadUtil;->getFileExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/dexpatch/DexPatchManager$1;

    invoke-direct {v1, p0, v2}, Lcom/alipay/dexpatch/DexPatchManager$1;-><init>(Lcom/alipay/dexpatch/DexPatchManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_15
    if-eqz v3, :cond_16

    .line 210
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_5
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v1, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    :cond_16
    return-void
.end method

.method private b()Lcom/alipay/dexpatch/patch/PatchInfo;
    .locals 6

    .line 8
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->i:Lcom/alipay/dexpatch/patch/PatchInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    return-object v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->i:Lcom/alipay/dexpatch/patch/PatchInfo;

    monitor-exit v0

    return-object v1

    :cond_1
    nop

    .line 16
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/dexpatch/patch/PatchInfo;

    if-nez v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    move-object v2, v3

    goto :goto_0

    .line 25
    :cond_4
    iput-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->i:Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 26
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/dexpatch/DexPatchManager;
    .locals 2

    const-class v0, Lcom/alipay/dexpatch/DexPatchManager;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/alipay/dexpatch/DexPatchManager;->a:Lcom/alipay/dexpatch/DexPatchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 5
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/alipay/dexpatch/DexPatchManager;
    .locals 2

    const-class v0, Lcom/alipay/dexpatch/DexPatchManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alipay/dexpatch/DexPatchManager;->a:Lcom/alipay/dexpatch/DexPatchManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 2
    new-instance v1, Lcom/alipay/dexpatch/DexPatchManager;

    invoke-direct {v1, p0, p1}, Lcom/alipay/dexpatch/DexPatchManager;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/alipay/dexpatch/DexPatchManager;->a:Lcom/alipay/dexpatch/DexPatchManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/alipay/dexpatch/DexPatchManager;->a:Lcom/alipay/dexpatch/DexPatchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addPatch(Ljava/lang/String;Z)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPatch: path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch:  not inited, just return."

    .line 3
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch: isSupported()=false"

    .line 7
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    monitor-exit p0

    return v1

    .line 10
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch: isPureProcess(), just return."

    .line 11
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    monitor-exit p0

    return v1

    .line 16
    :cond_2
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    .line 19
    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch: src patch file is not legal, just return"

    .line 21
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v1

    .line 24
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {v2, v3, v4}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch: src patch file verify failed, just return"

    .line 25
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    return v1

    :cond_5
    const/4 v2, 0x0

    .line 30
    :try_start_6
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_7
    const-string v4, "DexP.DexPatchManager"

    const-string v5, "addPatch: load src patch info failed"

    .line 32
    invoke-static {v4, v3, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_b

    .line 34
    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->hasDexPatch()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 38
    sget-object v3, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 39
    :try_start_8
    iget-object v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 40
    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch:  mPatchInfos contains src patch, just return"

    .line 41
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit p0

    return v6

    .line 45
    :cond_7
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 47
    :try_start_a
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "addPatch: patch ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is already added."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexP.DexPatchManager"

    invoke-static {p2, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    monitor-exit p0

    return v6

    .line 53
    :cond_8
    :try_start_b
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 60
    :try_start_c
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 68
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object p1

    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {p1, v3, v4}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/alipay/dexpatch/patch/SecurityChecker;->saveFingerPrint(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 71
    :try_start_d
    invoke-static {v2}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 77
    :try_start_e
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 78
    :try_start_f
    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    const-string v0, "add"

    .line 80
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/patch/PatchWorker;->preparePatch(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 85
    :try_start_11
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_12
    const-string p2, "DexP.DexPatchManager"

    const-string v0, "failed to preparePatch"

    .line 88
    invoke-static {p2, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v1, 0x1

    :goto_2
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    .line 89
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw p1

    :catchall_3
    move-exception p1

    const-string p2, "DexP.DexPatchManager"

    const-string v0, "addPatch: load dest patch info failed"

    .line 90
    invoke-static {p2, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    monitor-exit p0

    return v1

    .line 91
    :cond_a
    :try_start_15
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "addPatch: copy failed, md5 changed, dest delete result="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexP.DexPatchManager"

    invoke-static {p2, p1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    monitor-exit p0

    return v1

    :catchall_4
    move-exception p1

    .line 93
    :try_start_16
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addPatch: copy failed, dest delete result="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DexP.DexPatchManager"

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    monitor-exit p0

    return v1

    :catchall_5
    move-exception p1

    .line 95
    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw p1

    :cond_b
    const-string p1, "DexP.DexPatchManager"

    const-string p2, "addPatch:  src patch null or not a dexPatch"

    .line 96
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    monitor-exit p0

    return v1

    .line 0
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized canKillProcessNow()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DexP.DexPatchManager"

    const-string v1, "canKillProcessNow"

    .line 1
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "DexP.DexPatchManager"

    const-string v2, "canKillProcessNow: not inited, just return."

    .line 3
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DexP.DexPatchManager"

    const-string v2, "canKillProcessNow: isSupported()=false"

    .line 7
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 10
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/dexpatch/patch/PatchInfo;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->isPreparing()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 13
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    nop

    .line 16
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    .line 17
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanPatches(ZZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cleanPatches(ZZLjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cleanPatches: init="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DexP.DexPatchManager"

    invoke-static {v4, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "DexP.DexPatchManager"

    const-string v2, "cleanPatches: isSupported() false, just return."

    .line 4
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "DexP.DexPatchManager"

    const-string v2, "cleanPatches: isPureProcess(), just return."

    .line 8
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit p0

    return-void

    .line 13
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 14
    array-length v4, v3

    if-lez v4, :cond_1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, v1, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDPSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    array-length v6, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v3, v7

    .line 19
    invoke-static {v8}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_md5"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cleanPatches: failed to delete file="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexP.DexPatchManager"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v8}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    .line 28
    invoke-virtual {v1, v5}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V

    .line 29
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanPatches: failed to delete file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v6, v1, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    invoke-static {v6, v3, v4, v5}, Lcom/alipay/dexpatch/util/DPFileUtil;->listAllFiles(Ljava/io/File;Ljava/util/List;Ljava/util/List;Z)V

    .line 37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 38
    invoke-static {}, Lcom/alipay/dexpatch/util/ThreadUtil;->getFileExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/alipay/dexpatch/DexPatchManager$2;

    invoke-direct {v5, v1, v3}, Lcom/alipay/dexpatch/DexPatchManager$2;-><init>(Lcom/alipay/dexpatch/DexPatchManager;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    if-eqz v2, :cond_5

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p0

    return-void

    .line 55
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit p0

    return-void

    :cond_6
    nop

    .line 60
    :try_start_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    new-instance v0, Ljava/io/File;

    move-object/from16 v6, p3

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 63
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v6, "DexP.DexPatchManager"

    const-string v7, "cleanPatches: init ignorePatch info failed"

    .line 67
    invoke-static {v6, v0, v7}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    :cond_7
    move-object v6, v4

    :goto_1
    sget-object v7, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 70
    :try_start_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, v1, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 74
    invoke-virtual {v10}, Lcom/alipay/dexpatch/patch/PatchInfo;->isPreparing()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 75
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v10}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v11

    .line 77
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 78
    invoke-virtual {v10, v12}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 79
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v0, v1, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 86
    invoke-virtual {v11}, Lcom/alipay/dexpatch/patch/PatchInfo;->isInUse()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 87
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v11}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v12

    .line 89
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 90
    invoke-virtual {v11, v13}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 91
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 96
    :cond_b
    iget-object v0, v1, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/dexpatch/patch/PatchInfo;

    if-eqz v6, :cond_c

    .line 97
    invoke-virtual {v6}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 98
    invoke-virtual {v11}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 100
    invoke-virtual {v11, v12}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 108
    :cond_d
    iget-object v0, v1, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDPSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 109
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 111
    array-length v14, v3

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_17

    aget-object v5, v3, v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v6, :cond_e

    .line 115
    :try_start_7
    invoke-static {v5}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v16, v3

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_8
    const-string v4, "DexP.DexPatchManager"

    move-object/from16 v16, v3

    const-string v3, "cleanPatches: init PatchInfo failed when check shouldIgnore"

    .line 120
    invoke-static {v4, v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6

    .line 111
    :cond_e
    move-object/from16 v16, v3

    .line 120
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_15

    .line 125
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 126
    move-object/from16 p3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v17

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->setEliminated(Z)V

    move-object/from16 v0, p3

    move-object/from16 v9, v18

    const/4 v3, 0x1

    goto :goto_8

    .line 126
    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v9, v18

    goto :goto_8

    .line 131
    :cond_10
    move-object/from16 v18, v9

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 132
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v17

    move-object/from16 p3, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 133
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/alipay/dexpatch/patch/PatchInfo;->setEliminated(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v0, p3

    goto :goto_9

    .line 132
    :cond_11
    move-object/from16 v0, p3

    goto :goto_9

    .line 133
    :cond_12
    if-nez v3, :cond_14

    .line 139
    :try_start_9
    invoke-static {v5}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_a
    const-string v0, "DexP.DexPatchManager"

    const-string v4, "cleanPatches: init to clean patchInfo got failure"

    .line 141
    invoke-static {v0, v3, v4}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 143
    :goto_a
    invoke-static {v5}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_md5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_16

    .line 146
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    nop

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    const-string v0, "DexP.DexPatchManager"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 150
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanPatches: failed to delete file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v5}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    .line 152
    new-instance v0, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanPatches: failed to delete file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_14
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 120
    :cond_15
    move-object/from16 v18, v9

    .line 156
    :cond_16
    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move-object/from16 v9, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_5

    .line 162
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v3, v1, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/dexpatch/patch/PatchInfo;

    if-eqz v6, :cond_19

    .line 164
    invoke-virtual {v6}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 167
    :cond_19
    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->isInUse()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->isPreparing()Z

    move-result v5

    if-nez v5, :cond_18

    .line 168
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    nop

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v4, v1, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v4, v3, v8, v5}, Lcom/alipay/dexpatch/util/DPFileUtil;->listAllFiles(Ljava/io/File;Ljava/util/List;Ljava/util/List;Z)V

    .line 179
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1b

    .line 180
    invoke-static {}, Lcom/alipay/dexpatch/util/ThreadUtil;->getFileExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/alipay/dexpatch/DexPatchManager$3;

    invoke-direct {v5, v1, v3}, Lcom/alipay/dexpatch/DexPatchManager$3;-><init>(Lcom/alipay/dexpatch/DexPatchManager;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 193
    :cond_1b
    iget-object v3, v1, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_1c

    .line 195
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d

    .line 198
    :cond_1c
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    :goto_d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 203
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_e

    :cond_1d
    nop

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V

    .line 207
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containDexPatch(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DexP.DexPatchManager"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "containDexPatch: path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "containDexPatch: isSupported()=false"

    .line 3
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 8
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "containDexPatch: src patch file is not legal, just return"

    .line 10
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    .line 13
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {p1, v2, v3}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "containDexPatch: src patch file verify failed, just return"

    .line 14
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :cond_2
    const/4 p1, 0x0

    .line 19
    :try_start_4
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v2, "DexP.DexPatchManager"

    const-string v3, "containDexPatch: load src patch info failed"

    .line 21
    invoke-static {v2, v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->hasDexPatch()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3
    :try_start_6
    const-string p1, "DexP.DexPatchManager"

    const-string v0, "containDexPatch:  src patch null or not a dexPatch"

    .line 24
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    :try_start_7
    const-string v0, "DexP.DexPatchManager"

    const-string v2, "containDexPatch: failed "

    .line 29
    invoke-static {v0, p1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return v1

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ensureInit()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "<init>: inited, just return."

    .line 2
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-void

    :cond_0
    nop

    .line 5
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    .line 6
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "<init>: isSupported() false, just return."

    .line 7
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "<init>: PatchInfo mPatchFileDir create error."

    .line 13
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-void

    .line 16
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<init>: PatchInfo mPatchFileDir is a file, delete result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-void

    .line 22
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "<init>: PatchInfo mPatchWorkDir create error."

    .line 24
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-void

    .line 27
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<init>: PatchInfo mPatchWorkDir is a file, delete result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-void

    .line 34
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/alipay/dexpatch/util/DPCompat;->isSupported()Z

    move-result v1

    if-nez v1, :cond_6

    .line 35
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V

    const-string v0, "DexP.DexPatchManager"

    const-string v1, "<init>: setSupport(false)"

    .line 36
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-void

    .line 40
    :cond_6
    :try_start_7
    iget-object v1, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDPSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "app_version"

    const/4 v5, 0x0

    .line 42
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<init>: DexPatchManager.init(ver="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", appVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexP.DexPatchManager"

    invoke-static {v6, v5}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_9

    .line 71
    :try_start_8
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 72
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDynamicReleaseSGPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cleanDexPatch"

    .line 73
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "cleanDexPatch"

    .line 74
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {p0, v2, v2}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    .line 78
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cleanDexPatch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_9
    const-string v1, "DexP.DexPatchManager"

    const-string v2, "failed to cleanPatches"

    .line 82
    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 84
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/alipay/dexpatch/DexPatchManager;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit p0

    return-void

    .line 85
    :cond_9
    :try_start_a
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v4

    if-nez v4, :cond_c

    .line 87
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->hasPatchFile()Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v4, :cond_a

    .line 89
    :try_start_b
    invoke-virtual {p0, v0, v0}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_c
    const-string v4, "DexP.DexPatchManager"

    const-string v5, "cleanPatches when ensureInit failed."

    .line 92
    invoke-static {v4, v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    :goto_1
    if-eqz v0, :cond_b

    .line 96
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_b
    nop

    .line 98
    invoke-virtual {p0, v2}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 101
    :goto_2
    :try_start_d
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDynamicReleaseSGPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cleanDexPatch"

    .line 102
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cleanDexPatch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_e
    const-string v1, "DexP.DexPatchManager"

    const-string v2, "failed to cleanPatches"

    .line 106
    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_c
    monitor-exit p0

    return-void

    .line 0
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getDPContext()Lcom/alipay/dexpatch/DexPatchContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->j:Lcom/alipay/dexpatch/DexPatchContext;

    return-object v0
.end method

.method public declared-synchronized getPatchFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DexP.DexPatchManager"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchFromFile: path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "getPatchFromFile: isSupported()=false"

    .line 3
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v1

    .line 8
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "getPatchFromFile: src patch file is not legal, just return"

    .line 10
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 13
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {p1, v2, v3}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "getPatchFromFile: src patch file verify failed, just return"

    .line 14
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v1

    :cond_2
    nop

    .line 19
    :try_start_4
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_5
    const-string v0, "DexP.DexPatchManager"

    const-string v2, "getPatchFromFile: load src patch info failed"

    .line 21
    invoke-static {v0, p1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "getPatchFromFile:  src patchInfo null"

    .line 24
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v1

    .line 27
    :cond_3
    :try_start_6
    invoke-virtual {p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFromFile()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_7
    const-string v0, "DexP.DexPatchManager"

    const-string v2, "getPatchFromFile: failed "

    .line 29
    invoke-static {v0, p1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v1

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchWorkDir()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->g:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized hasPatchFile()Z
    .locals 6

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DexP.DexPatchManager"

    const-string v2, "hasPatchFile: isSupported()=false"

    .line 49
    invoke-static {v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    .line 56
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    .line 60
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 62
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return v1

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasPatchFile(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasPatchFile: path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile:  not inited, just return."

    .line 3
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile: isSupported()=false"

    .line 7
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v1

    .line 12
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    .line 15
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile: src patch file is not legal, just return"

    .line 17
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return v1

    .line 20
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    invoke-virtual {v2, v3, v4}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/dexpatch/patch/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile: src patch file verify failed, just return"

    .line 21
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v1

    :cond_4
    const/4 v2, 0x0

    .line 26
    :try_start_5
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_6
    const-string v4, "DexP.DexPatchManager"

    const-string v5, "hasPatchFile: load src patch info failed"

    .line 28
    invoke-static {v4, v3, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_8

    .line 30
    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->hasDexPatch()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    sget-object v3, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 35
    :try_start_7
    iget-object v4, p0, Lcom/alipay/dexpatch/DexPatchManager;->h:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 36
    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile:  mPatchInfos contains src patch, just return"

    .line 37
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v6

    .line 41
    :cond_6
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 43
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/dexpatch/DexPatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasPatchFile: patch ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is already added."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexP.DexPatchManager"

    invoke-static {v0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return v6

    :cond_7
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    .line 46
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1

    :cond_8
    const-string p1, "DexP.DexPatchManager"

    const-string v0, "hasPatchFile:  src patch null or not a dexPatch"

    .line 47
    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    monitor-exit p0

    return v1

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDebuggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->c:Z

    return v0
.end method

.method public isPureProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->m:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->k:Z

    return v0
.end method

.method public declared-synchronized loadModulePatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadModulePatch: moduleName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " classLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    if-nez v0, :cond_0

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "loadModulePatch:  not inited, just return."

    .line 6
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "loadModulePatch: isSupported()=false"

    .line 10
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 14
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/dexpatch/DexPatchManager;->b()Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    .line 16
    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 20
    invoke-virtual {v0, p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->hasModulePatch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "loadModulePatch: failed, no target module\'s patch"

    .line 21
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 24
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTargetCVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isTargetClientVersion(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_4

    :try_start_5
    const-string p1, "DexP.DexPatchManager"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "loadModulePatch: failed, not run on version:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetVersion:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTargetCVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 32
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/alipay/dexpatch/DexPatchManager;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->shouldRunOnProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v2, :cond_5

    :try_start_8
    const-string p1, "DexP.DexPatchManager"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 33
    :try_start_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loadModulePatch: failed, not run on process:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    .line 36
    :cond_5
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 38
    :try_start_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6

    .line 39
    invoke-static {}, Lcom/alipay/dexpatch/nat/DPNative;->tryHookDalvikResolveClass()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "DexP.DexPatchManager"

    const-string p2, "loadModulePatch: hookResolveClass failed, setSupport(false);"

    .line 40
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BIZ_DEXPATCH"

    const-string p2, "DP_UNSUPPORTED"

    const-string v0, "4"

    const/4 v1, 0x0

    .line 42
    invoke-static {p1, p2, v0, v1}, Lcom/alipay/dexpatch/util/DPMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/DexPatchManager;->setSupport(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-void

    .line 48
    :cond_6
    :try_start_c
    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/patch/PatchWorker;->loadModulePatch(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    return-void

    :cond_7
    :try_start_d
    const-string p1, "DexP.DexPatchManager"

    const-string p2, "loadModulePatch: failed, no usable patch"

    .line 49
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_8
    monitor-exit p0

    return-void

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onClientEvent(ILandroid/os/Bundle;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "DexP.DexPatchManager"

    const-string/jumbo p2, "onClientEvent foreground"

    .line 1
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->trigPreparePatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :try_start_1
    const-string p1, "DexP.DexPatchManager"

    const-string/jumbo p2, "onClientEvent background"

    .line 4
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/alipay/dexpatch/patch/PatchWorker;->releaseWaitingPatchPreparations()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 0
    :goto_0
    monitor-exit p0

    throw p1

    .line 5
    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setDPContext(Lcom/alipay/dexpatch/DexPatchContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->j:Lcom/alipay/dexpatch/DexPatchContext;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/alipay/dexpatch/DexPatchContext;->isPureProcess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->m:Z

    :cond_0
    return-void
.end method

.method public setDPLogger(Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPLogger;->setDPLogImpl(Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;)V

    return-void
.end method

.method public setDPMonitor(Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPMonitor;->setDPMonitorImpl(Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;)V

    return-void
.end method

.method public setSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/dexpatch/DexPatchManager;->k:Z

    return-void
.end method

.method public declared-synchronized trigPreparePatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch"

    .line 1
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/dexpatch/DexPatchManager;->l:Z

    if-nez v0, :cond_0

    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch:  not inited, just return."

    .line 3
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch: isSupported()=false"

    .line 7
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->hasPatchFile()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch: no patch file"

    .line 11
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 14
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/dexpatch/DexPatchManager;->isPureProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch: isPureProcess(), just return."

    .line 15
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 19
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/alipay/dexpatch/DexPatchManager;->b()Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/alipay/dexpatch/patch/PatchWorker;->trigPatchPreparation(Lcom/alipay/dexpatch/patch/PatchInfo;)V

    const-string v0, "DexP.DexPatchManager"

    const-string/jumbo v1, "trigPreparePatch: triggered"

    .line 21
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public triggerKillPureProcesses(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/patch/PatchInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "triggerKillPureProcesses: now="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexP.DexPatchManager"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 7
    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getPatchNames()Ljava/util/Set;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getRunningProcesses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    if-eqz p2, :cond_4

    .line 21
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alipay/dexpatch/DexPatchContext;->triggerKillPureProcesses(Ljava/util/List;)V

    return-void

    .line 23
    :cond_4
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager;->b:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPureProcessesToKill(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 27
    const-string/jumbo p2, "triggerKillPureProcesses: failed to triggerKillPureProcesses"

    invoke-static {v1, p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

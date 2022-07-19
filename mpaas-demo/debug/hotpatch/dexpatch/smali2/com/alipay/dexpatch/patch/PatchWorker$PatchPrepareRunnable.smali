.class Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;
.super Ljava/lang/Object;
.source "PatchWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/dexpatch/patch/PatchWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchPrepareRunnable"
.end annotation


# instance fields
.field private a:Lcom/alipay/dexpatch/patch/PatchInfo;


# direct methods
.method constructor <init>(Lcom/alipay/dexpatch/patch/PatchInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPrepareCalled(Z)V

    return-void
.end method


# virtual methods
.method ASSERT_VALID()V
    .locals 6

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isEliminated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isPreparing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v2

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/dexpatch/DexPatchManager;->isDebuggable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/dexpatch/util/ToolsUtil;->getSecurityChecker(Landroid/content/Context;Z)Lcom/alipay/dexpatch/patch/SecurityChecker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/dexpatch/patch/SecurityChecker;->removeFingerPrint(Ljava/io/File;)V

    .line 15
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;->isInUse()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v3

    .line 18
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 19
    iget-object v5, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v5, v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/dexpatch/DexPatchManager;->getPatchWorkDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3, v1, v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->listAllFiles(Ljava/io/File;Ljava/util/List;Ljava/util/List;Z)V

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    invoke-static {}, Lcom/alipay/dexpatch/util/ThreadUtil;->getFileExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;

    invoke-direct {v2, p0, v3}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;-><init>(Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 37
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V

    goto :goto_1

    .line 42
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/alipay/dexpatch/DexPatchManager;->triggerKillPureProcesses(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    const-string v2, "PatchPrepareRunnable"

    .line 45
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ASSERT_VALID: failed to delete file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ASSERT_VALID: failed to delete file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_4
    invoke-static {}, Lcom/alipay/dexpatch/util/ToolsUtil;->getInstance()Lcom/alipay/dexpatch/util/ToolsUtil;

    move-result-object v1

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/dexpatch/util/ToolsUtil;->recordPatchFileToDelete(Landroid/content/Context;Ljava/io/File;)V

    .line 91
    :cond_5
    :goto_1
    new-instance v1, Lcom/alipay/dexpatch/exception/DPException;

    const-string v2, "PatchPrepareRunnable: eliminated"

    invoke-direct {v1, v2}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->waitForPrepareDelayTime()V

    .line 3
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V

    .line 5
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-static {v4, v3}, Lcom/alipay/dexpatch/patch/PatchWorker;->checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V

    .line 16
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-static {v4, v5, v3}, Lcom/alipay/dexpatch/patch/DexWorker;->prepareDexFiles(Landroid/content/Context;Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "PatchPrepareRunnable"

    const-string v4, "PatchPrepareRunnable: addPatch: prepareDexFiles failed"

    .line 17
    invoke-static {v2, v4}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v2, Lcom/alipay/dexpatch/exception/DPException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PatchPrepareRunnable: DexWorker.prepareDexFiles failed for module="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_2
    const-string v2, "PatchPrepareRunnable"

    .line 23
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "run: no modules in this patch, patchTime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 26
    :cond_3
    sget-object v2, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 32
    :try_start_2
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 34
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    :goto_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    iget-object v6, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-static {v6, v5}, Lcom/alipay/dexpatch/patch/PatchWorker;->checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 34
    :cond_5
    move v1, v4

    goto :goto_3

    .line 35
    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v1, v3

    const/4 v4, 0x1

    :goto_2
    :try_start_4
    const-string v3, "PatchPrepareRunnable"

    const-string v5, "check after prepare failed"

    .line 39
    invoke-static {v3, v1, v5}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move v1, v4

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 42
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/dexpatch/DexPatchContext;->onPatchPrepared(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/dexpatch/DexPatchContext;->triggerKillProcess()V

    .line 45
    :cond_7
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1, v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPrepareCalled(Z)V

    .line 46
    # getter for: Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/dexpatch/patch/PatchWorker;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v0, "PatchPrepareRunnable"

    .line 47
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preparePatch remove sPreparingPatches: patchInfo"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V

    .line 49
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    .line 50
    sget-object v3, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_6
    iget-object v4, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 58
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v5, 0x1

    :goto_4
    :try_start_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    iget-object v7, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-static {v7, v6}, Lcom/alipay/dexpatch/patch/PatchWorker;->checkModulePrepared(Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .line 58
    :cond_9
    move v1, v5

    goto :goto_6

    .line 59
    :catchall_4
    move-exception v1

    goto :goto_5

    :catchall_5
    move-exception v4

    move-object v1, v4

    const/4 v5, 0x1

    :goto_5
    :try_start_8
    const-string v4, "PatchPrepareRunnable"

    const-string v6, "check after prepare failed"

    .line 63
    invoke-static {v4, v1, v6}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move v1, v5

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 66
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v4}, Lcom/alipay/dexpatch/patch/PatchInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/dexpatch/DexPatchContext;->onPatchPrepared(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/dexpatch/DexPatchContext;->triggerKillProcess()V

    .line 69
    :cond_b
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1, v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPrepareCalled(Z)V

    .line 70
    # getter for: Lcom/alipay/dexpatch/patch/PatchWorker;->a:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/dexpatch/patch/PatchWorker;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    const-string v0, "PatchPrepareRunnable"

    .line 71
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preparePatch remove sPreparingPatches: patchInfo"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->a:Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V

    .line 73
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v2

    :catchall_6
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0
.end method

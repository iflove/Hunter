.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCCore$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecompressCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uc/webview/export/extension/UCCore$Callable<",
        "Ljava/lang/Boolean;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;->mContext:Landroid/content/Context;

    .line 355
    return-void
.end method


# virtual methods
.method public call(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decompress parameters:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5UcService"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v4, "init7zSo"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 361
    const-string v0, "init7zSoStart"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 362
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 364
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/.init7zSo.lock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 366
    .local v7, "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    :try_start_0
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lock()V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 368
    .local v8, "time":J
    iget-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;->mContext:Landroid/content/Context;

    const-string v10, "h5container"

    invoke-virtual {v0, v10, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 369
    .local v0, "h5Container":Ljava/io/File;
    const-string v10, "init7zSo begin"

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->logFolderTree(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    const-string v10, "init7zSoUnzip"

    invoke-static {v10}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 373
    const-string v10, "init on main process, mark uc not init!"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v10, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    invoke-static {v10, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 376
    :cond_0
    const-string v10, "decDirPath"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "decDirPath":Ljava/lang/String;
    const-string v11, "zipFilePath"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 378
    .local v11, "zipFilePath":Ljava/lang/String;
    const-string v12, "zipFileType"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 379
    .local v12, "zipFileType":Ljava/lang/String;
    const-string v13, "deleteAfterExtract"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 380
    .local v13, "deleteAfterExtract":Z
    const-string v14, "has_extract_7zso"

    const-string v15, "true"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v14, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;->mContext:Landroid/content/Context;

    invoke-static {v14, v11, v12, v10, v13}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 384
    .local v14, "hasextract":Z
    const-string v15, "init7zSo end"

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->logFolderTree(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v5, v15, v8

    .line 386
    .local v5, "delta":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "h5Container":Ljava/io/File;
    .local v16, "h5Container":Ljava/io/File;
    const-string v0, "init7zSo elapse "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "ucInit|init7zSo"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 397
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v4, v15, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 398
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 390
    return-object v0

    .line 396
    .end local v5    # "delta":J
    .end local v8    # "time":J
    .end local v10    # "decDirPath":Ljava/lang/String;
    .end local v11    # "zipFilePath":Ljava/lang/String;
    .end local v12    # "zipFileType":Ljava/lang/String;
    .end local v13    # "deleteAfterExtract":Z
    .end local v14    # "hasextract":Z
    .end local v16    # "h5Container":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "catch exception "

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 394
    nop

    .end local v7    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    .end local p1    # "bundle":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 397
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 398
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;->call(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

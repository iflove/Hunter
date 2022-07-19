.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->deleteUCCoreFilesOnInitSuccess(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unzipTargetParentDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;->val$unzipTargetParentDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 445
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sDecompressCoreFilesLock:Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 448
    .local v1, "start":J
    const/4 v3, 0x0

    .line 449
    .local v3, "lastVersionUCCoreDirFile":Ljava/io/File;
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDirFromAPSP()Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$300()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "lastVersionUCCoreDirPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v5, "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    move-object v3, v5

    .line 455
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_0
    const-string v5, "H5UcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteUCCoreFiles "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 458
    const-string v5, "H5UcService"

    const-string v6, "deleteUCCoreFiles recursiveDelete"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;->val$unzipTargetParentDir:Ljava/io/File;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 462
    :cond_1
    const-string v5, "H5UcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteUCCoreFiles elapse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v1    # "start":J
    .end local v3    # "lastVersionUCCoreDirFile":Ljava/io/File;
    .end local v4    # "lastVersionUCCoreDirPath":Ljava/lang/String;
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public Lcom/alipay/mobile/common/logging/uploader/RpcUploader;
.super Lcom/alipay/mobile/common/logging/uploader/BaseUploader;
.source "RpcUploader.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .param p1, "UploadFileDir"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "logCategory"    # Ljava/lang/String;

    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p1, v0

    .line 478
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doDegradeUploadByLogCategory logCategory = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x1

    const-string v1, "isDegradeUpload"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    new-instance v0, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/alipay/mobile/common/logging/uploader/HttpUploader;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 383
    if-eqz p1, :cond_5

    .line 389
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 392
    nop

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogUploadRpcClient()Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_3

    .line 404
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    new-instance v3, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;

    invoke-direct {v3}, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;-><init>()V

    .line 406
    iput-object p2, v3, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;->bizCode:Ljava/lang/String;

    .line 408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    const-string v5, "\\$\\$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 410
    array-length v5, v0

    .line 411
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 412
    aget-object v7, v0, v6

    invoke-static {v7}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iput-object v4, v3, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;->log:Ljava/util/List;

    .line 416
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v0, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;-><init>()V

    .line 418
    iput-object v2, v0, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;->logs:Ljava/util/List;

    .line 419
    invoke-interface {v1, v0, p3, p4}, Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;->uploadLog(Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;

    move-result-object p3

    .line 420
    if-nez p3, :cond_1

    .line 421
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    sget-object p3, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string/jumbo v0, "rpc upload fail result is null"

    invoke-interface {p1, p3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, p4, p2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 423
    return-void

    .line 424
    :cond_1
    iget v0, p3, Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;->respCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p3

    sget-object v0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rpc upload success category = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 448
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception p1

    .line 450
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "delete file error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 427
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rpc upload fail respCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;->respCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resp des = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p4, p2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 430
    return-void

    .line 432
    :catchall_1
    move-exception p1

    .line 433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p3

    sget-object v0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string/jumbo v1, "rpc upload error,do upload by http"

    invoke-interface {p3, v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-direct {p0, p4, p2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 435
    return-void

    .line 442
    :cond_3
    invoke-direct {p0, p4, p2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 443
    return-void

    .line 395
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 396
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file content is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :catchall_2
    move-exception p1

    .line 391
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "read file error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 384
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "file object is NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;)V
    .locals 7
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadFiles"    # [Ljava/io/File;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "mergeUploadFiles":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_4

    .line 75
    aget-object v4, p2, v1

    .line 76
    .local v2, "file":Ljava/io/File;
    move-object v2, v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v3, "fileLogCategory":Ljava/lang/String;
    move-object v3, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isRealTimeLogCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogSend(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    nop

    .end local v3    # "fileLogCategory":Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    .line 97
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v3    # "tr":Ljava/lang/Throwable;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "index":I
    :cond_4
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/util/List;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "target "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " merge uploadLog end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadFiles"    # [Ljava/io/File;
    .param p3, "bundle"    # Landroid/os/Bundle;

    const-string v0, "event"

    .line 346
    const/4 v1, 0x0

    .local v1, "realUploadCount":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 349
    .local v3, "lastErrorMessage":Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    .end local v3    # "lastErrorMessage":Ljava/lang/String;
    .local v4, "lastErrorMessage":Ljava/lang/String;
    .local v5, "index":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_3

    .line 350
    aget-object v6, p2, v5

    .line 351
    .local v2, "file":Ljava/io/File;
    move-object v2, v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "fileName":Ljava/lang/String;
    move-object v7, p1

    .line 357
    .local v7, "sendCategory":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v8

    invoke-virtual {v8, v6, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogSend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    move-object v7, v8

    if-nez v8, :cond_0

    .line 359
    goto :goto_1

    .line 362
    :cond_0
    const-string v3, "default"

    .line 363
    .local v3, "event":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 364
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 366
    :cond_1
    invoke-direct {p0, v2, v7, v3, p3}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " uploadByCategory upload success: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " event = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    nop

    .end local v3    # "event":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 376
    goto :goto_1

    .line 372
    :catchall_0
    move-exception v8

    .local v3, "tr":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " uploadByCategory failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "tr":Ljava/lang/Throwable;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "sendCategory":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 379
    .end local v5    # "index":I
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadByCategory end, realUploadCount: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 18
    .param p1, "mergeUploadFiles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 113
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string/jumbo v3, "uploadMergeFile files is empty"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    .local v0, "logCount":Ljava/lang/Integer;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, "partUploadFiles":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, "logDataList":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogUploadRpcClient()Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 122
    .local v8, "rpcClient":Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    move-object v8, v6

    if-nez v6, :cond_1

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string v7, "getRpcClient = null do http upload"

    invoke-interface {v2, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b(Ljava/util/List;)V

    .line 125
    return-void

    .line 127
    :cond_1
    const/4 v6, 0x0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v11

    .end local v0    # "logCount":Ljava/lang/Integer;
    .local v4, "logCount":Ljava/lang/Integer;
    .local v5, "partUploadFiles":Ljava/util/List;
    .local v6, "logDataList":Ljava/util/List;
    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_9

    .line 129
    move-object/from16 v12, p1

    :try_start_0
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 130
    .local v0, "logFile":Ljava/io/File;
    move-object v14, v13

    .end local v0    # "logFile":Ljava/io/File;
    .local v14, "logFile":Ljava/io/File;
    if-eqz v13, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_2

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 136
    .local v9, "logContent":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v14}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .line 139
    nop

    .line 141
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 146
    const-string v0, "\\$\\$"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v10, "logsStr":[Ljava/lang/String;
    move-object v10, v0

    array-length v0, v0

    .line 150
    .local v0, "len":I
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    const/16 v15, 0x64

    if-nez v13, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v0

    if-lt v13, v15, :cond_3

    .line 151
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v1, v5, v6, v8, v13}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;I)V

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v4, v13

    .line 153
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v13

    .line 154
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v13

    .line 158
    .end local v9    # "logContent":Ljava/lang/String;
    .end local v10    # "logsStr":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, "logCategory":Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;-><init>()V

    .line 160
    .local v11, "logData":Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;
    move-object v11, v2

    iput-object v13, v2, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;->bizCode:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "logs":Ljava/util/List;
    array-length v15, v10

    move v0, v15

    .line 164
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v0, :cond_5

    .line 165
    aget-object v16, v10, v15

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 168
    aget-object v16, v10, v15

    move/from16 v17, v0

    .end local v0    # "len":I
    .local v17, "len":I
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v11    # "logData":Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;
    .end local v17    # "len":I
    .restart local v0    # "len":I
    :cond_4
    move/from16 v17, v0

    .line 164
    .end local v0    # "len":I
    .restart local v17    # "len":I
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    goto :goto_1

    .end local v17    # "len":I
    .restart local v0    # "len":I
    :cond_5
    move/from16 v17, v0

    .line 170
    .end local v0    # "len":I
    .end local v15    # "j":I
    .restart local v17    # "len":I
    iput-object v2, v11, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;->log:Ljava/util/List;

    .line 172
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 175
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v15, 0x64

    if-lt v0, v15, :cond_6

    .line 177
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v5, v6, v8, v0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    const/4 v15, 0x0

    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    goto :goto_3

    .line 176
    :cond_6
    const/4 v15, 0x0

    .line 185
    .end local v2    # "logs":Ljava/util/List;
    .end local v13    # "logCategory":Ljava/lang/String;
    .end local v14    # "logFile":Ljava/io/File;
    .end local v17    # "len":I
    :goto_3
    move-object v0, v14

    goto :goto_6

    .line 142
    .restart local v14    # "logFile":Ljava/io/File;
    :cond_7
    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "file content is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "length":I
    .end local v4    # "logCount":Ljava/lang/Integer;
    .end local v5    # "partUploadFiles":Ljava/util/List;
    .end local v6    # "logDataList":Ljava/util/List;
    .end local v7    # "i":I
    .end local v8    # "rpcClient":Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .end local p1    # "mergeUploadFiles":Ljava/util/List;
    throw v0

    .line 137
    .restart local v3    # "length":I
    .restart local v4    # "logCount":Ljava/lang/Integer;
    .restart local v5    # "partUploadFiles":Ljava/util/List;
    .restart local v6    # "logDataList":Ljava/util/List;
    .restart local v7    # "i":I
    .restart local v8    # "rpcClient":Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .restart local v9    # "logContent":Ljava/lang/String;
    .restart local p1    # "mergeUploadFiles":Ljava/util/List;
    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    move-object v2, v0

    move-object v10, v2

    .line 138
    .local v10, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "read file error: "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "length":I
    .end local v4    # "logCount":Ljava/lang/Integer;
    .end local v5    # "partUploadFiles":Ljava/util/List;
    .end local v6    # "logDataList":Ljava/util/List;
    .end local v7    # "i":I
    .end local v8    # "rpcClient":Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .end local p1    # "mergeUploadFiles":Ljava/util/List;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    .end local v9    # "logContent":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v14    # "logFile":Ljava/io/File;
    .restart local v3    # "length":I
    .restart local v4    # "logCount":Ljava/lang/Integer;
    .restart local v5    # "partUploadFiles":Ljava/util/List;
    .restart local v6    # "logDataList":Ljava/util/List;
    .restart local v7    # "i":I
    .restart local v8    # "rpcClient":Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .restart local p1    # "mergeUploadFiles":Ljava/util/List;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 130
    .restart local v14    # "logFile":Ljava/io/File;
    :cond_8
    const/4 v15, 0x0

    .line 131
    :goto_4
    move-object v0, v14

    goto :goto_6

    .line 183
    .end local v14    # "logFile":Ljava/io/File;
    :catchall_2
    move-exception v0

    const/4 v15, 0x0

    .line 184
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v13, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    invoke-interface {v2, v13, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v12, p1

    .line 188
    .end local v7    # "i":I
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 189
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v5, v6, v8, v0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;I)V

    .line 191
    :cond_a
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;I)V
    .locals 8
    .param p1, "partUploadFiles"    # Ljava/util/List;
    .param p2, "logDataList"    # Ljava/util/List;
    .param p3, "rpcClient"    # Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .param p4, "logCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/api/rpc/RpcLogData;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;",
            "I)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 196
    .local v2, "param":Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;
    move-object v2, v0

    iput-object p2, v0, Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;->logs:Ljava/util/List;

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 198
    .local v0, "len":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doMergeUpload start, files count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " logCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 201
    .local v3, "result":Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;
    :try_start_0
    const-string/jumbo v4, "merge"

    invoke-interface {p3, v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;->uploadLog(Lcom/alipay/mobile/common/logging/api/rpc/RpcLogRequestParam;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;

    move-result-object v1

    move-object v3, v1

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "doMergeUpload success, files count = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    nop

    .line 208
    if-eqz v3, :cond_1

    iget v1, v3, Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;->respCode:I

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_1

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v4

    .line 209
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b(Ljava/util/List;)V

    .line 219
    return-void

    .line 203
    :catchall_1
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b(Ljava/util/List;)V

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "item"    # Ljava/lang/String;

    .line 455
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    return-object p0

    .line 458
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 459
    .local v2, "client":Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 460
    return-object p0

    .line 462
    :cond_1
    const-string v0, "1_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v1, "deItem":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    return-object v1

    .line 467
    :cond_2
    return-object p0

    .line 470
    .end local v1    # "deItem":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 24
    .param p1, "partUploadFiles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 224
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 226
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cleanExpiresFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 233
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doDegradeUploadByFiles will upload, count of all mdap files: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "realUploadCount":I
    const-wide/16 v2, 0x0

    .line 237
    .local v2, "realReqSize":J
    const-wide/16 v4, 0x0

    .line 239
    .local v4, "realRespSize":J
    const/4 v6, 0x0

    .line 240
    .local v6, "errorUploadCount":I
    const/4 v7, 0x0

    .line 242
    .local v7, "lastErrorMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 243
    .local v8, "logCategoryDetail":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 245
    .local v9, "traficLimited":Ljava/util/Set;
    const/4 v10, 0x0

    .local v10, "index":I
    move-wide v12, v2

    move-wide v14, v4

    move v3, v10

    const/4 v4, 0x0

    move v2, v0

    move v10, v6

    const/4 v0, 0x0

    move-object/from16 v23, v9

    move-object v9, v7

    move-object/from16 v7, v23

    .end local v0    # "realUploadCount":I
    .end local v4    # "realRespSize":J
    .end local v6    # "errorUploadCount":I
    .local v2, "realUploadCount":I
    .local v3, "index":I
    .local v7, "traficLimited":Ljava/util/Set;
    .local v9, "lastErrorMessage":Ljava/lang/String;
    .local v10, "errorUploadCount":I
    .local v12, "realReqSize":J
    .local v14, "realRespSize":J
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "&"

    if-ge v3, v5, :cond_9

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 247
    .local v0, "file":Ljava/io/File;
    move-object/from16 v16, v5

    .end local v0    # "file":Ljava/io/File;
    .local v16, "file":Ljava/io/File;
    if-eqz v5, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v4, "fileName":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "logCategory":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogSend(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v0, :cond_1

    .line 255
    goto :goto_2

    .line 258
    :cond_1
    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " previous has occured MdapTrafficException, so this uploading is limited and not performed"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    nop

    .line 245
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "logCategory":Ljava/lang/String;
    .end local v16    # "file":Ljava/io/File;
    :goto_2
    move/from16 v20, v3

    move-object/from16 v19, v16

    goto/16 :goto_5

    .line 281
    .restart local v5    # "logCategory":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v16

    move-object/from16 v16, v9

    goto/16 :goto_4

    .line 265
    :cond_2
    :try_start_3
    const-string v0, "degrade"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 266
    .local v0, "event":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v1, "file":Ljava/io/File;
    .local v16, "lastErrorMessage":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v11, v1, v5, v9, v0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v17

    move-object/from16 v18, v17

    .line 268
    .local v18, "uploadSize":Landroid/util/Pair;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v1

    .end local v1    # "file":Ljava/io/File;
    .local v19, "file":Ljava/io/File;
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v20, v3

    .end local v3    # "index":I
    .local v20, "index":I
    :try_start_6
    const-string v3, " doDegradeUploadByFiles upload success: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    .line 271
    move-object/from16 v1, v18

    .end local v18    # "uploadSize":Landroid/util/Pair;
    .local v1, "uploadSize":Landroid/util/Pair;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    add-long v12, v12, v21

    .line 272
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    add-long v14, v14, v21

    .line 274
    if-nez v8, :cond_3

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    goto :goto_3

    .line 277
    :cond_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 300
    move-object/from16 v9, v16

    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "uploadSize":Landroid/util/Pair;
    goto/16 :goto_5

    .line 281
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v20    # "index":I
    .restart local v3    # "index":I
    :catchall_3
    move-exception v0

    move/from16 v20, v3

    .end local v3    # "index":I
    .restart local v20    # "index":I
    goto :goto_4

    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "index":I
    .local v1, "file":Ljava/io/File;
    .restart local v3    # "index":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v20, v3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "index":I
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "index":I
    goto :goto_4

    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "index":I
    .restart local v3    # "index":I
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v16, "file":Ljava/io/File;
    :catchall_5
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v16

    move-object/from16 v16, v9

    .line 282
    .end local v3    # "index":I
    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v0, "tr":Ljava/lang/Throwable;
    .local v16, "lastErrorMessage":Ljava/lang/String;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "index":I
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v16    # "lastErrorMessage":Ljava/lang/String;
    .local v1, "lastErrorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " doDegradeUploadByFiles failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    if-ne v10, v3, :cond_5

    .line 288
    instance-of v3, v0, Ljava/lang/NullPointerException;

    if-nez v3, :cond_4

    .line 289
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/NullPointerException;

    if-eqz v3, :cond_5

    .line 290
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string/jumbo v9, "uploadLog"

    invoke-interface {v3, v6, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_5
    instance-of v3, v0, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;

    if-eqz v3, :cond_7

    .line 295
    if-nez v7, :cond_6

    .line 296
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v7, v3

    .line 298
    :cond_6
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v9, v1

    goto :goto_5

    .line 294
    :cond_7
    move-object v9, v1

    goto :goto_5

    .line 247
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local v1    # "lastErrorMessage":Ljava/lang/String;
    .end local v5    # "logCategory":Ljava/lang/String;
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "index":I
    .restart local v3    # "index":I
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v16, "file":Ljava/io/File;
    :cond_8
    move/from16 v20, v3

    move-object/from16 v19, v16

    move-object/from16 v16, v9

    .line 245
    .end local v3    # "index":I
    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v16, "lastErrorMessage":Ljava/lang/String;
    .restart local v20    # "index":I
    move-object/from16 v9, v16

    .end local v16    # "lastErrorMessage":Ljava/lang/String;
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    :goto_5
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v19

    .end local v20    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_1

    :cond_9
    move/from16 v20, v3

    move-object/from16 v16, v9

    .line 304
    .end local v3    # "index":I
    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .restart local v16    # "lastErrorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doDegradeUploadByFiles end, realUploadCount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-nez v2, :cond_b

    .line 307
    if-lez v10, :cond_a

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errorUploadCount, all the uploading are failed ! lastErrorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v16

    .end local v16    # "lastErrorMessage":Ljava/lang/String;
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 307
    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .restart local v16    # "lastErrorMessage":Ljava/lang/String;
    :cond_a
    move-object/from16 v9, v16

    .line 311
    .end local v16    # "lastErrorMessage":Ljava/lang/String;
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    :goto_6
    return-void

    .line 314
    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .restart local v16    # "lastErrorMessage":Ljava/lang/String;
    :cond_b
    move-object/from16 v9, v16

    .end local v16    # "lastErrorMessage":Ljava/lang/String;
    .restart local v9    # "lastErrorMessage":Ljava/lang/String;
    if-nez v8, :cond_c

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    goto :goto_7

    .line 317
    :cond_c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v8

    .line 326
    .end local v8    # "logCategoryDetail":Ljava/lang/StringBuilder;
    .local v1, "logCategoryDetail":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, "categories":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v0, "logHost":Ljava/lang/String;
    move-object v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string v5, "doDegradeUploadByFiles dataflow: logHost is empty."

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void

    .line 332
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/loggw/logUpload.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "mdapUrl":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MDAP_LOG:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-object/from16 v4, v16

    move-wide v5, v12

    move-object/from16 v17, v7

    .end local v7    # "traficLimited":Ljava/util/Set;
    .local v17, "traficLimited":Ljava/util/Set;
    move-wide v7, v14

    move-object/from16 v18, v9

    .end local v9    # "lastErrorMessage":Ljava/lang/String;
    .local v18, "lastErrorMessage":Ljava/lang/String;
    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v3

    .line 336
    .local v3, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    sget-object v4, Lcom/alipay/mobile/common/logging/process/VariableStoreInToolsProcess;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 337
    sget-object v4, Lcom/alipay/mobile/common/logging/process/VariableStoreInToolsProcess;->d:Ljava/lang/String;

    const-string v5, "invokerProc"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 339
    :cond_e
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    .line 340
    return-void

    .line 230
    .end local v0    # "logHost":Ljava/lang/String;
    .end local v1    # "logCategoryDetail":Ljava/lang/StringBuilder;
    .end local v2    # "realUploadCount":I
    .end local v3    # "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .end local v10    # "errorUploadCount":I
    .end local v11    # "categories":Ljava/lang/String;
    .end local v12    # "realReqSize":J
    .end local v14    # "realRespSize":J
    .end local v16    # "mdapUrl":Ljava/lang/String;
    .end local v17    # "traficLimited":Ljava/util/Set;
    .end local v18    # "lastErrorMessage":Ljava/lang/String;
    :cond_f
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    const-string v2, "doDegradeUploadByFiles do not need upload"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanExpiresFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    .line 47
    .local v0, "isMergeUpload":Z
    if-eqz p2, :cond_0

    .line 48
    const/4 v1, 0x0

    const-string v2, "isMergeUpload"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    .local v2, "uploadFiles":[Ljava/io/File;
    move-object v2, v1

    if-eqz v1, :cond_3

    array-length v1, v2

    if-nez v1, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will upload, count of all mdap files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isMerge = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;[Ljava/io/File;)V

    return-void

    .line 61
    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a(Ljava/lang/String;[Ljava/io/File;Landroid/os/Bundle;)V

    .line 63
    return-void

    .line 53
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/logging/uploader/RpcUploader;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " do not need upload RpcUploader"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

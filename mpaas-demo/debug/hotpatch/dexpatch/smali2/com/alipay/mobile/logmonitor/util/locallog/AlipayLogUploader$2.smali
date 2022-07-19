.class final Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

.field private f:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->f:I

    .line 358
    const-string v2, ", upload message: "

    const-string v3, ", error count: "

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NET_NOT_MATCH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    if-eq p1, v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_UPLOADING_RETRY:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uploadCoreForRetry wait 30s"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 369
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->d:Ljava/util/HashMap;

    invoke-static {v1, v2, p0, v3, v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/io/File;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/util/Map;Ljava/lang/String;)V

    .line 370
    return-void

    .line 373
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->b:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "upload error to move zip file"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 387
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "upload success to move zip file"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    if-eqz v0, :cond_5

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->randomInteger(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "suffix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 326
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;->e:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v4}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 327
    .local v2, "origin":Ljava/io/File;
    move-object v2, v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v3, "path":Ljava/lang/String;
    move-object v3, v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pzt.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 336
    :cond_2
    const-string v4, ".2nd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pzt.2nd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 341
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pzt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v4, "target":Ljava/io/File;
    :try_start_1
    invoke-static {v2, v4}, Lcom/alipay/mobile/monitor/util/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    goto :goto_3

    .line 347
    :catchall_1
    move-exception v5

    .line 348
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "upload success to rename positive files"

    invoke-interface {v6, v7, v8, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .end local v2    # "origin":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "target":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 352
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

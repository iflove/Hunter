.class public Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;
.super Ljava/lang/Object;
.source "FileRetriever.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->b:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;
    .locals 2

    const-class v0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->b:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;-><init>()V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->b:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    .line 41
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->b:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized startFileRetrieve(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p3, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    monitor-enter p0

    .line 85
    if-eqz p1, :cond_a

    :try_start_0
    iget-object v0, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 89
    :cond_0
    const-string v0, "[FileRetriever.startFileRetrieve] "

    move-object v10, v0

    .line 90
    .local v10, "messagePrefix":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v2, v11

    .line 92
    .local v2, "file":Ljava/io/File;
    move-object v12, v0

    .end local v2    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    if-eqz v9, :cond_1

    .line 94
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;
    :cond_1
    monitor-exit p0

    return-void

    .line 98
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    if-eqz v9, :cond_3

    .line 100
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :cond_3
    monitor-exit p0

    return-void

    .line 105
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_ZIPPING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v0, v8, v2, v3}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v11

    .line 109
    .local v2, "uploadFiles":Ljava/util/List;
    move-object v13, v0

    .end local v2    # "uploadFiles":Ljava/util/List;
    .local v13, "uploadFiles":Ljava/util/List;
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v11

    .line 117
    .local v2, "zipFile":Ljava/io/File;
    move-object v14, v0

    .end local v2    # "zipFile":Ljava/io/File;
    .local v14, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v15, v0

    .line 120
    .local v15, "zipFilePath":Ljava/lang/String;
    :try_start_3
    invoke-static {v13, v15, v11, v11}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    nop

    .line 142
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    goto :goto_0

    .line 150
    :cond_5
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    new-instance v7, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;

    invoke-direct {v7, v1, v9, v15, v8}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;-><init>(Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    move-object v2, v11

    .line 176
    .local v2, "uploader":Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "zippedLength: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    monitor-exit p0

    return-void

    .line 143
    .end local v2    # "uploader":Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
    .end local v4    # "url":Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v9, :cond_7

    .line 144
    :try_start_5
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "zippedFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist OR is not file OR is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    :cond_7
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v11

    .line 129
    .local v2, "message":Ljava/lang/String;
    :try_start_6
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    const-string v3, "[no files to upload] contains none file."

    move-object v2, v3

    goto :goto_1

    .line 132
    :cond_8
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 134
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v9, :cond_9

    .line 137
    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    :cond_9
    monitor-exit p0

    return-void

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    .end local v10    # "messagePrefix":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "uploadFiles":Ljava/util/List;
    .end local v14    # "zipFile":Ljava/io/File;
    .end local v15    # "zipFilePath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local p3    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .restart local p3    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :cond_a
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startFileRetrieve(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # Ljava/util/List;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 45
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 50
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startFileRetrieve manual for file:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "extraInfo"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    .local v4, "extraInfo":Ljava/lang/String;
    const-string v5, "deleteWhenSuccess"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 53
    .local v5, "deleteWhenSuccess":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {v6}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;-><init>()V

    .line 54
    .local v1, "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    move-object v1, v6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    .line 55
    const-string/jumbo v6, "manual"

    iput-object v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->b:Ljava/lang/String;

    .line 56
    const-string/jumbo v6, "retrieveFile"

    iput-object v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    .line 60
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object v2, v6

    iget-wide v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "fromTime":Ljava/lang/String;
    iget-wide v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "toTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 64
    const-string v8, "any"

    iput-object v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->e:Ljava/lang/String;

    .line 65
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    .line 66
    sget-object v9, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 67
    iput-boolean v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    .line 68
    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    iput-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->q:Ljava/lang/String;

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    .line 71
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 72
    iput-boolean v8, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->o:Z

    .line 75
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;

    invoke-direct {v9, p0, p1, v1}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;-><init>(Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V

    invoke-virtual {v8, v9}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v1    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "extraInfo":Ljava/lang/String;
    .end local v5    # "deleteWhenSuccess":Ljava/lang/String;
    .end local v6    # "fromTime":Ljava/lang/String;
    .end local v7    # "toTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 82
    :cond_2
    monitor-exit p0

    return-void

    .line 46
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->a:Ljava/lang/String;

    const-string/jumbo v2, "startFileRetrieve manual got unexpected params. We just return."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "files":Ljava/util/List;
    .end local p3    # "params":Ljava/util/Map;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

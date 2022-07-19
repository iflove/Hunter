.class public Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;
.super Ljava/lang/Object;
.source "StackTracer.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;
    .locals 2

    const-class v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;-><init>()V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    .line 29
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p3, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    monitor-enter p0

    .line 33
    if-eqz v8, :cond_a

    :try_start_0
    iget-object v0, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v11, v2

    .line 38
    .local v11, "startTime":J
    iget-object v0, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 39
    .local v3, "stackDir":Ljava/io/File;
    move-object v13, v0

    .end local v3    # "stackDir":Ljava/io/File;
    .local v13, "stackDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_SDCARD:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v2, "[StackTracer.startStackTracer] has no sdcard"

    invoke-interface {v10, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;
    :cond_1
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 50
    .local v14, "uploadFiles":Ljava/util/ArrayList;
    const/4 v0, 0x1

    move v3, v0

    move-object v0, v2

    .line 51
    .local v3, "count":I
    :goto_0
    iget-wide v4, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v6, v11

    cmp-long v15, v4, v6

    if-ltz v15, :cond_6

    const/16 v4, 0x64

    if-ge v3, v4, :cond_6

    .line 54
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->acquireThreadsStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "stack":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "tracer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startStackTracer"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .local v4, "curLogFileName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 59
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v5, "tagFile":Ljava/io/File;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v15, v3

    .end local v3    # "count":I
    .local v15, "count":I
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v5, v2, v3}, Lcom/alipay/mobile/monitor/util/FileUtils;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 61
    .end local v15    # "count":I
    .restart local v3    # "count":I
    :cond_4
    move v15, v3

    .line 64
    .end local v3    # "count":I
    .restart local v15    # "count":I
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_5
    iget-wide v2, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->m:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .end local v0    # "stack":Ljava/lang/String;
    .end local v4    # "curLogFileName":Ljava/lang/String;
    .end local v5    # "tagFile":Ljava/io/File;
    move v3, v15

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v0

    move v3, v15

    goto :goto_2

    .end local v15    # "count":I
    .restart local v3    # "count":I
    :catch_1
    move-exception v0

    move v15, v3

    .end local v3    # "count":I
    .restart local v15    # "count":I
    goto :goto_2

    .end local v15    # "count":I
    .restart local v3    # "count":I
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "tracer"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v15, v3

    goto :goto_3

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v15, v3

    .end local v3    # "count":I
    .restart local v15    # "count":I
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v2, "[StackTracer.startStackTracer] uploadFiles is null"

    invoke-interface {v10, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    monitor-exit p0

    return-void

    .line 81
    :cond_7
    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "zipFile":Ljava/io/File;
    move-object/from16 v16, v2

    .end local v0    # "zipFile":Ljava/io/File;
    .local v16, "zipFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v0

    .line 85
    .local v6, "zipFilePath":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v14, v6, v2, v2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 98
    nop

    .line 100
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 102
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[StackTracer.startStackTracer] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 104
    monitor-exit p0

    return-void

    .line 107
    :cond_8
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    new-instance v7, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;

    invoke-direct {v7, v1, v10, v6}, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;-><init>(Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v6

    move-object/from16 v5, p1

    move-object/from16 v17, v6

    .end local v6    # "zipFilePath":Ljava/lang/String;
    .local v17, "zipFilePath":Ljava/lang/String;
    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->run()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 126
    monitor-exit p0

    return-void

    .line 86
    .end local v4    # "url":Ljava/lang/String;
    .end local v17    # "zipFilePath":Ljava/lang/String;
    .restart local v6    # "zipFilePath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    move-object v2, v0

    .end local v6    # "zipFilePath":Ljava/lang/String;
    .restart local v17    # "zipFilePath":Ljava/lang/String;
    move-object v0, v2

    const/4 v2, 0x0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    .local v2, "message":Ljava/lang/String;
    :try_start_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 89
    const-string v3, "[no files to upload] contains none file."

    move-object v2, v3

    goto :goto_4

    .line 91
    :cond_9
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 93
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "tracer"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[StackTracer.startStackTracer] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 97
    monitor-exit p0

    return-void

    .line 32
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    .end local v11    # "startTime":J
    .end local v13    # "stackDir":Ljava/io/File;
    .end local v14    # "uploadFiles":Ljava/util/ArrayList;
    .end local v15    # "count":I
    .end local v16    # "zipFile":Ljava/io/File;
    .end local v17    # "zipFilePath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local p3    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 34
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .restart local p3    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :cond_a
    :goto_5
    monitor-exit p0

    return-void
.end method

.class public Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;
.super Ljava/lang/Object;
.source "AnrTracer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;
    .locals 2

    const-class v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->b:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;-><init>()V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->b:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    .line 30
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->b:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;ZLcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDumpLastAnr"    # Z
    .param p3, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p4, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-object v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    monitor-enter p0

    .line 34
    if-eqz v8, :cond_7

    :try_start_0
    iget-object v0, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 38
    :cond_0
    iget-object v0, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 39
    .local v3, "anrStackDir":Ljava/io/File;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/alipay/mobile/monitor/util/TransUtils;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "alipayDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v4, "packageDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v6, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v5

    move-object v11, v3

    goto :goto_0

    .line 39
    .end local v0    # "alipayDir":Ljava/io/File;
    .end local v4    # "packageDir":Ljava/io/File;
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;
    :cond_1
    move-object v11, v3

    .line 44
    .end local v3    # "anrStackDir":Ljava/io/File;
    .local v11, "anrStackDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, v0

    .line 50
    .local v12, "uploadFiles":Ljava/util/List;
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;

    invoke-direct {v0, v8}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "threadDumpHelper":Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    .line 52
    .local v4, "anrBuilder":Ljava/lang/StringBuilder;
    move-object v4, v3

    const-string v5, ":\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 54
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "curLogFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v2

    .line 61
    .local v7, "tagFile":Ljava/io/File;
    move-object v7, v6

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v3}, Lcom/alipay/mobile/monitor/util/FileUtils;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 62
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .end local v0    # "threadDumpHelper":Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;
    .end local v4    # "anrBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "curLogFileName":Ljava/lang/String;
    .end local v7    # "tagFile":Ljava/io/File;
    goto :goto_3

    .line 63
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v2

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "zipFile":Ljava/io/File;
    move-object v13, v3

    .end local v0    # "zipFile":Ljava/io/File;
    .local v13, "zipFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v0

    .line 70
    .local v14, "zipFilePath":Ljava/lang/String;
    :try_start_4
    invoke-static {v12, v14, v2, v2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    nop

    .line 85
    :try_start_5
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 87
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AnrTracer.startAnrTracer] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 89
    monitor-exit p0

    return-void

    .line 92
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    new-instance v7, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;

    invoke-direct {v7, p0, v10, v14}, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;-><init>(Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 110
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    monitor-exit p0

    return-void

    .line 71
    .end local v4    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v7

    .line 73
    .local v2, "message":Ljava/lang/String;
    :try_start_7
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 74
    const-string v3, "[no files to upload] contains none file."

    move-object v2, v3

    goto :goto_4

    .line 76
    :cond_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 78
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[AnrTracer.startAnrTracer] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 82
    monitor-exit p0

    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    .end local v11    # "anrStackDir":Ljava/io/File;
    .end local v12    # "uploadFiles":Ljava/util/List;
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v14    # "zipFilePath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "isDumpLastAnr":Z
    .end local p3    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .end local p4    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 35
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "isDumpLastAnr":Z
    .restart local p3    # "diagnoseTask":Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .restart local p4    # "callback":Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    :cond_7
    :goto_5
    monitor-exit p0

    return-void
.end method

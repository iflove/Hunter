.class final Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;
.super Ljava/lang/Thread;
.source "TracingUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->b:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->c:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->d:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 122
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "ZipAndDeletedThread"

    .line 126
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "fileList":Ljava/util/List;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->c:Ljava/lang/String;

    invoke-static {v1, v3, v2, v2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tracing zipped file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "message":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->d:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v4, :cond_0

    .line 135
    invoke-interface {v4, v3}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 137
    :catchall_0
    move-exception v3

    .line 139
    .local v2, "message":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Throwable;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    const-string v2, "[no files to upload] contains none file."

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->d:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_2

    .line 146
    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TracingUploader.tracingAndUpload] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 150
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

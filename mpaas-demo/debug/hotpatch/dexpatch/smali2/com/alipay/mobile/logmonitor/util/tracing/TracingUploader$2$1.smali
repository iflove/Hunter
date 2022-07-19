.class final Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 86
    return-void
.end method

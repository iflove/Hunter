.class final Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "url":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->e(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->d(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2$1;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;)V

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 97
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

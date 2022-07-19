.class final Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a()V
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

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 58
    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;->a:Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    iget-object v4, v4, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;->start()V

    .line 60
    return-void
.end method

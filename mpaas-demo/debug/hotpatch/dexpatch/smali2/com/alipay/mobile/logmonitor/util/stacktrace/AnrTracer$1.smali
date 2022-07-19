.class final Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;
.super Ljava/lang/Object;
.source "AnrTracer.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;->a(Landroid/content/Context;ZLcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->c:Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/AnrTracer$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 101
    return-void
.end method

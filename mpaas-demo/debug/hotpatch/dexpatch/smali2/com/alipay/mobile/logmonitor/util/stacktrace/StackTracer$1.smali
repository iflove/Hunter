.class final Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;
.super Ljava/lang/Object;
.source "StackTracer.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;->a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->c:Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/StackTracer$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 116
    return-void
.end method

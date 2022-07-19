.class final Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field final synthetic b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 847
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 863
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 865
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    return-void

    .line 866
    :catchall_0
    move-exception v0

    .line 867
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UserDiagnostician"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_SUCCESS:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$5;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 854
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    return-void

    .line 855
    :catchall_0
    move-exception v0

    .line 856
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UserDiagnostician"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

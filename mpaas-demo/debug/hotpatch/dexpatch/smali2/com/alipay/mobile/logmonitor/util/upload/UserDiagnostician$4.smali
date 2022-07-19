.class final Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
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

    .line 546
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    return-void

    .line 551
    :catchall_0
    move-exception v0

    .line 552
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UserDiagnostician"

    const-string/jumbo v3, "processManualTrigger"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$4;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v1, :cond_0

    .line 554
    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->UNKNOWN_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 557
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

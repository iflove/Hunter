.class final Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->c(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 929
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$9;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_SUCCESS:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    return-void
.end method

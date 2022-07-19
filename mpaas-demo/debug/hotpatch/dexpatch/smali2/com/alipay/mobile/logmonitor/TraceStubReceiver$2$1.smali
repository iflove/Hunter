.class final Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2$1;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2$1;->a:Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2$1;->a:Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2$1;->a:Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$2;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->RESULT_SUCCESS:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    return-void
.end method

.class final Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field final synthetic b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->a:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->b:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    return-void
.end method

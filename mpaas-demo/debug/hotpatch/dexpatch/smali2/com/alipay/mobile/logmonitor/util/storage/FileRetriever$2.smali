.class final Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;
.super Ljava/lang/Object;
.source "FileRetriever.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->startFileRetrieve(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field final synthetic d:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->d:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;
    .param p2, "msg"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->o:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->o:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$2;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method

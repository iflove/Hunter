.class public Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;
.super Ljava/lang/Object;
.source "TracingUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$a;
    }
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$2;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->a:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/monitor/util/FileUtils;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".trace"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->e:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/monitor/util/FileUtils;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->f:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->g:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 43
    const-wide/32 v0, 0xd00000

    invoke-static {v0, v1}, Lcom/alipay/mobile/monitor/util/FileUtils;->isSDcardAvailableSpace(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->g:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_0

    .line 45
    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_SPACE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v2, "[TracingUploader.tracingAndUpload] sd card is not enough"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a()Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v5, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->j:J

    new-instance v7, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader$1;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;)V

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->d:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget v8, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->k:I

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a(Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V

    .line 70
    return-void
.end method

.method public final a(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "taskCallBack"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/TracingUploader;->g:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 155
    return-void
.end method

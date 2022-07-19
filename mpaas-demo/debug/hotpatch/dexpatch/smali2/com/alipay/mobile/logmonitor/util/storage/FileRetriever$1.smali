.class final Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;
.super Ljava/lang/Object;
.source "FileRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->startFileRetrieve(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->c:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->c:Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever$1;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->startFileRetrieve(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    .line 79
    return-void
.end method

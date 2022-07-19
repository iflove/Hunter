.class final Lcom/uc/webview/export/utility/download/h;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Landroid/webkit/ValueCallback;

.field final synthetic c:Landroid/webkit/ValueCallback;

.field final synthetic d:Landroid/webkit/ValueCallback;

.field final synthetic e:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/h;->a:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lcom/uc/webview/export/utility/download/h;->b:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lcom/uc/webview/export/utility/download/h;->c:Landroid/webkit/ValueCallback;

    iput-object p5, p0, Lcom/uc/webview/export/utility/download/h;->d:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .line 407
    check-cast p1, Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 1411
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v1

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1412
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getLastModified()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1414
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v1

    .line 1416
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->d(Lcom/uc/webview/export/utility/download/UpdateTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1417
    const-string v1, "sdk_ucm_e"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1418
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->a:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1419
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1420
    return-void

    .line 1424
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v2

    .line 1425
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    move-wide v6, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    mul-long v6, v6, v8

    div-long/2addr v6, v2

    mul-long v6, v6, v8

    .line 1426
    :goto_1
    const-wide/16 v2, 0x64

    cmp-long v8, v6, v2

    if-gtz v8, :cond_4

    cmp-long v2, v6, v4

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    long-to-int v2, v6

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, -0x1

    .line 1427
    :goto_3
    const-string v3, "sdk_ucm_p"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1430
    goto :goto_4

    .line 1429
    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1432
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1433
    const-string v1, "sdk_ucm_f"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1434
    :try_start_5
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->b:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1438
    :cond_5
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->c:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    return-void

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1449
    return-void

    .line 1439
    :catchall_3
    move-exception v1

    .line 1440
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 1441
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1442
    const-string p1, "sdk_ucm_en"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 1445
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sdk_ucm_le"

    invoke-static {v2, p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;

    move-result-object p1

    aput-object v1, p1, v0

    .line 1448
    :try_start_9
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/h;->d:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_7
    return-void

    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    return-void
.end method

.class final Lcom/uc/webview/export/utility/download/c;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/uc/webview/export/utility/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/DownloadTask;Z)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    iput-boolean p2, p0, Lcom/uc/webview/export/utility/download/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 245
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->a(Lcom/uc/webview/export/utility/download/DownloadTask;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 247
    :try_start_1
    const-string v2, "csc_dufrp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 248
    iget-boolean v2, p0, Lcom/uc/webview/export/utility/download/c;->a:Z

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "csc_dufrsp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    :try_start_2
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/DownloadTask;->b(Lcom/uc/webview/export/utility/download/DownloadTask;)[Landroid/webkit/ValueCallback;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 252
    const-string v2, "csc_dufrcp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v2}, Lcom/uc/webview/export/utility/download/DownloadTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v2, "csc_dufrlp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/DownloadTask;->b(Lcom/uc/webview/export/utility/download/DownloadTask;)[Landroid/webkit/ValueCallback;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/uc/webview/export/utility/download/c;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 260
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    return-void
.end method

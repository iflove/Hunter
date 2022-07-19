.class final Lcom/uc/webview/export/utility/download/a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/uc/webview/export/utility/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/a;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/a;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    return-void
.end method

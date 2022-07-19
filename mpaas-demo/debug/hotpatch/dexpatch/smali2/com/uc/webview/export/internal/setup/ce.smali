.class final Lcom/uc/webview/export/internal/setup/ce;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/UpdateTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bo;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ce;->b:Lcom/uc/webview/export/internal/setup/bw;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ce;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 336
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1339
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ce;->b:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ce;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->a(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 1342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->delete()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1344
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ce;->a:Lcom/uc/webview/export/internal/setup/bo;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 336
    return-void

    .line 1342
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

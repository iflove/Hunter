.class final Lcom/uc/webview/export/internal/setup/bq;
.super Landroid/os/HandlerThread;
.source "U4Source"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Ljava/lang/String;I)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bq;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Looper;)Landroid/os/Handler;

    .line 423
    return-void
.end method

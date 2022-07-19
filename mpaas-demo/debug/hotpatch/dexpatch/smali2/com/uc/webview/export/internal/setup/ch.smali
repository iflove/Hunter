.class final Lcom/uc/webview/export/internal/setup/ch;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bw;

.field private b:I


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 p1, 0x3

    iput p1, p0, Lcom/uc/webview/export/internal/setup/ch;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 253
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1258
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 1260
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->b(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 1261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    iget v0, p0, Lcom/uc/webview/export/internal/setup/ch;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/uc/webview/export/internal/setup/ch;->b:I

    if-lez v0, :cond_0

    .line 1263
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uc/webview/export/internal/setup/ci;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/ci;-><init>(Lcom/uc/webview/export/internal/setup/ch;Lcom/uc/webview/export/utility/download/UpdateTask;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_0
    return-void

    .line 1261
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

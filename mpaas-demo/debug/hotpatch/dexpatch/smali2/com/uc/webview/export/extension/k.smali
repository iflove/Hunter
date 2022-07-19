.class final Lcom/uc/webview/export/extension/k;
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
.field final synthetic a:Ljava/util/Map;

.field private b:I


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lcom/uc/webview/export/extension/k;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    const/4 p1, 0x3

    iput p1, p0, Lcom/uc/webview/export/extension/k;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 1506
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 2511
    iget-object v0, p0, Lcom/uc/webview/export/extension/k;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2512
    const-string v1, "exception"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 2513
    if-eqz v0, :cond_0

    .line 2515
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2518
    goto :goto_0

    .line 2517
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2521
    :cond_0
    :goto_0
    iget v0, p0, Lcom/uc/webview/export/extension/k;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/uc/webview/export/extension/k;->b:I

    if-lez v0, :cond_1

    .line 2522
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uc/webview/export/extension/l;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/extension/l;-><init>(Lcom/uc/webview/export/extension/k;Lcom/uc/webview/export/utility/download/UpdateTask;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1506
    :cond_1
    return-void
.end method

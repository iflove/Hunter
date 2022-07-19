.class final Lcom/uc/webview/export/internal/setup/cb;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;)V
    .locals 1

    .line 359
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cb;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const-string v0, "updateProgress"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cb;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 359
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1363
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cb;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getPercent()I

    move-result p1

    iput p1, v0, Lcom/uc/webview/export/internal/setup/bw;->mPercent:I

    .line 1364
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/cb;->a:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cb;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 359
    :cond_0
    return-void
.end method

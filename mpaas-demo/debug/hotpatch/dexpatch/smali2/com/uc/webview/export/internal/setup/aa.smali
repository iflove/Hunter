.class final Lcom/uc/webview/export/internal/setup/aa;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 1

    .line 567
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aa;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const-string v0, "updateProgress"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/o;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aa;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 567
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1571
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aa;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getPercent()I

    move-result p1

    iput p1, v0, Lcom/uc/webview/export/internal/setup/o;->mPercent:I

    .line 1572
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/aa;->a:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aa;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 567
    :cond_0
    return-void
.end method

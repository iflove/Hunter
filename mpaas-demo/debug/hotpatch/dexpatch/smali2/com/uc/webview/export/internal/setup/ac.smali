.class final Lcom/uc/webview/export/internal/setup/ac;
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

    .line 545
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ac;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const-string v0, "downloadException"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/o;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ac;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 545
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1549
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ac;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 1550
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ac;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/o;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 1552
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/ac;->a:Landroid/webkit/ValueCallback;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ac;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 545
    :cond_1
    return-void
.end method

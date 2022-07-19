.class public final Lcom/uc/webview/export/internal/android/n;
.super Lcom/uc/webview/export/WebMessagePort;
.source "U4Source"


# instance fields
.field a:Landroid/webkit/WebMessagePort;


# direct methods
.method constructor <init>(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/uc/webview/export/WebMessagePort;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    .line 15
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    invoke-virtual {v0}, Landroid/webkit/WebMessagePort;->close()V

    .line 25
    return-void
.end method

.method public final postMessage(Lcom/uc/webview/export/WebMessage;)V
    .locals 0

    .line 20
    return-void
.end method

.method public final setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/android/n;->setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V

    .line 30
    return-void
.end method

.method public final setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    new-instance p2, Lcom/uc/webview/export/internal/android/o;

    invoke-direct {p2, p0}, Lcom/uc/webview/export/internal/android/o;-><init>(Lcom/uc/webview/export/internal/android/n;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    .line 40
    return-void
.end method

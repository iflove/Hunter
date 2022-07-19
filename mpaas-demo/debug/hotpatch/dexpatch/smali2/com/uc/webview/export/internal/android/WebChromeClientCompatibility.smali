.class public Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;
.super Landroid/webkit/WebChromeClient;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/uc/webview/export/WebView;

.field protected b:Lcom/uc/webview/export/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 51
    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;

    invoke-direct {p1, p0, p3}, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;-><init>(Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    .line 52
    :goto_0
    iget-object p3, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p3, v0, p2, p1}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

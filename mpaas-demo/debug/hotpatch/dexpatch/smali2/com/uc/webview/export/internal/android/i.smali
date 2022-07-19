.class final Lcom/uc/webview/export/internal/android/i;
.super Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IOpenFileChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/android/i$b;,
        Lcom/uc/webview/export/internal/android/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebChromeClient;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    .line 59
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    .line 60
    return-void
.end method

.method private a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/k;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/internal/android/k;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/ValueCallback;)V

    new-instance v3, Lcom/uc/webview/export/internal/android/l;

    invoke-direct {v3, p0, p2, p3}, Lcom/uc/webview/export/internal/android/l;-><init>(Lcom/uc/webview/export/internal/android/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {p2, p1}, Lcom/uc/webview/export/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 260
    return-void
.end method


# virtual methods
.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 190
    return-void
.end method

.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebChromeClient;->onCloseWindow(Lcom/uc/webview/export/WebView;)V

    .line 126
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    .line 96
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 97
    new-instance v0, Lcom/uc/webview/export/WebView$WebViewTransport;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/WebView$WebViewTransport;-><init>(Lcom/uc/webview/export/WebView;)V

    .line 98
    new-instance v1, Lcom/uc/webview/export/internal/android/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/uc/webview/export/internal/android/j;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/os/Looper;)V

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 103
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    const/4 v2, 0x1

    sput v2, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    .line 105
    iget-object v2, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v3, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2, v3, p2, p3, v1}, Lcom/uc/webview/export/WebChromeClient;->onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z

    move-result p2

    .line 106
    const/4 p3, 0x0

    sput p3, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    .line 107
    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$WebViewTransport;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object p3

    if-nez p3, :cond_0

    .line 108
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$WebViewTransport;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 115
    :cond_1
    return p2
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 168
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    new-instance v1, Lcom/uc/webview/export/internal/android/i$b;

    invoke-direct {v1, p0, p2}, Lcom/uc/webview/export/internal/android/i$b;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    .line 163
    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onHideCustomView()V

    .line 91
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 131
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/uc/webview/export/internal/android/e;

    invoke-direct {v1, p4}, Lcom/uc/webview/export/internal/android/e;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/uc/webview/export/WebChromeClient;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/uc/webview/export/internal/android/e;

    invoke-direct {v1, p4}, Lcom/uc/webview/export/internal/android/e;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/uc/webview/export/WebChromeClient;->onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/uc/webview/export/internal/android/e;

    invoke-direct {v1, p4}, Lcom/uc/webview/export/internal/android/e;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/uc/webview/export/WebChromeClient;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    new-instance v5, Lcom/uc/webview/export/internal/android/d;

    invoke-direct {v5, p5}, Lcom/uc/webview/export/internal/android/d;-><init>(Landroid/webkit/JsPromptResult;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebChromeClient;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/WebChromeClient;->onProgressChanged(Lcom/uc/webview/export/WebView;I)V

    .line 65
    return-void
.end method

.method public final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public final onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebChromeClient;->onRequestFocus(Lcom/uc/webview/export/WebView;)V

    .line 121
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->b:Lcom/uc/webview/export/WebChromeClient;

    new-instance v1, Lcom/uc/webview/export/internal/android/i$a;

    invoke-direct {v1, p0, p2}, Lcom/uc/webview/export/internal/android/i$a;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/uc/webview/export/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V

    .line 86
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/uc/webview/export/internal/android/i;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/internal/android/i;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/uc/webview/export/internal/android/i;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

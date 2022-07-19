.class public Lcom/alipay/mobile/nebulax/engine/a/b/b;
.super Ljava/lang/Object;
.source "LegacyNXH5WebViewClientAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    .line 29
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->getJSBridge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 94
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 49
    return-void
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    iget-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {p4, p1, p2, p3, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedResponseHeader(Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 109
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 149
    return-void
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    .line 144
    return-void
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 129
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 69
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 124
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/b;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

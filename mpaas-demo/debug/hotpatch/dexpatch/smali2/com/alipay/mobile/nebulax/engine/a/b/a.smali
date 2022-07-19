.class public Lcom/alipay/mobile/nebulax/engine/a/b/a;
.super Ljava/lang/Object;
.source "LegacyH5WebViewAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/NXH5WebViewAdapter;


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private b:Lcom/alipay/mobile/nebulax/engine/a/d/a;

.field private c:Lcom/alipay/mobile/nebulax/engine/a/d/d;

.field private d:Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebulax/engine/a/d/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 48
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->b:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->c:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->d:Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;

    .line 54
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearCache(Z)V

    .line 322
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearFormData()V

    .line 327
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearHistory()V

    .line 332
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearSslPreferences()V

    .line 337
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    .line 162
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 202
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 84
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->flingScroll(II)V

    .line 107
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->freeMemory()V

    .line 317
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 6

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result p1

    return p1
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInternalContentView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getInternalContentView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Lcom/alipay/mobile/nebula/webview/APWebChromeClient;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->c:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->b()Lcom/alipay/mobile/nebulax/engine/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->d:Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewIndex()I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBack()V

    .line 222
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBackOrForward(I)V

    .line 242
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goForward()V

    .line 232
    return-void
.end method

.method public init(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 64
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->invokeZoomPicker()V

    .line 262
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V

    .line 302
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 368
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 370
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->c:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 371
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->b:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    .line 372
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->d:Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;

    .line 373
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V

    .line 307
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->pageDown(Z)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->pageUp(Z)Z

    move-result p1

    return p1
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->postUrl(Ljava/lang/String;[B)V

    .line 187
    return-void
.end method

.method public reload()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V

    .line 212
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    .line 393
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 347
    return-void
.end method

.method public setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->b:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/a;->a(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V

    .line 92
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 438
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 122
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setInitialScale(I)V

    .line 257
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setNetworkAvailable(Z)V

    .line 167
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    .line 443
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setScale(F)V

    .line 423
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 69
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setVerticalScrollBarEnabled(Z)V

    .line 433
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setVerticalScrollbarOverlay(Z)V

    .line 127
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 357
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 102
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 352
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    .line 207
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->zoomOut()Z

    move-result v0

    return v0
.end method

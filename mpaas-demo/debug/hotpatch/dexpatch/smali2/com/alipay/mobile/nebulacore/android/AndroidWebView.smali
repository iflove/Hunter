.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;,
        Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

.field private d:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

.field private e:Ljava/lang/String;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->f:F

    .line 62
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    .line 63
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;-><init>(Landroid/webkit/WebSettings;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 71
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 72
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "AndroidWebView"

    const-string/jumbo v3, "setAcceptThirdPartyCookies"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSavePassword(Z)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->d:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 437
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 442
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 447
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 452
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 457
    .local v2, "list":Landroid/webkit/WebBackForwardList;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0

    .line 460
    :cond_0
    return-object v1
.end method

.method public createWebMessageChannel()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .locals 5

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v0

    .line 162
    .local v0, "ports":[Landroid/webkit/WebMessagePort;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;-><init>(Landroid/webkit/WebMessagePort;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;-><init>(Landroid/webkit/WebMessagePort;)V

    aput-object v2, v1, v3

    return-object v1

    .line 166
    .end local v0    # "ports":[Landroid/webkit/WebMessagePort;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 244
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stringValueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 308
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    const-string v0, ""

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 312
    :cond_1
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ih5EmbedViewJSCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 282
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 188
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 432
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .line 406
    const-string v0, "AndroidWebView"

    const-string v1, "getContentWidth() is currently not supported yet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 1
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 487
    .local v2, "hitTestResult":Landroid/webkit/WebView$HitTestResult;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 488
    return-object v1

    .line 490
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/webkit/WebView$HitTestResult;)V

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 516
    iget v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->f:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 122
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "1.1"

    .line 101
    .local v0, "version":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "ua":Ljava/lang/String;
    :try_start_0
    const-string v2, "Chrome/\\d+\\.\\d+\\.\\d+\\.\\d+"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 105
    .local v4, "pattern":Ljava/util/regex/Pattern;
    move-object v4, v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 107
    .local v3, "matcher":Ljava/util/regex/Matcher;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 113
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    .line 112
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "AndroidWebView"

    const-string v4, "catch exception "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v1    # "ua":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->e:Ljava/lang/String;

    .line 117
    .end local v0    # "version":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 332
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 352
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 342
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    .line 372
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "additionalHttpHeaders"    # Ljava/util/Map;
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

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 272
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 415
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 422
    :cond_0
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 287
    return-void
.end method

.method public postWebMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;Landroid/net/Uri;)V
    .locals 4
    .param p1, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebMessage;->getPorts()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    move-result-object v0

    .line 173
    .local v0, "ports":[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    const/4 v1, 0x0

    .line 174
    .local v1, "androidPorts":[Landroid/webkit/WebMessagePort;
    if-eqz v0, :cond_0

    .line 175
    array-length v2, v0

    new-array v1, v2, [Landroid/webkit/WebMessagePort;

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 177
    aget-object v3, v0, v2

    check-cast v3, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/android/AndroidWebMessagePort;->getWebMessagePort()Landroid/webkit/WebMessagePort;

    move-result-object v3

    aput-object v3, v1, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/webkit/WebMessage;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    .line 181
    .local v2, "androidMsg":Landroid/webkit/WebMessage;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v2, p2}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    .line 183
    .end local v0    # "ports":[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .end local v1    # "androidPorts":[Landroid/webkit/WebMessagePort;
    .end local v2    # "androidMsg":Landroid/webkit/WebMessage;
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 322
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 263
    .local v2, "list":Landroid/webkit/WebBackForwardList;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0

    .line 266
    :cond_0
    return-object v1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 254
    .local v2, "list":Landroid/webkit/WebBackForwardList;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0

    .line 257
    :cond_0
    return-object v1
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 133
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 472
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 527
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 203
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 367
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 249
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 531
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->d:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 532
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .line 511
    iput p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->f:F

    .line 512
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 522
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 208
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 477
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 154
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 2
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 466
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 317
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method

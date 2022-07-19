.class public Lcom/alipay/mobile/nebulax/engine/cube/c/a;
.super Ljava/lang/Object;
.source "LegacyCubeH5WebViewAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/NXH5WebViewAdapter;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/cube/c/b;

.field private b:Lcom/alipay/mobile/nebulax/engine/api/NXView;

.field private c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->b:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 63
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageToken(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/c/a;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/cube/c/a;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->b:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->d:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 78
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/cube/c/b;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->a:Lcom/alipay/mobile/nebulax/engine/cube/c/b;

    .line 82
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 138
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 0

    .line 277
    const/4 p1, 0x0

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 0

    .line 366
    return-void
.end method

.method public clearFormData()V
    .locals 0

    .line 371
    return-void
.end method

.method public clearHistory()V
    .locals 0

    .line 376
    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .line 381
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 203
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 909
    const/4 p1, 0x0

    return p1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0

    .line 128
    return-void
.end method

.method public flingScroll(II)V
    .locals 0

    .line 148
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .line 361
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 0

    .line 914
    const/4 p1, 0x0

    return p1
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 875
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 870
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .line 837
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 197
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getInternalContentView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .line 924
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 415
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/c/a$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/cube/c/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V

    return-object v0
.end method

.method public getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 0

    .line 101
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 860
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->b:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    if-eqz v0, :cond_0

    .line 853
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebChromeClient()Lcom/alipay/mobile/nebula/webview/APWebChromeClient;
    .locals 1

    .line 935
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewClient()Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->a:Lcom/alipay/mobile/nebulax/engine/cube/c/b;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public goBack()V
    .locals 0

    .line 263
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    .line 283
    return-void
.end method

.method public goForward()V
    .locals 0

    .line 273
    return-void
.end method

.method public init(Z)V
    .locals 0

    .line 92
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 0

    .line 303
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 233
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 238
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube evaluate script in pageContext  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.LegacyCubeH5WebViewAdapter"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string p1, "cube evaluate script in pageContext  is  empty ,return  "

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 114
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 115
    const-string v2, "script"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    const-string v2, "evaluateScriptInPageContext"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception p1

    .line 119
    const-string v0, "cube evaluate script exception "

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 346
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 411
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 351
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 0

    .line 292
    const/4 p1, 0x0

    return p1
.end method

.method public pageUp(Z)Z
    .locals 0

    .line 287
    const/4 p1, 0x0

    return p1
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0

    .line 228
    return-void
.end method

.method public reload()V
    .locals 0

    .line 253
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .line 406
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 0

    .line 217
    const/4 p1, 0x0

    return-object p1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 0

    .line 212
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0

    .line 848
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 0

    .line 391
    return-void
.end method

.method public setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V
    .locals 0

    .line 133
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 0

    .line 896
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0

    .line 163
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 193
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0

    .line 298
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    .line 208
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0

    .line 900
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 881
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 97
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 0

    .line 891
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0

    .line 168
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0

    .line 401
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0

    .line 143
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0

    .line 396
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .line 248
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

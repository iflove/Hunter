.class Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebViewClient.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private c:J

.field private d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->d:I

    .line 41
    return-void
.end method

.method private a()J
    .locals 4

    .line 58
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "begUidRx":J
    :try_start_0
    iget v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->d:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 64
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->c:J

    sub-long/2addr v0, v2

    .line 71
    .local v0, "pageSize":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 73
    .end local v0    # "pageSize":J
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->c:J

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    .line 183
    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_2

    .line 148
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    .local v0, "statusCode":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 150
    .local v1, "requestUrl":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    .line 152
    .end local v0    # "statusCode":I
    .end local v1    # "requestUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    new-instance v3, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;

    invoke-direct {v3, p3}, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;-><init>(Landroid/net/http/SslError;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 206
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 199
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "response":Landroid/webkit/WebResourceResponse;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_3

    .line 96
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;-><init>(Landroid/webkit/WebResourceRequest;)V

    .line 97
    .local v1, "ar":Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 98
    move-object v0, v2

    if-eqz v2, :cond_3

    .line 99
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "requestUrl":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 102
    .local v5, "rspHeader":Ljava/util/Map;
    move-object v5, v3

    const-string v6, "Cache-Control"

    const-string/jumbo v7, "no-cache"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v4, "pageUrl":Ljava/lang/String;
    move-object v4, v3

    const-string v6, "Access-Control-Allow-Origin"

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->needAddHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .local v7, "corsUrl":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v7    # "corsUrl":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "headUrl":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->addChooseImageCrossOrigin(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    invoke-virtual {v0, v5}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 133
    .end local v1    # "ar":Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;
    .end local v2    # "requestUrl":Ljava/lang/String;
    .end local v3    # "headUrl":Ljava/lang/String;
    .end local v4    # "pageUrl":Ljava/lang/String;
    .end local v5    # "rspHeader":Ljava/util/Map;
    :cond_3
    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "rsp":Landroid/webkit/WebResourceResponse;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v2, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 191
    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 190
    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 46
    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 45
    return v0
.end method

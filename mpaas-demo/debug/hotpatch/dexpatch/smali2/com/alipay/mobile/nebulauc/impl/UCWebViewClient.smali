.class Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;
.super Lcom/uc/webview/export/WebViewClient;
.source "UCWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UCWebViewClient"


# instance fields
.field private mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private mCurrentTrafficFlow:J

.field private mRenderProcessGoneCalledCount:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 47
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mRenderProcessGoneCalledCount:I

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 49
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    return-object v0
.end method

.method private getTrafficFlow()J
    .locals 6

    .line 81
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "flow":J
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v0, v2, v4

    .line 88
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v2

    .line 87
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "H5UCWebViewClient"

    const-string v4, "exception detail "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return-wide v0
.end method

.method private shouldRestoreRenderProcess()Z
    .locals 8

    .line 245
    const-string v0, "h5_ucDisableRenderProcessReload"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 247
    .local v0, "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "all"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "H5UCWebViewClient"

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "disableRenderProcessReload all"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v2

    .line 253
    :cond_0
    const-string v1, "deviceList"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 254
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "phoneInfo":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 258
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableRenderProcessReload device "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return v2

    .line 257
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 266
    .end local v5    # "phoneInfo":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_2
    const-string v5, "sdkIntList"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 268
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 269
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->getIntValue(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableRenderProcessReload sdkint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return v2

    .line 268
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x3

    const-string v5, "reloadTime"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 277
    .local v4, "times":I
    iget v5, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mRenderProcessGoneCalledCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mRenderProcessGoneCalledCount:I

    .line 278
    if-le v5, v4, :cond_5

    .line 279
    const-string v5, "render process crash many times, do not restore"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return v2

    .line 282
    :cond_5
    return v6
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->getTrafficFlow()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mCurrentTrafficFlow:J

    sub-long/2addr v0, v2

    .line 76
    .local v0, "pageSize":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 78
    .end local v0    # "pageSize":J
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->getTrafficFlow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mCurrentTrafficFlow:J

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulauc/R$string;->slm_uc_warning:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setMultiProcessMode()V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    check-cast v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->clearPageStartUnCalled()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    :cond_2
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;-><init>(Lcom/uc/webview/export/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceResponse;)V
    .locals 4
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "webResourceRequest"    # Lcom/uc/webview/export/WebResourceRequest;
    .param p3, "webResourceResponse"    # Lcom/uc/webview/export/WebResourceResponse;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_2

    .line 151
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/uc/webview/export/WebResourceResponse;->getStatusCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "statusCode":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 153
    .local v1, "requestUrl":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    .line 155
    .end local v0    # "statusCode":I
    .end local v1    # "requestUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;-><init>(Lcom/uc/webview/export/SslErrorHandler;)V

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UCSslError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p3}, Lcom/alipay/mobile/nebulauc/impl/UCSslError;-><init>(ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/RenderProcessGoneDetail;)Z
    .locals 6
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "var2"    # Lcom/uc/webview/export/extension/RenderProcessGoneDetail;

    .line 208
    const-string v0, "H5UCWebViewClient"

    const-string v1, "onRenderProcessGone"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->shouldRestoreRenderProcess()Z

    move-result v0

    .line 211
    .local v0, "canRestore":Z
    const-string v1, "H5_UC_RENDER_PROCESS_RESTORE"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 212
    .local v1, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 215
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "canRestore"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 216
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phoneInfo"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 217
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "multiProcessMode"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 218
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isFg"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 219
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v2, :cond_1

    instance-of v2, v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    check-cast v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isMultiProcessPreCreate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isStaticWebView"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 222
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 224
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v2, :cond_2

    .line 226
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 238
    const/4 v2, 0x1

    return v2

    .line 240
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onScaleChanged(Lcom/uc/webview/export/WebView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 204
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 197
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 7
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 105
    .local v0, "rsp":Landroid/webkit/WebResourceResponse;
    const/4 v1, 0x0

    .line 106
    .local v1, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v0, :cond_4

    .line 107
    new-instance v2, Lcom/uc/webview/export/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v1, v2

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v2, "rspHeader":Ljava/util/Map;
    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "pageUrl":Ljava/lang/String;
    const-string v4, "Access-Control-Allow-Origin"

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->needAddHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "corsUrl":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 114
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v6    # "corsUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "headUrl":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 129
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->addChooseImageCrossOrigin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 132
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_3
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 137
    .end local v2    # "rspHeader":Ljava/util/Map;
    .end local v3    # "pageUrl":Ljava/lang/String;
    .end local v5    # "headUrl":Ljava/lang/String;
    :cond_4
    return-object v1

    .line 102
    .end local v0    # "rsp":Landroid/webkit/WebResourceResponse;
    .end local v1    # "response":Lcom/uc/webview/export/WebResourceResponse;
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

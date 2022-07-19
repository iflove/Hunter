.class final Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;
.super Ljava/lang/Object;
.source "UCWebSettings.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# instance fields
.field private mUCImpl:Lcom/uc/webview/export/WebSettings;

.field private webView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 1
    .param p1, "ucWebView"    # Lcom/uc/webview/export/WebView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    .line 25
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    .line 26
    return-void
.end method


# virtual methods
.method public getAllowContentAccess()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLayoutAlgorithm()Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getTextZoom()I

    move-result v0

    return v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 86
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 76
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 371
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 361
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 311
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "appCachePath"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBlockNetworkImage(Z)V

    .line 291
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 431
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 326
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFixedFontSize(I)V

    .line 271
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFontSize(I)V

    .line 261
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 66
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 336
    return-void
.end method

.method public setEnableFastScroller(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/extension/UCSettings;->setEnableFastScroller(Z)V

    .line 438
    :cond_0
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 351
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 391
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 301
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 2
    .param p1, "layoutAlgorithm"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setLayoutAlgorithm(Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;)V

    .line 171
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 281
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .param p1, "require"    # Z

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 46
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumFontSize(I)V

    .line 241
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 251
    return-void
.end method

.method public setMixedContentMode(I)V
    .locals 1
    .param p1, "i"    # I

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMixedContentMode(I)V

    .line 449
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setNeedInitialFocus(Z)V

    .line 421
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 0
    .param p1, "i"    # I

    .line 442
    return-void
.end method

.method public setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 0
    .param p1, "pluginState"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 380
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 1
    .param p1, "save"    # Z

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 106
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 1
    .param p1, "save"    # Z

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 116
    return-void
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportMultipleWindows(Z)V

    .line 156
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1
    .param p1, "support"    # Z

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 31
    return-void
.end method

.method public setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 0
    .param p1, "textSize"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 135
    return-void
.end method

.method public setTextZoom(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 126
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    .line 151
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method

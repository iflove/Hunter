.class final Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;
.super Ljava/lang/Object;
.source "AndroidWebSettings.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidWebSettings"

.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 7
    .param p1, "androidWebSettings"    # Landroid/webkit/WebSettings;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    .line 25
    if-eqz p1, :cond_1

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AndroidWebSettings"

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "setMixedContentMode"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 37
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    return-void

    .line 41
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "AndroidWebSettings InvocationTargetException"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "AndroidWebSettings IllegalAccessException"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    return-void

    .line 47
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final getAllowContentAccess()Z
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAllowFileAccess()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public final getAllowFileAccessFromFileURLs()Z
    .locals 2

    .line 480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0

    .line 483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .line 462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBlockNetworkImage()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public final getBuiltInZoomControls()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public final getCacheMode()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public final getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDatabaseEnabled()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public final getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultFixedFontSize()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultFontSize()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayZoomControls()Z
    .locals 2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDomStorageEnabled()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public final getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getJavaScriptEnabled()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public final getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadWithOverviewMode()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public final getLoadsImagesAutomatically()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMinimumFontSize()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public final getMinimumLogicalFontSize()I
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public final getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public final getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSaveFormData()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public final getSavePassword()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public final getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public final getTextZoom()I
    .locals 2

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0

    return v0

    .line 177
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public final getUseWideViewPort()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public final getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public final setAllowFileAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 121
    return-void
.end method

.method public final setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 490
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 493
    :cond_0
    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 475
    :cond_0
    return-void
.end method

.method public final setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 417
    return-void
.end method

.method public final setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "appCachePath"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public final setBlockNetworkImage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 397
    return-void
.end method

.method public final setBuiltInZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public final setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 568
    return-void
.end method

.method public final setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 432
    return-void
.end method

.method public final setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public final setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 377
    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 367
    return-void
.end method

.method public final setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public final setDisplayZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public final setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 442
    return-void
.end method

.method public final setEnableFastScroller(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 573
    return-void
.end method

.method public final setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public final setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 457
    return-void
.end method

.method public final setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 527
    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 407
    return-void
.end method

.method public final setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 3
    .param p1, "l"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "androidL":Landroid/webkit/WebSettings$LayoutAlgorithm;
    sget-object v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings$1;->b:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 267
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 264
    goto :goto_0

    .line 260
    :cond_2
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 261
    goto :goto_0

    .line 257
    :cond_3
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 258
    nop

    .line 273
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 277
    :cond_5
    return-void
.end method

.method public final setLoadWithOverviewMode(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 149
    return-void
.end method

.method public final setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 387
    return-void
.end method

.method public final setMediaPlaybackRequiresUserGesture(Z)V
    .locals 3
    .param p1, "require"    # Z

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "AndroidWebSettings"

    const-string v2, "There is no method some models."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    return-void
.end method

.method public final setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 347
    return-void
.end method

.method public final setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 357
    return-void
.end method

.method public final setMixedContentMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 584
    return-void
.end method

.method public final setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 558
    return-void
.end method

.method public final setPageCacheCapacity(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .line 578
    return-void
.end method

.method public final setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 2
    .param p1, "state"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 502
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings$1;->c:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    .line 513
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 509
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 510
    return-void

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    .line 505
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 506
    return-void
.end method

.method public final setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public final setSaveFormData(Z)V
    .locals 1
    .param p1, "save"    # Z

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 159
    return-void
.end method

.method public final setSavePassword(Z)V
    .locals 1
    .param p1, "save"    # Z

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 169
    return-void
.end method

.method public final setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public final setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public final setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 239
    return-void
.end method

.method public final setSupportZoom(Z)V
    .locals 1
    .param p1, "support"    # Z

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52
    return-void
.end method

.method public final setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 3
    .param p1, "t"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "textSize":Landroid/webkit/WebSettings$TextSize;
    sget-object v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    .line 209
    goto :goto_0

    .line 205
    :cond_2
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 206
    goto :goto_0

    .line 202
    :cond_3
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    .line 203
    goto :goto_0

    .line 199
    :cond_4
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 200
    nop

    .line 216
    :goto_0
    if-eqz v0, :cond_5

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 219
    :cond_5
    return-void
.end method

.method public final setTextZoom(I)V
    .locals 2
    .param p1, "textZoom"    # I

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public final setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 234
    return-void
.end method

.method public final setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public final supportMultipleWindows()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public final supportZoom()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method

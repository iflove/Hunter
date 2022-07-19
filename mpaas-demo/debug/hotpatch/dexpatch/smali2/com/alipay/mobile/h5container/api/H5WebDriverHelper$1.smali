.class final Lcom/alipay/mobile/h5container/api/H5WebDriverHelper$1;
.super Ljava/lang/Object;
.source "H5WebDriverHelper.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 36
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)V
    .locals 0
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 43
    return-void
.end method

.method public final onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method public final onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "handler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 40
    return-void
.end method

.method public final onWebViewCreated(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 25
    return-void
.end method

.method public final onWebViewDestroyed(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 27
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 30
    return-void
.end method

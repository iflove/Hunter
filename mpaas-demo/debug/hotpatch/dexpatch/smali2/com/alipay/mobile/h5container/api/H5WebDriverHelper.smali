.class public interface abstract Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
.super Ljava/lang/Object;
.source "H5WebDriverHelper.java"


# static fields
.field public static final defaultHelper:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper$1;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->defaultHelper:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    return-void
.end method


# virtual methods
.method public abstract doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
.end method

.method public abstract onConsoleMessage(Landroid/webkit/ConsoleMessage;)V
.end method

.method public abstract onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract onWebViewCreated(Lcom/alipay/mobile/nebula/webview/APWebView;)V
.end method

.method public abstract onWebViewDestroyed(Lcom/alipay/mobile/nebula/webview/APWebView;)V
.end method

.method public abstract shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
.end method

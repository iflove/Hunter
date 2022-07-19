.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$2;
.super Lcom/uc/webview/export/extension/UCClient;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;

    .line 235
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2$2;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;

    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 2
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    const/16 v0, 0x6b

    if-ne v0, p2, :cond_1

    .line 240
    const-string v0, "H5UCWebView"

    const-string v1, "renderProcessReady from static webview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->renderProcessReady(Lcom/uc/webview/export/WebView;Z)V
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$600(Lcom/uc/webview/export/WebView;Z)V

    .line 243
    :cond_1
    const/16 v0, 0x6c

    if-ne v0, p2, :cond_2

    .line 244
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportReleaseNonIsolateStaticView()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$700()V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->releasePreCreateWebViewForMultiProcess()V

    .line 247
    :cond_2
    return-void
.end method

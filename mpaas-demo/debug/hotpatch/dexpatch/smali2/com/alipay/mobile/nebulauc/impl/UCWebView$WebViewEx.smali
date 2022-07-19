.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;
.super Lcom/uc/webview/export/WebView;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebViewEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1750
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 1751
    invoke-direct {p0, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    .line 1752
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    .line 1748
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public coreOnScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 1777
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$2200(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$2200(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    move-result-object v0

    sub-int v1, p1, p3

    sub-int v2, p2, p4

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;->onScroll(II)V

    .line 1780
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    .line 1781
    return-void
.end method

.method public coreOverScrollBy(IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 1758
    if-gez p2, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->overScrollBy(IIII)Z

    move-result v0

    return v0

    .line 1761
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/uc/webview/export/WebView;->coreOverScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1769
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 1770
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onDetachedFromWindow()V

    .line 1773
    :cond_0
    return-void
.end method

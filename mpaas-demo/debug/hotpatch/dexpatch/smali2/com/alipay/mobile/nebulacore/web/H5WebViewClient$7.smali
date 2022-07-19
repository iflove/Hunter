.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 1505
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->c:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1508
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->c:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "handle hasInputException"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1511
    .local v1, "extInfo":Landroid/os/Bundle;
    move-object v1, v0

    const-string v2, "original_method"

    const-string v3, "shouldInterceptRequest"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v0, "original_code"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v0, "original_desc"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->c:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->b:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1515
    return-void
.end method

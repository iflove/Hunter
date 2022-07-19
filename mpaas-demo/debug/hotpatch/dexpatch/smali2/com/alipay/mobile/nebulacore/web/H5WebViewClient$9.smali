.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 1721
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1724
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1725
    return-void

    .line 1728
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1729
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->a:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1731
    .local v1, "startBundle":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1732
    const-string v0, "appId"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    nop

    .line 1734
    const-string v0, "preSSOLogin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "preSSOLogin":Ljava/lang/String;
    nop

    .line 1736
    const-string v3, "preSSOLoginBindingPage"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1738
    .local v3, "preSSOLoginBindingPage":Ljava/lang/String;
    nop

    .line 1739
    const-string v4, "preSSOLoginUrl"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1740
    .local v4, "preSSOLoginUrl":Ljava/lang/String;
    const-string v5, "ps"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    const-string v5, "psb"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    const-string v5, "psu"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    .end local v0    # "preSSOLogin":Ljava/lang/String;
    .end local v3    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v4    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->b:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    const-string v3, "h5PageLoadResource"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1745
    return-void
.end method

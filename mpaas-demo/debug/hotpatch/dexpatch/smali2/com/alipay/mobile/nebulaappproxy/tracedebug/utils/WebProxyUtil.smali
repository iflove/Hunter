.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;
.super Ljava/lang/Object;
.source "WebProxyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;
    .locals 1

    .line 12
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 21
    if-nez p1, :cond_0

    .line 22
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;-><init>(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a:Ljava/lang/String;

    .line 29
    :cond_1
    return-void
.end method

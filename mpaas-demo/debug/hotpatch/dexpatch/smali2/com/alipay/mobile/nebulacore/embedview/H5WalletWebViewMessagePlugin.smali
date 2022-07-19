.class public Lcom/alipay/mobile/nebulacore/embedview/H5WalletWebViewMessagePlugin;
.super Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;
.source "H5WalletWebViewMessagePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 21
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 25
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v2, 0x0

    .line 26
    .local v2, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 27
    const-string v0, "H5WebViewMessagePlugin"

    const-string v3, "shouldInterceptPostWebViewAction...service-is-null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return v1

    .line 31
    :cond_1
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->shouldInterceptWebViewNaviJsApi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class public Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;
.super Ljava/lang/Object;
.source "ServiceWorkerControllerProviderProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceWorkerControllerProviderProxy"

.field private static instance:Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;


# instance fields
.field private h5Provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

.field private nxProvider:Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configName"    # Ljava/lang/String;

    .line 79
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 80
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "ServiceWorkerControllerProviderProxy"

    const-string v3, "h5ConfigProvider == null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v1

    .line 85
    :cond_0
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->instance:Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->instance:Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->instance:Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    return-object v0
.end method


# virtual methods
.method public getH5Provider()Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->h5Provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    return-object v0
.end method

.method public getNxProvider()Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->nxProvider:Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;

    return-object v0
.end method

.method public setH5Provider(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;)V
    .locals 0
    .param p1, "h5Provider"    # Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->h5Provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    .line 45
    return-void
.end method

.method public setNxProvider(Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;)V
    .locals 0
    .param p1, "nxProvider"    # Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->nxProvider:Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;

    .line 54
    return-void
.end method

.method public shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->nxProvider:Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nx_web_service_worker"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->nxProvider:Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;->shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    .local v1, "response":Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->processed:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v1, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    return-object v0

    .line 74
    .end local v1    # "response":Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->h5Provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;->shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

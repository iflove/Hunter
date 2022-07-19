.class public Lcom/alipay/mobile/nebulauc/impl/network/provider/H5PreConnectProviderImpl;
.super Ljava/lang/Object;
.source "H5PreConnectProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->isPreDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 28
    :cond_0
    return-void
.end method

.method public preConnect(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "mainDocUrl"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->isPreConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->preConnect(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 35
    :cond_0
    return-void
.end method

.method public preRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 18
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->isPreDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->preRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 21
    :cond_0
    return-void
.end method

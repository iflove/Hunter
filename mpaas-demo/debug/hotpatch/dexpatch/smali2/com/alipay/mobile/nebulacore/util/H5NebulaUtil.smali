.class public Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;
.super Ljava/lang/Object;
.source "H5NebulaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "configKey"    # Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 17
    .local v2, "providerManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 18
    return-object v1

    .line 20
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v3, v1

    .line 21
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 22
    return-object v1

    .line 24
    :cond_1
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 2

    .line 28
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 29
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 30
    return-object v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 2

    .line 36
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 37
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

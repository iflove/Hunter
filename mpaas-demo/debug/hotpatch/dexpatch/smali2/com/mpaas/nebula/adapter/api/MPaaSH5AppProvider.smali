.class public Lcom/mpaas/nebula/adapter/api/MPaaSH5AppProvider;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
.source "MPaaSH5AppProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public isNebulaApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 27
    .local v0, "presetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    return v1

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/adapter/api/MPaaSH5AppProvider;->isH5App(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/adapter/api/MPaaSH5AppProvider;->isH5TinyApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 1
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 20
    const-string v0, "100"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    .line 21
    return-object p1
.end method

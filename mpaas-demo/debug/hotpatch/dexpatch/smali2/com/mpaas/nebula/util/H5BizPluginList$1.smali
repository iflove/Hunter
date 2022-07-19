.class final Lcom/mpaas/nebula/util/H5BizPluginList$1;
.super Ljava/util/ArrayList;
.source "H5BizPluginList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/util/H5BizPluginList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-class v1, Lcom/mpaas/nebula/plugin/MPBizPlugin;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com-mpaas-nebula-adapter-mpaasnebulaadapter"

    const-string v3, "service"

    const-string v4, "startBizService|saveBizServiceResult"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v1, "com-mpaas-open-opensdk"

    const-string v3, "com.mpaas.opensdk.plugin.H5TradePayPlugin"

    const-string v4, "page"

    const-string v5, "tradePay"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.mpaas.opensdk.plugin.AliAutoLoginPlugin"

    const-string v5, "aliAutoLogin"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.mpaas.opensdk.plugin.GetAuthIdentityPlugin"

    const-string v5, "mp.getAuthIdentity"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v1, "com.alipay.mobile.h5plugin.MPChooseCityPlugin"

    const-string v3, "getCities|setLocatedCity"

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

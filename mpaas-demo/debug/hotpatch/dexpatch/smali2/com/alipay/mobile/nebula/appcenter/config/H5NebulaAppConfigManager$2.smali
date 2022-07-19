.class final Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;
.super Ljava/lang/Object;
.source "H5NebulaAppConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "applyConfig: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;->val$configStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5NebulaAppConfigManager"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "switch"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    # setter for: Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->access$102(Z)Z

    .line 81
    # getter for: Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    move-object v4, v1

    .line 83
    .local v4, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v4, v0

    if-eqz v0, :cond_3

    .line 84
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    move-object v5, v1

    .line 85
    .local v5, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->fromNewConfig:Z

    .line 87
    const-string v0, "config"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 89
    .local v1, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .local v0, "configMap":Ljava/util/Map;
    goto :goto_1

    .line 90
    .end local v0    # "configMap":Ljava/util/Map;
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .restart local v0    # "configMap":Ljava/util/Map;
    :goto_1
    iput-object v0, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateConfig: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    .line 99
    .end local v0    # "configMap":Ljava/util/Map;
    .end local v1    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_3
    return-void
.end method

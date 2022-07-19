.class public Lcom/mpaas/nebula/adapter/com_mpaas_nebula_adapter_FrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "com_mpaas_nebula_adapter_FrameworkMetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MetaInfoCfg;-><init>()V

    return-void
.end method

.method private insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V
    .locals 2
    .param p2, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;)V"
        }
    .end annotation

    .line 21
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    .local p3, "description":Lcom/alipay/mobile/framework/MicroDescription;, "Lcom/alipay/mobile/framework/MicroDescription<*>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 25
    .local v0, "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-nez v0, :cond_1

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 27
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void

    .line 22
    .end local v0    # "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public initDescriptionsWithMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 32
    .local p1, "mDescriptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    const/4 v0, 0x0

    .line 33
    .local v0, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    const/4 v1, 0x0

    .line 34
    .local v1, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    const/4 v2, 0x0

    .line 35
    .local v2, "valveDescription":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    const/4 v3, 0x0

    .line 36
    .local v3, "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    const/4 v4, 0x0

    .line 38
    .local v4, "packageDescription":Lcom/alipay/mobile/framework/PackageDescription;
    new-instance v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v5}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    move-object v0, v5

    .line 39
    const-string v5, "com.mpaas.nebula.application.MiniOpenCardApp"

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 40
    const-string v5, "20000021"

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 41
    const-string v5, "com-mpaas-nebula-adapter"

    invoke-direct {p0, p1, v5, v0}, Lcom/mpaas/nebula/adapter/com_mpaas_nebula_adapter_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 43
    new-instance v6, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    move-object v1, v6

    .line 44
    const-string v6, "com.mpaas.nebula.service.NebulaAdapterInitServiceImpl"

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 45
    const-string v6, "com.mpaas.nebula.service.NebulaAdapterInitService"

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 46
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 47
    invoke-direct {p0, p1, v5, v1}, Lcom/mpaas/nebula/adapter/com_mpaas_nebula_adapter_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 49
    return-void
.end method

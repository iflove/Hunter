.class public Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "ExtFrameworkMetaInfo.java"


# instance fields
.field private final mDescriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private mInited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MetaInfoCfg;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mInited:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    return-void
.end method

.method private initDescriptions()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mInited:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->initDescriptions(Ljava/util/Map;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mInited:Z

    .line 72
    return-void
.end method

.method private initDescriptionsWithMapReflect(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0
    .param p1, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 81
    .local p2, "mDescriptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->initDescriptionsWithMapReflect(Ljava/lang/Class;Ljava/util/Map;)V

    .line 85
    return-void

    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method private insertDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;)V"
        }
    .end annotation

    .line 54
    .local p2, "description":Lcom/alipay/mobile/framework/MicroDescription;, "Lcom/alipay/mobile/framework/MicroDescription<*>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    .local v0, "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 59
    if-nez v0, :cond_1

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void

    .line 55
    .end local v0    # "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method private metaInfosClassName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    const-string v1, "com.alipay.android.phone.mobilecommon.cloudfix.com_alipay_android_phone_mobilecommon_cloudfix_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 90
    const-string v1, "com.alipay.android.phone.mobilesdk.commonbizservice.com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 91
    const-string v1, "com.alipay.mobile.base.commonbiz.com_alipay_mobile_base_commonbiz_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 92
    const-string v1, "com.mpaas.mas.adapter.com_mpaas_mas_adapter_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 93
    const-string v1, "android.phone.wallet.nebula.android_phone_wallet_nebula_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 94
    const-string v1, "com.mpaas.nebula.adapter.com_mpaas_nebula_adapter_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 95
    const-string v1, "android.phone.wallet.nebulaappproxy.android_phone_wallet_nebulaappproxy_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 96
    const-string v1, "android.phone.wallet.nebulaconfig.android_phone_wallet_nebulaconfig_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 97
    const-string v1, "android.phone.wallet.nebulaappcenter.android_phone_wallet_nebulaappcenter_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 98
    const-string v1, "com.alipay.android.liteprocess.com_alipay_android_liteprocess_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 99
    const-string v1, "com.alipay.mobile.android.security.upgrade.com_alipay_mobile_android_security_upgrade_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 100
    const-string v1, "android.phone.wallet.nebulauc.android_phone_wallet_nebulauc_FrameworkMetaInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getDescriptions()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->initDescriptions()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .local v0, "rMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, "bundleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 36
    .local v4, "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ltz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gez v5, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 40
    .local v5, "currentDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-nez v5, :cond_2

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 43
    .end local p0    # "this":Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v4    # "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    .end local v5    # "currentDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    goto :goto_0

    .line 46
    :cond_3
    monitor-exit p0

    return-object v0

    .line 30
    .end local v0    # "rMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "CN"

    return-object v0
.end method

.method public declared-synchronized hasDescriptions()Z
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->initDescriptions()V

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 24
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 21
    .end local p0    # "this":Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initDescriptions(Ljava/util/Map;)V
    .locals 2
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

    .line 75
    .local p1, "mDescriptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->metaInfosClassName()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 76
    .local v1, "aClass":Ljava/lang/Class;
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->initDescriptionsWithMapReflect(Ljava/lang/Class;Ljava/util/Map;)V

    .line 77
    .end local v1    # "aClass":Ljava/lang/Class;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

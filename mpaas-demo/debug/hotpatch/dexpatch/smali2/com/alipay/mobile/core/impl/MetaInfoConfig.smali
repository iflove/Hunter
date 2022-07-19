.class public Lcom/alipay/mobile/core/impl/MetaInfoConfig;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "MetaInfoConfig.java"


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

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MetaInfoCfg;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mInited:Z

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

    return-void
.end method

.method private initDescriptions()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mInited:Z

    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/impl/ExtFrameworkMetaInfo;->initDescriptions(Ljava/util/Map;)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->insertAptMetaInfoConfig()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mInited:Z

    .line 38
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

    .line 101
    .local p2, "description":Lcom/alipay/mobile/framework/MicroDescription;, "Lcom/alipay/mobile/framework/MicroDescription<*>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 106
    if-nez v0, :cond_1

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void

    .line 102
    .end local v0    # "descriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    :cond_2
    :goto_0
    return-void
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

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->initDescriptions()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .local v0, "rMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

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

    .line 45
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, "bundleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 47
    .local v4, "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ltz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gez v5, :cond_1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51
    .local v5, "currentDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-nez v5, :cond_2

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 54
    .end local p0    # "this":Lcom/alipay/mobile/core/impl/MetaInfoConfig;
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v4    # "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    .end local v5    # "currentDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    goto :goto_0

    .line 57
    :cond_3
    monitor-exit p0

    return-object v0

    .line 41
    .end local v0    # "rMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "CN"

    return-object v0
.end method

.method public declared-synchronized hasDescriptions()Z
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->initDescriptions()V

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->mDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 23
    .end local p0    # "this":Lcom/alipay/mobile/core/impl/MetaInfoConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insertAptMetaInfoConfig()V
    .locals 9

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "aptMetaInfoConfig":Lcom/alipay/mobile/framework/MetaInfoCfg;
    :try_start_0
    const-string v1, "com.alipay.mobile.core.impl.AptMetaInfoConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/MetaInfoCfg;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 78
    .end local v1    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 72
    :catch_2
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 79
    :goto_1
    if-nez v0, :cond_1

    .line 80
    return-void

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/MetaInfoCfg;->hasDescriptions()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    return-void

    .line 85
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/MetaInfoCfg;->getDescriptions()Ljava/util/Map;

    move-result-object v1

    .line 86
    .local v1, "descriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    .line 89
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 90
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    .local v5, "entryValue":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    if-nez v5, :cond_4

    .line 93
    goto :goto_2

    .line 95
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/MicroDescription;

    .line 96
    .local v7, "microDescription":Lcom/alipay/mobile/framework/MicroDescription;, "Lcom/alipay/mobile/framework/MicroDescription<*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/alipay/mobile/core/impl/MetaInfoConfig;->insertDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 97
    .end local v7    # "microDescription":Lcom/alipay/mobile/framework/MicroDescription;, "Lcom/alipay/mobile/framework/MicroDescription<*>;"
    goto :goto_3

    .line 98
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;"
    .end local v5    # "entryValue":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;"
    :cond_5
    goto :goto_2

    .line 99
    :cond_6
    return-void

    .line 87
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/framework/MicroDescription<*>;>;>;>;"
    :cond_7
    :goto_4
    return-void
.end method

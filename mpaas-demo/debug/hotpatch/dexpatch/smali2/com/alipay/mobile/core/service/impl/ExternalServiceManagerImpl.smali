.class public Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
.source "ExternalServiceManagerImpl.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)Z
    .locals 10
    .param p1, "description"    # Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 44
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 45
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "interfaceClass":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 50
    return v3

    .line 52
    :cond_1
    monitor-enter p1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    monitor-exit p1

    return v3

    .line 58
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .local v4, "start":J
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClazz()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v2

    .line 62
    .local v7, "serviceClazz":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-object v8, v2

    .line 63
    .local v8, "externalService":Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-object v8, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 64
    invoke-virtual {v8, v2}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->create(Landroid/os/Bundle;)V

    .line 65
    iget-object v6, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v7    # "serviceClazz":Ljava/lang/Class;
    .end local v8    # "externalService":Lcom/alipay/mobile/framework/service/ext/ExternalService;
    nop

    .line 71
    :try_start_2
    const-string v0, "ExternalServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "createExternalService: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cost "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "mytest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "createExternalService: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cost "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    nop

    .end local v4    # "start":J
    monitor-exit p1

    .line 74
    return v3

    .line 66
    .restart local v4    # "start":J
    :catchall_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "ExternalServiceManager"

    invoke-static {v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V

    .line 69
    monitor-exit p1

    return v0

    .line 73
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "start":J
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 6
    .param p1, "clazz"    # Ljava/lang/String;

    const-string v0, "ExternalServiceManager"

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "externalService":Lcom/alipay/mobile/framework/service/ext/ExternalService;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 115
    move-object v1, v2

    if-nez v2, :cond_5

    .line 116
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ServiceDescription;

    const/4 v3, 0x0

    move-object v4, v3

    .line 118
    .local v4, "description":Lcom/alipay/mobile/framework/service/ServiceDescription;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 119
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/DescriptionManager;->getBundleNameByServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "bundleName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/framework/DescriptionManager;->isLazyBundle(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 124
    move-object v1, v5

    if-eqz v5, :cond_0

    .line 125
    return-object v1

    .line 128
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    move-object v4, v5

    goto :goto_0

    .line 118
    .end local v2    # "bundleName":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 132
    :goto_0
    if-nez v4, :cond_2

    .line 133
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alipay/mobile/framework/DescriptionManager;->findServiceDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 134
    .local v2, "serviceDescs":Ljava/util/List;
    move-object v2, v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 135
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ServiceDescription;

    move-object v4, v5

    .line 139
    .end local v2    # "serviceDescs":Ljava/util/List;
    :cond_2
    if-nez v4, :cond_3

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] is not registered."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v3

    .line 143
    :cond_3
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->createExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create service :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/ExternalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 150
    .end local v4    # "description":Lcom/alipay/mobile/framework/service/ServiceDescription;
    :cond_5
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 157
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 162
    return-void
.end method

.method public registerExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 2
    .param p1, "description"    # Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 90
    if-nez p1, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->createExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)Z

    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->registerExternalServiceOnly(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 105
    :cond_2
    return-void

    .line 106
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->registerExternalServiceOnly(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 108
    return-void
.end method

.method public registerExternalServiceOnly(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 2
    .param p1, "description"    # Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 79
    if-nez p1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .line 182
    const-string v0, "_externalServiceClass_"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 183
    .local v2, "externalServiceClass":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 184
    invoke-static {v2}, Lcom/alipay/mobile/framework/util/JSONUtil;->json2Set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 185
    .local v1, "savededExternalServices":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v0, "classNames":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 191
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v4    # "className":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    .local v4, "clazz":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 197
    .end local v4    # "clazz":Ljava/lang/String;
    goto :goto_1

    .line 195
    :cond_3
    move-object v1, v0

    .line 200
    .end local v0    # "classNames":Ljava/util/Set;
    .end local v1    # "savededExternalServices":Ljava/util/Set;
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v1, "object":Ljava/lang/Object;
    move-object v1, v3

    instance-of v3, v3, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v3, :cond_5

    .line 202
    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/service/MicroService;->restoreState(Landroid/content/SharedPreferences;)V

    .line 204
    .end local v1    # "object":Ljava/lang/Object;
    :cond_5
    goto :goto_2

    .line 205
    :cond_6
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/alipay/mobile/framework/util/JSONUtil;->set2Json(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "externalServicesMapStr":Ljava/lang/String;
    const-string v1, "_externalServiceClass_"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 173
    .local v2, "object":Ljava/lang/Object;
    move-object v2, v3

    instance-of v3, v3, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v3, :cond_0

    .line 174
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/service/MicroService;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 176
    .end local v2    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

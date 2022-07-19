.class public final Lcom/alipay/mobile/quinox/a;
.super Lcom/alipay/mobile/quinox/api/QuinoxAgent;
.source "QuinoxAgentImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/resources/ResourcesManager;)V
    .locals 0
    .param p1, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p2, "resourcesManager"    # Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/quinox/a;->b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 39
    return-void
.end method


# virtual methods
.method public final findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    const/4 v1, 0x0

    move-object v2, v1

    .line 82
    .local v2, "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    return-object v1
.end method

.method public final getAllBundleNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->m()Ljava/util/Collection;

    move-result-object v0

    .line 44
    .local v0, "bundles":Ljava/util/Collection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v1, "bundleNames":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 46
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method

.method public final getBundleLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 99
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const-string v3, "merged-slink-bundles-res"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v2

    .line 103
    :cond_0
    const-string v0, "QuinoxAgent"

    if-eqz v2, :cond_1

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/a;->b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getResourcesByBundle"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 110
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t find Bundle by bundleName ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-object v1
.end method

.method public final getReusedBundleLocations()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "map":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 60
    .local v3, "application":Lcom/alipay/mobile/quinox/LauncherApplication;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v1

    .line 61
    .local v1, "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    sget-object v4, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v4, v1, :cond_0

    sget-object v4, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v4, v1, :cond_1

    .line 62
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 63
    .local v2, "updateBundleNames":Ljava/util/Set;
    move-object v2, v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v4

    .line 65
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    .local v5, "updateBundleName":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v6, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v5    # "updateBundleName":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v2    # "updateBundleNames":Ljava/util/Set;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "QuinoxAgentImpl.getReusedBundleLocations() : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QuinoxAgent"

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public final setupInstrumentation()V
    .locals 3

    .line 121
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupInstrumentation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "IllegalInstrumentation"

    invoke-static {v1, v0, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    return-void

    .line 125
    :catchall_0
    move-exception v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ExceptionInstrumentation"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    const-string v0, "QuinoxAgent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public final updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 2
    .param p1, "addBundlePaths"    # Ljava/util/List;
    .param p2, "removeBundleNames"    # Ljava/util/List;
    .param p3, "addedBundleNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    move-result v0

    return v0
.end method

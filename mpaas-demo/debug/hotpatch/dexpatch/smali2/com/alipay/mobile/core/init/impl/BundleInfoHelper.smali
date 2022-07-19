.class public Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;
.super Ljava/lang/Object;
.source "BundleInfoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/BundleContext;->getAllBundleNames()Ljava/util/Collection;

    move-result-object v0

    .line 19
    .local v0, "quinoxBundleNames":Ljava/util/Collection;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/DescriptionManager;->getBundleSet()Ljava/util/Set;

    move-result-object v1

    .line 20
    .local v1, "metaBundleNames":Ljava/util/Collection;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 21
    .local v2, "bundleNames":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_1
    return-object v2
.end method

.method public static getBundlePackageNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 33
    .local v0, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/DescriptionManager;->getPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 34
    .local v1, "metaPackages":Ljava/util/Set;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/BundleContext;->findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 35
    .local v2, "quinoxPackages":Ljava/util/Set;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 36
    .local v3, "packages":Ljava/util/Set;
    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    if-eqz v2, :cond_1

    .line 40
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_1
    return-object v3
.end method

.class public abstract Lcom/alipay/mobile/framework/DescriptionManager;
.super Ljava/lang/Object;
.source "DescriptionManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/DescriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/DescriptionManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-class v0, Lcom/alipay/mobile/framework/DescriptionManager;

    sget-object v1, Lcom/alipay/mobile/framework/DescriptionManager;->a:Lcom/alipay/mobile/framework/DescriptionManager;

    if-nez v1, :cond_1

    .line 39
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.mobile.core.impl.DescriptionManagerImpl"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/DescriptionManager;

    .line 43
    .local v1, "tmp":Lcom/alipay/mobile/framework/DescriptionManager;
    sget-object v2, Lcom/alipay/mobile/framework/DescriptionManager;->a:Lcom/alipay/mobile/framework/DescriptionManager;

    if-nez v2, :cond_0

    .line 44
    sput-object v1, Lcom/alipay/mobile/framework/DescriptionManager;->a:Lcom/alipay/mobile/framework/DescriptionManager;

    .line 46
    .end local v1    # "tmp":Lcom/alipay/mobile/framework/DescriptionManager;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "context":Landroid/content/Context;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DescriptionManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/DescriptionManager;->a:Lcom/alipay/mobile/framework/DescriptionManager;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/DescriptionManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/alipay/mobile/framework/DescriptionManager;->a:Lcom/alipay/mobile/framework/DescriptionManager;

    if-eqz v0, :cond_0

    .line 33
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DescriptionManager Instance is not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract addDescription(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract addDescriptionsFromMetaInfo(Ljava/lang/String;Lcom/alipay/mobile/framework/BaseMetaInfo;)V
.end method

.method public abstract findApplicationDescription(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findBroadcastReceiverDescription(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findServiceDescription(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValveDescription(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBundleNameByAppId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBundleNameByServiceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBundleSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription(Ljava/lang/String;ZZZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getLazyBundles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract isLazyBundle(Ljava/lang/String;)Z
.end method

.method public abstract preload()V
.end method

.method public abstract updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract updateDescriptionsFromMetaInfoCfg(Ljava/util/Collection;Ljava/util/Collection;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

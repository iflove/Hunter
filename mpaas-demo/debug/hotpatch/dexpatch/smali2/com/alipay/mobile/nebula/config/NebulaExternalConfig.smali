.class public Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;
.super Ljava/lang/Object;
.source "NebulaExternalConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaExternalConfig"

.field private static sInited:Z

.field private static sInstance:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

.field private static target:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;


# instance fields
.field private extentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInited:Z

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInstance:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    .line 15
    sput-object v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->target:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;
    .locals 3

    const-class v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInited:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInstance:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 21
    monitor-exit v0

    return-object v1

    .line 23
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    const-string v1, "com.alipay.mobile.nebula.config.NebulaExternalConfigImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    sput-object v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->target:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .end local v2    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "NebulaExternalConfig"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;-><init>()V

    .line 31
    sput-object v1, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->sInstance:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    if-nez v0, :cond_2

    .line 51
    const-class v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    .line 54
    sget-object v2, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->target:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->getExtensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->getInstance()Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->getExtensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->extentions:Ljava/util/List;

    return-object v0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    if-nez v0, :cond_2

    .line 36
    const-class v0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    .line 39
    sget-object v2, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->target:Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->getPlugins()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->getInstance()Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->getH5Plugins()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->plugins:Ljava/util/List;

    return-object v0
.end method

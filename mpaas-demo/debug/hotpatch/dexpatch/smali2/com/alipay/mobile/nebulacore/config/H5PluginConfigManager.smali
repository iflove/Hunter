.class public Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
.super Ljava/lang/Object;
.source "H5PluginConfigManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginConfigManager"

.field private static a:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->b:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    .line 28
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    monitor-enter p0

    .line 32
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->configInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "H5PluginConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addConfig "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 31
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    .end local p1    # "config":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 33
    .restart local p1    # "config":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addH5PluginConfigList(Ljava/util/List;)V
    .locals 1
    .param p1, "config"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 42
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 41
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    .end local p1    # "config":Ljava/util/List;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 43
    .restart local p1    # "config":Ljava/util/List;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 9
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "pluginManager"    # Lcom/alipay/mobile/h5container/api/H5PluginManager;

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, "time":J
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 58
    .local v0, "list":Ljava/util/List;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 59
    .local v5, "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    iget-object v6, v5, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v5    # "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    :cond_1
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 65
    monitor-exit p0

    return-object v1

    .line 68
    :cond_3
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    invoke-direct {v1, v0, p2}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;-><init>(Ljava/util/List;Lcom/alipay/mobile/h5container/api/H5PluginManager;)V

    .line 69
    .local v1, "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 70
    .local v4, "elapse":J
    const-string v6, "H5PluginConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "createPlugin "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " elapse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-object v1

    .line 53
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    .end local v2    # "time":J
    .end local v4    # "elapse":J
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    .line 51
    .end local p1    # "scope":Ljava/lang/String;
    .end local p2    # "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

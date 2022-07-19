.class public Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;
.super Ljava/lang/Object;
.source "H5EmbededViewConfigManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5EmbededViewConfigManager"

.field private static a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->b:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addTypeConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
    .locals 6
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    monitor-enter p0

    .line 35
    if-nez p1, :cond_0

    .line 36
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getType()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getBundleName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "bundleName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "className":Ljava/lang/String;
    const-string v3, "H5EmbededViewConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "H5EmbededViewConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addType repeated type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->b:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 34
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "bundleName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local p1    # "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTypeConfigs(Ljava/util/List;)V
    .locals 2
    .param p1, "configs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 50
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    .line 54
    .local v1, "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->addTypeConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    goto :goto_0

    .line 56
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "configs":Ljava/util/List;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 51
    .restart local p1    # "configs":Ljava/util/List;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public getConfig(Ljava/lang/String;)Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    return-object v0
.end method

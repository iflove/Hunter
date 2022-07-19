.class public Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;
.super Ljava/lang/Object;
.source "NebulaAppConfigCenter.java"

# interfaces
.implements Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;
    .locals 3

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;-><init>()V

    .line 29
    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->b:Ljava/util/Map;

    .line 30
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->c:Ljava/util/List;

    .line 32
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    .line 34
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/base/config/ConfigService;->addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z

    .line 38
    .end local v2    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->a:Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->c:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized observe(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    monitor-enter p0

    .line 42
    if-nez p2, :cond_0

    .line 43
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 48
    .local v2, "list":Ljava/util/List;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 56
    .local v1, "softRef":Ljava/lang/ref/SoftReference;
    move-object v1, v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_2

    .line 57
    monitor-exit p0

    return-void

    .line 59
    .end local v1    # "softRef":Ljava/lang/ref/SoftReference;
    :cond_2
    goto :goto_0

    .line 63
    :cond_3
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 41
    .end local v2    # "list":Ljava/util/List;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "observer":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 74
    .local v2, "list":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 76
    .local v1, "listener":Ljava/lang/ref/SoftReference;
    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;->onChange(Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    .end local v1    # "listener":Ljava/lang/ref/SoftReference;
    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

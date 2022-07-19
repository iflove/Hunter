.class public Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
.super Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.source "H5ProviderManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ProviderManagerImpl"

.field private static a:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/mobile/h5container/service/H5ConfigService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b()V

    .line 34
    return-void
.end method

.method private a()Lcom/alipay/mobile/h5container/service/H5ConfigService;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->e:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    if-nez v0, :cond_0

    .line 45
    const-class v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->e:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->e:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    .line 73
    const-string v0, "H5ProviderManagerImpl"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 79
    if-eqz p2, :cond_1

    .line 80
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    return-void

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 86
    return-void

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    .line 89
    iget-object v3, p2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->bundleName:Ljava/lang/String;

    .line 90
    iget-object p2, p2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->className:Ljava/lang/String;

    .line 92
    invoke-static {v3, p2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 93
    if-nez v3, :cond_3

    .line 94
    return-void

    .line 97
    :cond_3
    const/4 v4, 0x0

    .line 99
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 100
    if-nez v4, :cond_4

    .line 101
    return-void

    .line 103
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initialize ext provider "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v3

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to initialize provider "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getCustomProviders()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 114
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getCustomProviders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    :cond_5
    sget-boolean p2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 119
    const-wide/16 v1, 0xa

    cmp-long p2, v3, v1

    if-lez p2, :cond_6

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Nebula cost time initProviderConfig delta "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_6
    return-void
.end method

.method private b()V
    .locals 7

    .line 52
    const-string v0, "H5ProviderManagerImpl"

    :try_start_0
    const-string v1, "initProviderConfig"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->d:Z

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 55
    .local v1, "time":J
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5ConfigService;->getProviderInfoMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5ConfigService;->getProviderInfoMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    .line 59
    const-string v3, "use getH5ConfigService().getProviderInfoMap()"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v3, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    .line 64
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 65
    .local v3, "delta":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Nebula cost time initProviderConfig delta "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v1    # "time":J
    .end local v3    # "delta":J
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->d:Z

    .line 68
    const-string v2, "parse h5 external provider configuration exception."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    .line 40
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized getProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 138
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->d:Z

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b()V

    .line 148
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a(Ljava/lang/String;Z)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 143
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "useCache":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 160
    :try_start_0
    const-string v0, "H5ProviderManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setProvider(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    monitor-enter p0

    .line 128
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "H5ProviderManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 129
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

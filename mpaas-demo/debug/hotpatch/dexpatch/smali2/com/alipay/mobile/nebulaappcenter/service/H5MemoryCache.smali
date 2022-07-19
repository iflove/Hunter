.class public Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
.super Ljava/lang/Object;
.source "H5MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->c:Z

    .line 41
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;)V

    const-string v2, "h5_use_appCache"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->c:Z

    .line 53
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    .line 37
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->c:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 5

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->c:Z

    if-nez v1, :cond_0

    .line 80
    const-string p1, "H5MemoryCache"

    const-string p2, " can not use cache config is close"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0

    .line 84
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    return-object v0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 90
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "*"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    const-string v3, "H5MemoryCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getNebulaAppInfo from H5MemoryCache "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    monitor-exit v1

    return-object p1

    .line 91
    :cond_3
    :goto_0
    monitor-exit v1

    return-object v0

    .line 99
    :cond_4
    monitor-exit v1

    .line 103
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    const-string p2, "H5MemoryCache"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_1
    return-object v0
.end method

.method public a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 3

    .line 57
    if-nez p1, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_0
    monitor-exit v0

    .line 73
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    const-string v0, "H5MemoryCache"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "H5MemoryCache"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 113
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    monitor-exit v0

    .line 119
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    const-string p2, "H5MemoryCache"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    return-void
.end method

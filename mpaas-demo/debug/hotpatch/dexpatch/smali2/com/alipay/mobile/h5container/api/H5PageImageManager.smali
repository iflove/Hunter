.class public Lcom/alipay/mobile/h5container/api/H5PageImageManager;
.super Ljava/lang/Object;
.source "H5PageImageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PageImageManager"

.field private static instance:Lcom/alipay/mobile/h5container/api/H5PageImageManager;


# instance fields
.field private providerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PageImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->instance:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5PageImageManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5container/api/H5PageImageManager;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5PageImageManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 17
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->getParam(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/h5container/api/H5PageImageManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    monitor-enter v0

    .line 24
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->instance:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->instance:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->instance:Lcom/alipay/mobile/h5container/api/H5PageImageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 23
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getParam(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PageImage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    const-string v0, ""

    .line 78
    .local v0, "param":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 79
    .local v2, "size":I
    move v2, v1

    if-eqz v1, :cond_1

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget-object v4, v4, Lcom/alipay/mobile/h5container/api/H5PageImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^statusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget v4, v4, Lcom/alipay/mobile/h5container/api/H5PageImage;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "^size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget-object v4, v4, Lcom/alipay/mobile/h5container/api/H5PageImage;->size:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^costTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget-wide v4, v4, Lcom/alipay/mobile/h5container/api/H5PageImage;->costTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "^etag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5PageImage;

    iget-object v4, v4, Lcom/alipay/mobile/h5container/api/H5PageImage;->etag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized put(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PageImage;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5PageImage"    # Lcom/alipay/mobile/h5container/api/H5PageImage;

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    .local v1, "list":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v1    # "list":Ljava/util/List;
    .end local p0    # "this":Lcom/alipay/mobile/h5container/api/H5PageImageManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "newList":Ljava/util/List;
    move-object v1, v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v1    # "newList":Ljava/util/List;
    :cond_2
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "h5PageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 51
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "h5PageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "H5PageImageManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "h5PageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uploadLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;-><init>(Lcom/alipay/mobile/h5container/api/H5PageImageManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local p0    # "this":Lcom/alipay/mobile/h5container/api/H5PageImageManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

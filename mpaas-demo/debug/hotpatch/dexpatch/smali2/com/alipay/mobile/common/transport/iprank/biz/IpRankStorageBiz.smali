.class public Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;
.super Ljava/lang/Object;
.source "IpRankStorageBiz.java"


# static fields
.field public static final CACHE_CHANGE:I = 0x1

.field public static final CACHE_NO_CHANGE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "IPR_StorageBiz"

.field private static c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

.field private d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

.field private f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    .line 67
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->g:I

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    .line 96
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->e:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 100
    return-void
.end method

.method private a(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 6
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 316
    .local v1, "len":I
    move v1, v0

    const/4 v2, 0x0

    const-string v3, "IPR_StorageBiz"

    if-gtz v0, :cond_0

    .line 317
    const-string v0, "getIps, ips is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v2

    .line 320
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 323
    .local v0, "ips":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b(Ljava/util/ArrayList;)V

    .line 325
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 326
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    iget-object v5, v5, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v4    # "i":I
    :cond_1
    return-object v0

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "getIps exception"

    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    return-object v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$3;-><init>(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    return-void
.end method

.method private static c(Ljava/util/ArrayList;)Z
    .locals 2
    .param p0, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)Z"
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 354
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->isTimeOut()Z

    move-result v1

    .line 355
    if-nez v1, :cond_0

    .line 356
    const/4 v1, 0x0

    return v1

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    if-eqz v0, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 86
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    return-object v0

    .line 86
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 134
    return-void
.end method

.method public clearIprank()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->clearIprank()V

    .line 526
    return-void
.end method

.method public deleteFromTable()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->deleteFromIpRank()V

    .line 494
    return-void
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpFromCache(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    .local v1, "addresses":[Ljava/net/InetAddress;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 150
    return-object v1

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpFromDB(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAllIpRankModels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 394
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v1

    .line 395
    .local v1, "tmpLbsId":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v3, v1, v2, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getAllIpRankModels(JI)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getCache()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    return-object v0
.end method

.method public declared-synchronized getCacheStatus()I
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGivenNumIpRankModels(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 406
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v1

    .line 407
    .local v1, "tmpLbsId":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getGivenNumIpRankModels(IJI)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getHostAndIpRankModels()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getAllIpRankModels()Ljava/util/ArrayList;

    move-result-object v1

    .line 449
    .local v1, "allIpRankModels":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 450
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v3, "tmpModelList":Ljava/util/ArrayList;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 452
    .local v4, "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v5, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 454
    .local v5, "tmpDomain":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 456
    .local v6, "oldList":Ljava/util/ArrayList;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 458
    .end local v6    # "oldList":Ljava/util/ArrayList;
    :cond_0
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v3    # "tmpModelList":Ljava/util/ArrayList;
    .end local v4    # "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .end local v5    # "tmpDomain":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getHostAndIpRankModels(I)Ljava/util/HashMap;
    .locals 7
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;>;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getGivenNumIpRankModels(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 475
    .local v1, "allIpRankModels":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v3, "tmpModelList":Ljava/util/ArrayList;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 478
    .local v4, "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v5, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 480
    .local v5, "tmpDomain":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 481
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 482
    .local v6, "oldList":Ljava/util/ArrayList;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 484
    .end local v6    # "oldList":Ljava/util/ArrayList;
    :cond_0
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v3    # "tmpModelList":Ljava/util/ArrayList;
    .end local v4    # "tmpModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .end local v5    # "tmpDomain":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getIpFromCache(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IPR_StorageBiz"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "getIpFromCache,host is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v2

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v2

    .line 173
    .local v3, "ipRankModels":Ljava/util/ArrayList;
    move-object v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 179
    .local v0, "netType":I
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v4

    .line 182
    .local v4, "tmpLbsId":J
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    iget v7, v7, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    if-ne v7, v0, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    iget-wide v6, v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->e:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->computeIpScore(Ljava/util/ArrayList;)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpList(Ljava/util/ArrayList;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 191
    .local v2, "addresses":[Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getIpFromCache,hit it,host="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;-><init>(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V

    .line 210
    :cond_3
    return-object v2

    .line 183
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    :cond_4
    :goto_0
    const-string v6, "getIpFromCache,netType\u3001lbs not hit,return null"

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v2

    .line 174
    .end local v0    # "netType":I
    .end local v4    # "tmpLbsId":J
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getIpFromCache,not hit return null,host="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v2
.end method

.method public getIpFromDB(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IPR_StorageBiz"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "getIpFromDB,host is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-object v2

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 226
    .local v0, "netType":I
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v3

    .line 228
    .local v3, "tmpLbsId":J
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v5, p1, v3, v4, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getIpRankModels(Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v5

    move-object v6, v2

    .line 229
    .local v6, "list":Ljava/util/ArrayList;
    move-object v6, v5

    const-string v7, "getIpFromDB,host: "

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->e:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->computeIpScore(Ljava/util/ArrayList;)V

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",success"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpList(Ljava/util/ArrayList;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 245
    .local v1, "addresses":[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->c(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    new-instance v2, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$2;-><init>(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V

    .line 259
    :cond_2
    return-object v1

    .line 230
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,has no ipinfo in DB"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v2
.end method

.method public getIpList(Ljava/util/ArrayList;)[Ljava/net/InetAddress;
    .locals 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)[",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 288
    .local v2, "ips":[Ljava/lang/String;
    move-object v2, v0

    const-string v3, "IPR_StorageBiz"

    if-nez v0, :cond_0

    .line 289
    const-string v0, "getIpList,return null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v1

    .line 294
    :cond_0
    :try_start_0
    array-length v0, v2

    const/4 v4, 0x0

    .line 295
    .local v4, "len":I
    move v4, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 296
    .local v0, "addresses":[Ljava/net/InetAddress;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 297
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    .end local v5    # "i":I
    :cond_1
    return-object v0

    .line 302
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v4    # "len":I
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "getIpList,Exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 300
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v4, "getIpList,UnknownHostException"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "e":Ljava/net/UnknownHostException;
    nop

    .line 305
    :goto_1
    return-object v1
.end method

.method public getIpNum()I
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 504
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v1

    .line 506
    .local v1, "lbsId":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v3, v1, v2, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getIpNum(JI)I

    move-result v3

    return v3
.end method

.method public getIpRankManager()Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    return-object v0
.end method

.method public getIpRankModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 433
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v7

    .line 435
    .local v7, "tmpLbsId":J
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v7

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getIpRankModel(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-result-object v1

    return-object v1
.end method

.method public getIpRankModel(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "lbsId"    # J

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getIpRankModel(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-result-object v0

    return-object v0
.end method

.method public getTableSize()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getTableSize()I

    move-result v0

    return v0
.end method

.method public putIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 1
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 368
    if-nez p1, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->putIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 372
    return-void
.end method

.method public reloadIpInfoToCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 269
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v1

    .line 270
    .local v1, "tmpLbsId":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getIpRankModels(Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    .line 271
    .local v4, "list":Ljava/util/ArrayList;
    move-object v4, v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reloadIpInfoToCache complete,host:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IPR_StorageBiz"

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 272
    :cond_2
    :goto_0
    return-void
.end method

.method public removeIpsByHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->removeIpsByHost(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public removeipsNotinLocaldns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ipParams"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->f:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v7

    .line 531
    .local v7, "lbsId":J
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v0

    .line 532
    .local v0, "netType":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    move-object v2, p1

    move-wide v3, v7

    move v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->removeipsNotinLocaldns(Ljava/lang/String;JILjava/lang/String;)V

    .line 533
    return-void
.end method

.method public declared-synchronized setCacheStatus(I)V
    .locals 0
    .param p1, "status"    # I

    monitor-enter p0

    .line 115
    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;
    .end local p1    # "status":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 1
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 380
    if-nez p1, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->updateIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 384
    return-void
.end method

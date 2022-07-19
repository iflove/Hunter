.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
.super Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.source "H5AppConfigDao.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;-><init>()V

    .line 41
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .locals 2

    .line 336
    if-nez p1, :cond_0

    .line 337
    new-instance p1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;-><init>()V

    .line 339
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getApp_pool_limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setApp_pool_limit(I)V

    .line 340
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getNormalReqRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setNormalReqRate(D)V

    .line 341
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getLimitReqRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setLimitReqRate(D)V

    .line 342
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setExtra(Ljava/lang/String;)V

    .line 343
    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 548
    nop

    .line 549
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 550
    return-object v1

    .line 553
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 554
    :catch_0
    move-exception p0

    .line 555
    const-string v0, "H5AppConfigDao"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    nop

    .line 557
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->cleanAllFailList()V

    move-object p0, v1

    .line 559
    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 562
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 564
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 565
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    goto :goto_1

    .line 570
    :cond_2
    return-object v0

    .line 560
    :cond_3
    :goto_2
    return-object v1
.end method

.method public static declared-synchronized c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    .line 47
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 574
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 575
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 576
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 577
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_0
    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 584
    const-string p0, ""

    return-object p0

    .line 586
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 590
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(D)V
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNormalReqRate rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;D)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppPoolLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$17;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$17;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;I)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
    .locals 4

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V

    .line 330
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createOrUpdateConfig cost "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5AppConfigDao"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$6;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$6;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOrUpdateExtra extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cost:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5AppConfigDao"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$1;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method public b(D)V
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLimitReqRate rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$7;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;D)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOrUpdateStrictReqRate rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;I)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$11;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$11;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    nop

    .line 105
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$12;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$12;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFailedRequestAppList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 127
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$13;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$13;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public f()D
    .locals 7

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    nop

    .line 154
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$14;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$14;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 171
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 172
    const-wide v2, 0x409c200000000000L    # 1800.0

    .line 175
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNormalReqRate limit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppConfigDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-wide v2
.end method

.method public g()D
    .locals 5

    .line 186
    nop

    .line 187
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$15;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$15;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 204
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 205
    const-wide v0, 0x4082c00000000000L    # 600.0

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLimitReqRate limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5AppConfigDao"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 215
    nop

    .line 216
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$16;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$16;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastAllUpdateTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppConfigDao"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 266
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 274
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 373
    nop

    .line 374
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$5;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtra :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppConfigDao"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-object v0
.end method

.method public k()I
    .locals 3

    .line 463
    nop

    .line 464
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$8;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x3

    .line 485
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppPoolLimit limit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppConfigDao"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return v0
.end method

.method public l()I
    .locals 3

    .line 493
    nop

    .line 494
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$9;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 510
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStrictReqRate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppConfigDao"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return v0
.end method

.method public m()V
    .locals 1

    .line 517
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$10;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$10;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 542
    return-void
.end method

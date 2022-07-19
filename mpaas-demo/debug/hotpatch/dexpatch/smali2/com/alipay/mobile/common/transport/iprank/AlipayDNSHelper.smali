.class public Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;
    }
.end annotation


# static fields
.field public static final SPEEDTEST_STATUS_BUSY:I = 0x1

.field public static final SPEEDTEST_STATUS_IDLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "IPR_ADNSHelper"

.field private static a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;


# instance fields
.field private b:J

.field private final c:I

.field private d:I

.field public domainFeedback:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

.field private e:I

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public localDNSResolve:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

.field public mContext:Landroid/content/Context;

.field public speedTestBiz:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

.field public storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->speedTestBiz:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->localDNSResolve:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    .line 57
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->domainFeedback:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    .line 67
    const v0, 0x36ee80

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->c:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    .line 81
    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    .line 104
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->localDNSResolve:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->speedTestBiz:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->domainFeedback:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a()V

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f()V

    .line 121
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 134
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x36ee80

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->c()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->h()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 34
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    return p1
.end method

.method private b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g:Ljava/util/List;

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g:Ljava/util/List;

    .line 330
    const-string/jumbo v1, "mygw.alipay.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g:Ljava/util/List;

    const-string/jumbo v1, "mobilegw.alipay.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 5

    .line 373
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->b:J

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d()V

    .line 379
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$5;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V

    .line 387
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "iprank_last_test_time"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 394
    return-void
.end method

.method private e()J
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    const-string v1, "iprank_last_test_time"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    const-string v1, "iprank_queryNum"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getIntData(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    const-string v1, "iprank_hitNum"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getIntData(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    .line 408
    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 409
    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    .line 411
    :cond_0
    if-ne v0, v3, :cond_1

    .line 412
    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    .line 414
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 421
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    .locals 2

    .line 88
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    if-eqz v0, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 95
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->a:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    return-object v0

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private h()V
    .locals 5

    const-string v0, "IPR_ADNSHelper"

    .line 437
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v2, 0x0

    .line 438
    .local v2, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v1

    const-string v3, "IpRank"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "ratio"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "queryNum"

    iget v4, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "hitNum"

    iget v4, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Lrucache"

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ip rank perf:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v2    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 445
    :catchall_0
    move-exception v1

    .line 446
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public feedback(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .param p4, "rtt"    # I

    .line 286
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v0

    const-string v1, "IPR_ADNSHelper"

    if-nez v0, :cond_0

    .line 287
    const-string v0, "feedback,iprank is off"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "feedback,domain="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rtt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeSerial(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IPR_ADNSHelper"

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "getAllByName host is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v1

    .line 147
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "iprank is off,use local dns"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 156
    .local v1, "addresses":[Ljava/net/InetAddress;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getAllByName,host: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,ips: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    .line 160
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g()V

    .line 161
    const-string v0, "iprank"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    return-object v1

    .line 166
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAllByName,ex:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    const-string v0, "getAllByName return null,use local dns1"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IPR_ADNSHelper"

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "getAllByName host is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v1

    .line 182
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_H5_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "ipH5Switch":Ljava/lang/String;
    if-eqz p2, :cond_1

    iget-byte v3, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "T"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    const-string v1, "H5 don\'t use ip rank"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 189
    :cond_1
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    const-string v1, "iprank is off,use local dns"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 195
    :cond_2
    :try_start_0
    iget v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I

    .line 197
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 198
    .local v1, "addresses":[Ljava/net/InetAddress;
    move-object v1, v3

    if-eqz v3, :cond_3

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllByName,host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,ips: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I

    .line 202
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g()V

    .line 203
    const-string v3, "iprank"

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    return-object v1

    .line 208
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_3
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllByName,ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "getAllByName return null,use local dns2"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g()V

    .line 213
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 217
    const-string v0, "localdns"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->addDnsType(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->localDNSResolve:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public putIpRankMode(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 3
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->putIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v0

    .line 467
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putIpRankMode ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPR_ADNSHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public removeIpsInIpRank(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "IPR_ADNSHelper"

    if-nez v0, :cond_1

    .line 227
    const-string/jumbo v0, "network isn\'t available,no remove"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 231
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeIps,host=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->removeIpsByHost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$1;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 252
    const-string v0, "IPR_ADNSHelper"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeSingleIp,host=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ip=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;-><init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    return-void

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void

    .line 253
    :cond_1
    :goto_0
    return-void
.end method

.method public seeYouAgain()V
    .locals 3

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->clearIprank()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seeYouAgain ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPR_ADNSHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.class public Lcom/alipay/mobile/monitor/track/TrackAutoHelper;
.super Ljava/lang/Object;
.source "TrackAutoHelper.java"


# static fields
.field public static AUTO_TRACK_TYPE:Ljava/lang/String; = null

.field public static PARAMS_HEADER:Ljava/lang/String; = null

.field public static PARAMS_HEADER_AUTO:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "TrackAutoHelper"

.field private static a:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

.field private static e:Landroid/os/Handler;


# instance fields
.field public H5_PAGE_URL:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field public pageLastEndTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "autotrack"

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->AUTO_TRACK_TYPE:Ljava/lang/String;

    .line 25
    const-string v0, "header"

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER:Ljava/lang/String;

    .line 27
    const-string v0, "D-AM"

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER_AUTO:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->c:Ljava/util/HashMap;

    .line 36
    const-string v0, "first"

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->d:Ljava/lang/String;

    .line 38
    const-string v0, "h5pageurl"

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->H5_PAGE_URL:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->pageLastEndTime:J

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a()V

    .line 50
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v0, :cond_1

    .line 354
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->getPageSpmId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_1
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 356
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getViewTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    return-object v0

    .line 362
    .end local v0    # "tag":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "extParams"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 443
    if-eqz p2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->H5_PAGE_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->H5_PAGE_URL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-object v0

    .line 451
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "actionRefer"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "refer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->d:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "lastInfo"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .param p2, "spm"    # Ljava/lang/String;
    .param p3, "needRpc"    # Z

    .line 497
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iput-object p2, p1, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spm:Ljava/lang/String;

    .line 507
    iput-boolean p3, p1, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->needRpc:Z

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->d:Ljava/lang/String;

    .line 510
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->updateCurrentPageInfo(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)V

    .line 511
    return-void

    .line 498
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TrackAutoHelper"

    const-string/jumbo v2, "updateLastInfoSpm spm or lastInfo is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private a(Ljava/lang/Object;Z)Z
    .locals 3
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "isHookInvoke"    # Z

    .line 366
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 367
    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 371
    if-nez p2, :cond_1

    .line 372
    return v2

    .line 374
    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v1, :cond_2

    .line 375
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->isTrackPage()Z

    move-result v0

    return v0

    .line 377
    :cond_2
    return v0

    .line 379
    :cond_3
    instance-of v0, p1, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v0, :cond_4

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->isTrackPage()Z

    move-result v0

    return v0

    .line 382
    :cond_4
    return v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/monitor/track/TrackAutoHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 468
    return-object v0

    .line 471
    :cond_0
    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 472
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 474
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 475
    :catchall_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TrackAutoHelper"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;
    .locals 2

    .line 64
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    return-object v0
.end method


# virtual methods
.method public dropPageInfo(Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Ljava/lang/Object;

    .line 387
    if-nez p1, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 393
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 397
    .local v1, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v1, :cond_2

    .line 398
    return-void

    .line 402
    :cond_2
    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->e:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$2;-><init>(Lcom/alipay/mobile/monitor/track/TrackAutoHelper;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    return-void
.end method

.method public getAutoPageInfoByView(Ljava/lang/Object;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 6
    .param p1, "view"    # Ljava/lang/Object;

    .line 418
    const/4 v0, 0x0

    const-string v1, "TrackAutoHelper"

    if-nez p1, :cond_0

    .line 419
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "getPageInfoByView is null or spm is null"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "getPageInfoByView() is null"

    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-object v0

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 430
    .local v3, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v3, :cond_2

    .line 431
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "getPageInfoByView view is null"

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v0

    .line 434
    :cond_2
    return-object v3
.end method

.method public getViewKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .line 485
    if-nez p1, :cond_0

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 17
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "hashMap"    # Ljava/util/HashMap;
    .param p5, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p6, "isHookInvoke"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/behavor/Behavor;",
            "Z)",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;"
        }
    .end annotation

    .line 164
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    const-string v3, "TrackAutoHelper"

    if-nez v2, :cond_0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "auto_prefixEnd_View is null"

    invoke-interface {v4, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v0

    .line 169
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-direct {v1, v2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .end local p1    # "spm":Ljava/lang/String;
    .local v4, "spm":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auto_prefix End_View spm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v4    # "spm":Ljava/lang/String;
    .restart local p1    # "spm":Ljava/lang/String;
    :cond_1
    move-object/from16 v4, p1

    .line 175
    .end local p1    # "spm":Ljava/lang/String;
    .restart local v4    # "spm":Ljava/lang/String;
    :goto_0
    move/from16 v5, p6

    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Ljava/lang/Object;Z)Z

    move-result v6

    .line 176
    .local v6, "isTrackPage":Z
    if-nez v6, :cond_2

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "auto_prefix is not track page(end) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-interface {v7, v3, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v0

    .line 182
    :cond_2
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "key":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string v9, "auto_prefixEnd_view.getViewKey() is null"

    invoke-interface {v8, v3, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v0

    .line 189
    :cond_3
    iget-object v8, v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 190
    .local v8, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v8, :cond_4

    .line 191
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "auto_prefixEnd_pageInfo is null"

    invoke-interface {v9, v3, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v0

    .line 195
    :cond_4
    iget-boolean v0, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->isEnd:Z

    if-eqz v0, :cond_5

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "auto_prefix key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is already call pageEnd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object v8

    .line 201
    :cond_5
    const-wide/16 v9, 0x0

    .line 202
    .local v9, "endTimeInterval":J
    iget-wide v11, v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->pageLastEndTime:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_6

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->pageLastEndTime:J

    sub-long v9, v11, v13

    .line 205
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->pageLastEndTime:J

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->isEnd:Z

    .line 209
    if-nez p5, :cond_7

    .line 210
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v11, v0

    .end local p5    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    goto :goto_1

    .line 209
    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .restart local p5    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_7
    move-object/from16 v11, p5

    .line 214
    .end local p5    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v11, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :goto_1
    const/4 v0, 0x0

    .line 215
    .local v0, "map":Ljava/util/HashMap;
    if-eqz p4, :cond_8

    .line 216
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/HashMap;

    move-object v12, v0

    goto :goto_2

    .line 215
    :cond_8
    move-object v12, v0

    .line 221
    .end local v0    # "map":Ljava/util/HashMap;
    .local v12, "map":Ljava/util/HashMap;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    iget-object v13, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    const-string v14, "actionRefer"

    invoke-interface {v0, v14, v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "//"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2, v12}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setxPath(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v11, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 225
    iget-object v0, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefer(Ljava/lang/String;)V

    .line 226
    iget-object v0, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageId(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->AUTO_TRACK_TYPE:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move/from16 p1, v6

    .end local v6    # "isTrackPage":Z
    .local p1, "isTrackPage":Z
    iget-wide v5, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime10:J

    sub-long/2addr v13, v5

    .line 229
    .local v13, "stayTime":J
    iput-wide v13, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStayTime:J

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageStayTime(Ljava/lang/String;)V

    .line 232
    iget-object v0, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    const-string v6, "first"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->c:Ljava/util/HashMap;

    sget-object v6, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 235
    const-string v0, "0"

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSpmStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 237
    :cond_9
    const-string v0, "1"

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSpmStatus(Ljava/lang/String;)V

    .line 240
    :goto_3
    const/4 v6, 0x0

    .line 242
    .local v6, "configParam":Ljava/util/HashMap;
    instance-of v0, v2, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v0, :cond_a

    .line 244
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    .line 245
    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->getExtParam()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 248
    goto :goto_4

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    invoke-interface {v15, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_4
    if-eqz v12, :cond_b

    if-eqz v6, :cond_b

    .line 253
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_5

    .line 254
    :cond_b
    if-nez v12, :cond_c

    .line 255
    move-object v12, v6

    .line 259
    :cond_c
    :goto_5
    if-eqz v12, :cond_f

    .line 260
    const-string v0, "entityContentTagId"

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "entityId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 262
    invoke-virtual {v11, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setEntityContentId(Ljava/lang/String;)V

    .line 265
    :cond_d
    sget-object v15, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 266
    .local v15, "header":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 267
    move-object/from16 p5, v0

    .end local v0    # "entityId":Ljava/lang/String;
    .local p5, "entityId":Ljava/lang/String;
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER_AUTO:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 266
    .end local p5    # "entityId":Ljava/lang/String;
    .restart local v0    # "entityId":Ljava/lang/String;
    :cond_e
    move-object/from16 p5, v0

    .line 269
    .end local v0    # "entityId":Ljava/lang/String;
    .end local v15    # "header":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 270
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 271
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->PARAMS_HEADER_AUTO:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_7
    if-eqz v12, :cond_10

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endTimeInterval"

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_10
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "iter":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 282
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 284
    .local v5, "k":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 285
    .local v15, "v":Ljava/lang/String;
    invoke-virtual {v11, v5, v15}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "k":Ljava/lang/String;
    .end local v15    # "v":Ljava/lang/String;
    goto :goto_9

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9
    goto :goto_8

    .line 291
    :cond_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "page end "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " name = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " refer = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " spm = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " endTimeInterval = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " stayTime = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-interface {v0, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 298
    return-object v8
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "isHookInvoke"    # Z

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 78
    return-void
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 8
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "isHookInvoke"    # Z
    .param p4, "needRpc"    # Z

    .line 83
    const-string v0, "TrackAutoHelper"

    if-nez p2, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "auto_prefix Start_view view is null"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0, p2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto_prefix Start_view spm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Ljava/lang/Object;Z)Z

    move-result v1

    .line 96
    .local v1, "isTrackPage":Z
    if-nez v1, :cond_2

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_prefix is not track page(start) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "auto_prefix Start_view.getViewKey() is null"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 111
    .local v3, "lastInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->isEnd:Z

    if-nez v4, :cond_4

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "auto_prefixStart_not call end,and start twice,update spm"

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v3, p1, p4}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->a(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;Ljava/lang/String;Z)V

    .line 117
    return-void

    .line 120
    :cond_4
    new-instance v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;-><init>()V

    .line 121
    .local v4, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime10:J

    .line 122
    iget-wide v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime10:J

    invoke-static {v5, v6}, Lcom/alipay/mobile/monitor/track/IntUtil;->a(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "__"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    .line 126
    iput-object p1, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spm:Ljava/lang/String;

    .line 127
    iput-boolean p4, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->needRpc:Z

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->miniPageId:Ljava/lang/String;

    .line 130
    invoke-direct {p0, p2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->className:Ljava/lang/String;

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->d:Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v5, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->updateCurrentPageInfo(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)V

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "page start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " spm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    instance-of v5, p2, Landroid/view/View;

    if-eqz v5, :cond_5

    .line 142
    move-object v5, p2

    check-cast v5, Landroid/view/View;

    new-instance v6, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;

    invoke-direct {v6, p0, v2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;-><init>(Lcom/alipay/mobile/monitor/track/TrackAutoHelper;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_5
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

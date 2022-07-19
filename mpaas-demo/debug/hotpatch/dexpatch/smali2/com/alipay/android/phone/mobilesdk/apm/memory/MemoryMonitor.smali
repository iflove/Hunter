.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:Z

.field private static d:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;


# instance fields
.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Object;

.field private m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b:J

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    invoke-interface {v0, v1, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private a()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private a(F)V
    .locals 8

    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    const-string/jumbo v1, "memoryDalvikHeapAlloc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    nop

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    add-int/lit8 v4, v1, -0x1

    :goto_0
    add-int/lit8 v5, v1, -0x6

    const-string v6, "&"

    const/4 v7, 0x0

    if-lt v4, v5, :cond_3

    .line 370
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_1

    .line 371
    nop

    .line 373
    goto :goto_2

    .line 375
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 376
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    :cond_2
    invoke-virtual {v3, v7, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    .line 384
    :goto_2
    if-eqz v7, :cond_4

    .line 386
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    invoke-static {v1, v6}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "memoryActivityStack"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v0, "memory"

    const-string v1, "largeMemory"

    invoke-static {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    :cond_4
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V
    .locals 9
    .param p1, "stats"    # Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    .line 316
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b()I

    move-result v0

    int-to-long v0, v0

    .line 317
    .local v0, "totalPss":J
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a()F

    move-result v2

    .line 319
    .local v2, "healthScore":F
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    .line 320
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    .line 322
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v3

    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    monitor-enter v4

    .line 328
    :try_start_1
    const-string/jumbo v3, "memoryTotalPss"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/lang/String;F)V

    .line 329
    const-string/jumbo v3, "memoryDalvikHeapAlloc"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c()J

    move-result-wide v5

    long-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/lang/String;F)V

    .line 330
    const-string/jumbo v3, "memoryDalvikPss"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/lang/String;F)V

    .line 331
    const-string/jumbo v3, "memoryNativePss"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/lang/String;F)V

    .line 332
    const-string/jumbo v3, "memoryOtherPss"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/lang/String;F)V

    .line 335
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g()J

    move-result-wide v5

    long-to-float v3, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float v3, v3, v5

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(F)V

    .line 336
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double v5, v5, v7

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 340
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MemoryMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "current : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " max : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Z)V

    .line 343
    :cond_0
    return-void

    .line 336
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 324
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private a(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueInList"    # F

    .line 346
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 347
    .local v1, "list":Ljava/util/ArrayList;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    move-object v1, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method private a(Z)V
    .locals 9
    .param p1, "isOOM"    # Z

    const-string v0, "MemoryMonitor"

    .line 627
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v1, "releasedActivities":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 630
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 631
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 632
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 634
    .local v5, "weakActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    const-string v8, "1"

    goto :goto_1

    :cond_0
    const-string v8, "0"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-nez p1, :cond_1

    .line 637
    if-nez v5, :cond_1

    .line 638
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "weakActivity":Landroid/app/Activity;
    :cond_1
    goto :goto_0

    .line 644
    :cond_2
    if-nez p1, :cond_3

    .line 645
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 646
    .local v3, "activityName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->p:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    nop

    .end local v3    # "activityName":Ljava/lang/String;
    goto :goto_2

    .line 652
    .end local v1    # "releasedActivities":Ljava/util/ArrayList;
    :cond_3
    return-void

    .line 650
    :catchall_0
    move-exception v1

    .line 651
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    .line 255
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 256
    return-void
.end method

.method private c()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 266
    return-void
.end method

.method private d()V
    .locals 4

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "runSampling"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "runSampling in MAX : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 292
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Z)V

    .line 293
    .local v0, "stats":Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V

    .line 294
    return-void
.end method

.method private e()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    .line 300
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 302
    :cond_0
    monitor-exit v0

    .line 312
    const/4 v0, 0x1

    return v0

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 13

    .line 395
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 401
    .local v2, "nothing":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v3, "runDetecting: no GC detected"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 407
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryMonitor"

    const-string/jumbo v4, "runDetecting: GC occured !"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 410
    .end local v2    # "nothing":Ljava/lang/Object;
    .local v0, "nothing":Ljava/lang/Object;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:Ljava/lang/ref/Reference;

    .line 412
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    .line 413
    monitor-enter v2

    .line 414
    const/4 v3, 0x0

    .line 416
    .local v3, "leaks":Ljava/util/ArrayList;
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    .line 417
    .local v6, "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    move-object v6, v7

    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e()Z

    move-result v7

    .line 419
    .local v5, "isPerhapsLeak":Z
    if-eqz v7, :cond_2

    .line 423
    if-nez v3, :cond_3

    .line 424
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 427
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    nop

    .end local v5    # "isPerhapsLeak":Z
    .end local v6    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    goto :goto_0

    .line 430
    :cond_4
    if-nez v3, :cond_5

    .line 431
    monitor-exit v2

    return-void

    .line 434
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    .line 435
    .restart local v6    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    move-object v6, v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->b()J

    move-result-wide v7

    .line 437
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "sCount":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->toString()Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "reason":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v1, "report":Ljava/util/HashMap;
    move-object v1, v9

    const-string/jumbo v10, "memVC"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v9, "count"

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v9, "reason"

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "MemoryMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "runDetecting: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v9, "memory"

    const-string v10, "leak"

    invoke-static {v9, v10, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    .end local v1    # "report":Ljava/util/HashMap;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    .end local v7    # "sCount":Ljava/lang/String;
    .end local v8    # "reason":Ljava/lang/String;
    goto :goto_1

    .line 449
    .end local v3    # "leaks":Ljava/util/ArrayList;
    :cond_6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 451
    :cond_7
    return-void

    .line 396
    .end local v0    # "nothing":Ljava/lang/Object;
    :cond_8
    :goto_2
    return-void
.end method

.method private g()Landroid/os/Bundle;
    .locals 19

    .line 464
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 465
    return-object v2

    .line 468
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryMonitor"

    const-string v4, "getHealthThenReset"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Z)V

    .line 471
    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V

    .line 474
    const-string v0, ""

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 480
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v5

    .line 481
    nop

    .line 483
    :try_start_0
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 484
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    .line 485
    goto :goto_0

    .line 487
    :cond_1
    cmpl-float v2, v7, v6

    if-nez v2, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    .line 489
    :goto_1
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 490
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 492
    cmpg-float v2, v7, v6

    if-gez v2, :cond_3

    .line 493
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v8

    const-string v9, "MemoryMonitor"

    const-string v10, "getHealthThenReset"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "average: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 497
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "MemoryMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getHealthThenReset, average: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v7, 0x0

    .line 500
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v5, v7, v2

    if-lez v5, :cond_4

    .line 501
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v8

    const-string v9, "MemoryMonitor"

    const-string v10, "getHealthThenReset"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "average: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v8, "MemoryMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getHealthThenReset, average: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/high16 v7, 0x3f800000    # 1.0f

    .line 509
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v5, "%.2f"

    new-array v8, v3, [Ljava/lang/Object;

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v7, v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 512
    iget-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    const-wide/high16 v10, -0x8000000000000000L

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v5, v7, v12

    if-eqz v5, :cond_5

    iget-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    cmp-long v5, v7, v10

    if-eqz v5, :cond_5

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    const-wide/16 v14, 0x400

    div-long/2addr v7, v14

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "~"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    div-long/2addr v7, v14

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_5
    nop

    .line 519
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 520
    const-string/jumbo v7, "memoryHealth"

    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v7, "memoryHealthDesc"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string v8, "MemoryMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "memoryHealth:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v7, "MemoryMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "memoryHealthDesc:"

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 527
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    monitor-enter v2

    .line 528
    :try_start_1
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 530
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 533
    nop

    .line 534
    const-string/jumbo v14, "memoryTotalPss"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 535
    nop

    .line 536
    const-string/jumbo v14, "pss:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_3

    .line 537
    :cond_6
    const-string/jumbo v14, "memoryDalvikHeapAlloc"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 538
    nop

    .line 539
    const-string v14, "dalvikAlloc:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_3

    .line 540
    :cond_7
    const-string/jumbo v14, "memoryDalvikPss"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 541
    nop

    .line 542
    const-string v14, "dalvikPss:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_3

    .line 543
    :cond_8
    const-string/jumbo v14, "memoryNativePss"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 544
    nop

    .line 545
    const-string/jumbo v14, "nativePss:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_3

    .line 546
    :cond_9
    const-string/jumbo v14, "memoryOtherPss"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 547
    nop

    .line 548
    const-string/jumbo v14, "otherPss:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_3

    .line 546
    :cond_a
    const/4 v14, 0x0

    .line 551
    :goto_3
    nop

    .line 552
    nop

    .line 555
    nop

    .line 556
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .line 558
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v6

    if-lez v18, :cond_b

    .line 559
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v16, v16, v18

    .line 560
    add-int/lit8 v10, v10, 0x1

    .line 564
    :cond_b
    if-eqz v14, :cond_d

    .line 565
    const/high16 v18, 0x44800000    # 1024.0f

    if-eqz v11, :cond_c

    .line 566
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float v11, v11, v18

    float-to-long v12, v11

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    const/4 v11, 0x0

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_4

    .line 569
    :cond_c
    const-string v12, "&"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float v12, v12, v18

    float-to-long v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 573
    :cond_d
    const-wide v12, 0x7fffffffffffffffL

    goto :goto_4

    .line 575
    :cond_e
    if-eqz v14, :cond_f

    .line 576
    const-string/jumbo v11, "|"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_f
    if-lez v10, :cond_10

    .line 580
    int-to-float v10, v10

    div-float v16, v16, v10

    goto :goto_5

    .line 582
    :cond_10
    const/16 v16, 0x0

    .line 585
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 587
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v10, "%.2f"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 588
    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string v11, "MemoryMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v11, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-wide/high16 v10, -0x8000000000000000L

    const-wide v12, 0x7fffffffffffffffL

    goto/16 :goto_2

    .line 591
    :cond_11
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 592
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 596
    :cond_12
    :goto_6
    const-string v0, "dalvikTotalAvailable:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo v0, "memoryDetail"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MemoryMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "memoryDetail:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 602
    const-string/jumbo v0, "memoryTrimLevel"

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MemoryMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "memoryTrimLevel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/ComponentCallbacksImpl;->c()V

    .line 609
    :cond_13
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    .line 610
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    .line 612
    return-object v5

    .line 490
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 516
    :cond_14
    return-object v2
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
    .locals 2

    .line 116
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    if-nez v0, :cond_1

    .line 117
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    .line 121
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    return-object v0
.end method


# virtual methods
.method public getActivityDestroyEntities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDetectedEntities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHealthThenReset()Landroid/os/Bundle;
    .locals 4

    .line 455
    const-string v0, "getHealthThenReset"

    const-string v1, "MemoryMonitor"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 457
    :catchall_0
    move-exception v2

    .line 458
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleDestroyActivities()V
    .locals 1

    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Z)V

    .line 623
    return-void
.end method

.method public notifyLeak(Ljava/util/Map;)V
    .locals 3
    .param p1, "leakReport"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "notifyLeak"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v0, "memory"

    const-string v1, "canary"

    invoke-static {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 619
    return-void
.end method

.method public onUserLeave()V
    .locals 4

    .line 225
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Z

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Z

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "onUserLeave"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    .line 238
    :cond_1
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    if-eqz v0, :cond_2

    .line 239
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/Object;

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    .line 240
    invoke-virtual {v0, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_2
    return-void

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public declared-synchronized onUserResume()V
    .locals 7

    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Z

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "onUserResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a()V

    .line 209
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    .line 216
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->o:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;

    sget-wide v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:J

    sget-wide v5, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b:J

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_2
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MemoryMonitor"

    const-string/jumbo v3, "onUserResume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    .end local v0    # "t":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    .line 156
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    .line 161
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 163
    .local v0, "nothing":Ljava/lang/Object;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:Ljava/lang/ref/Reference;

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/HashMap;

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->p:Ljava/util/HashMap;

    .line 170
    .end local v0    # "nothing":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b()V

    .line 171
    return-void
.end method

.method public stop()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryMonitor"

    const-string/jumbo v2, "stop"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->onUserLeave()V

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:J

    .line 184
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:J

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/util/HashMap;

    .line 189
    sget-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:Z

    if-eqz v1, :cond_1

    .line 190
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:Ljava/lang/ref/Reference;

    .line 191
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/HashMap;

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c()V

    .line 196
    return-void
.end method

.class public final Lcom/alipay/mobile/quinox/utils/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static final ALIAS_HUAWEI:Ljava/lang/String; = "huawei"

.field public static IS_ALIPAY:Z = false

.field public static IS_PERF_VERSION:Z = false

.field public static final PER_USER_RANGE:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "SystemUtil"

.field private static canHookArtFlag:I

.field private static canHookFlag:I

.field private static isUILaunch:I

.field static sFrequency:I

.field private static sHuaweiPreloadLaunch:Ljava/lang/Boolean;

.field private static sPreloadBy:Ljava/lang/String;

.field private static sPreloadByCalculated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPreloadLaunch:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookFlag:I

    .line 59
    sput v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArtFlag:I

    .line 64
    sput v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch:I

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_ALIPAY:Z

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadByCalculated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_PERF_VERSION:Z

    .line 217
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sFrequency:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static declared-synchronized canHook()Z
    .locals 11

    const-class v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;

    monitor-enter v0

    .line 423
    :try_start_0
    sget v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 424
    monitor-exit v0

    return v2

    .line 426
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 427
    monitor-exit v0

    return v3

    .line 430
    :cond_1
    :try_start_1
    sput v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookFlag:I

    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v1, v5, :cond_2

    goto :goto_0

    .line 436
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v1

    .line 437
    .local v1, "isArt":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->supportARM()Z

    move-result v5

    .line 438
    .local v5, "supportArm":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86()Z

    move-result v6

    .line 439
    .local v6, "isX86":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isYunOs()Z

    move-result v7

    .line 441
    .local v7, "isYunOs":Z
    const-string v8, "mytest"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isArt="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", supportArm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isX86="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isYunOs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-nez v1, :cond_3

    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 444
    sput v2, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookFlag:I

    .line 445
    const-string v3, "mytest"

    const-string v4, "canHook: true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit v0

    return v2

    .line 448
    :cond_3
    :try_start_2
    sput v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookFlag:I

    .line 449
    const-string v2, "mytest"

    const-string v4, "canHook: false"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    monitor-exit v0

    return v3

    .line 433
    .end local v1    # "isArt":Z
    .end local v5    # "supportArm":Z
    .end local v6    # "isX86":Z
    .end local v7    # "isYunOs":Z
    :cond_4
    :goto_0
    monitor-exit v0

    return v3

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized canHookArt()Z
    .locals 10

    const-class v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;

    monitor-enter v0

    .line 381
    :try_start_0
    sget v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArtFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 382
    monitor-exit v0

    return v2

    .line 384
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 385
    monitor-exit v0

    return v3

    .line 388
    :cond_1
    :try_start_1
    sput v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArtFlag:I

    .line 389
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v1, v5, :cond_2

    goto :goto_0

    .line 394
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v1

    .line 395
    .local v1, "isArt":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86()Z

    move-result v5

    .line 396
    .local v5, "isX86":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isYunOs()Z

    move-result v6

    .line 398
    .local v6, "isYunOs":Z
    const-string v7, "mytest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isArt="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isX86="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isYunOs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz v1, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 401
    sput v2, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArtFlag:I

    .line 402
    const-string v3, "mytest"

    const-string v4, "canHookArt: true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    monitor-exit v0

    return v2

    .line 405
    :cond_3
    :try_start_2
    sput v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHookArtFlag:I

    .line 406
    const-string v2, "mytest"

    const-string v4, "canHookArt: false"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    monitor-exit v0

    return v3

    .line 391
    .end local v1    # "isArt":Z
    .end local v5    # "isX86":Z
    .end local v6    # "isYunOs":Z
    :cond_4
    :goto_0
    monitor-exit v0

    return v3

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized canHookLite()Z
    .locals 5

    const-class v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;

    monitor-enter v0

    .line 411
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    .line 412
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->supportARM()Z

    move-result v1

    .line 413
    .local v1, "supportArm":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86()Z

    move-result v2

    .line 414
    .local v2, "isX86":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isYunOs()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .local v3, "isYunOs":Z
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 416
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 419
    .end local v1    # "supportArm":Z
    .end local v2    # "isX86":Z
    .end local v3    # "isYunOs":Z
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static canKillProcessByComponents([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "blackListComponents"    # [Ljava/lang/String;

    const-string v0, "SystemUtil"

    .line 567
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v2

    move-object v3, v1

    .line 568
    .local v3, "reasonMap":Ljava/util/Map;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 569
    const-string v2, "no startup reason"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-object v1

    .line 573
    :cond_0
    const-string v2, "true"

    const-string v4, "ByActivity"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    return-object v1

    .line 577
    :cond_1
    const-string v2, "RecordType"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v1

    .line 578
    .local v4, "recordType":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    const-string v2, "no record type"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-object v1

    .line 582
    :cond_2
    const-string v2, "ActivityClientRecord"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    return-object v1

    .line 586
    :cond_3
    const-string v2, "ComponentName"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    .local v2, "componentName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startup component: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 590
    const-string v5, "no component info"

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-object v1

    .line 594
    :cond_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_6

    .line 597
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 598
    .local v5, "componentClass":Ljava/lang/Class;
    const-class v6, Landroid/app/Activity;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 599
    return-object v1

    .line 604
    .end local v5    # "componentClass":Ljava/lang/Class;
    :cond_5
    goto :goto_0

    .line 601
    :catchall_0
    move-exception v5

    .line 602
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_0
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    aget-object v7, p0, v6

    .line 608
    .local v7, "component":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hit blacklist component: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-object v2

    .line 607
    .end local v7    # "component":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 614
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "escaped component: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 615
    return-object v1

    .line 616
    .end local v2    # "componentName":Ljava/lang/String;
    .end local v3    # "reasonMap":Ljava/util/Map;
    .end local v4    # "recordType":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 617
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    return-object v1
.end method

.method public static canOptGC()Z
    .locals 2

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndDisableArrayMapCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "trString"    # Ljava/lang/String;

    .line 521
    const-string v0, "ArrayMap"

    const/4 v1, 0x0

    .line 524
    .local v1, "isArrayMapCrash":Z
    :try_start_0
    const-string v2, "android.util.ArrayMap.allocArrays"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.util.ArrayMap.freeArrays"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 525
    :cond_0
    const/4 v1, 0x1

    .line 529
    :cond_1
    goto :goto_0

    .line 527
    :catchall_0
    move-exception v2

    .line 528
    const-string v2, "checkAndDisableArrayMapCache error 1"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    if-nez v1, :cond_2

    .line 532
    return-void

    .line 535
    :cond_2
    const-string v2, "checkAndDisableArrayMapCache deleted"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public static clearApplicationDatabase(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "StartupSafeguard"

    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    .local v2, "root":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clear database root: ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SystemUtil"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    const-string v1, "clearApplicationDatabase set user whitelist begin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;ILjava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object p1, v1

    .line 208
    const-string v1, "clearApplicationDatabase set user whitelist end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFilesWithExcludePrefixes(Ljava/io/File;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "root":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static clearApplicationUserData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludes"    # Ljava/util/Set;
    .param p2, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    .local v1, "root":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "StartupSafeguard"

    const-string v2, "clearApplicationUserData set user whitelist begin"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    invoke-static {p0, v2, p2}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;ILjava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 169
    const/4 v2, 0x1

    invoke-static {p0, v2, p2}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;ILjava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 170
    const-string v2, "clearApplicationUserData set user whitelist end"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clear user date root: ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "root":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static clearSharePreference(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "StartupSafeguard"

    const-string v1, "clearSharePreference set user whitelist begin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/alipay/mobile/quinox/mpaas/wrapper/c;->a(Landroid/content/Context;ILjava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 186
    const-string v1, "clearSharePreference set user whitelist end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared_prefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 188
    .local v1, "root":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clear shared_prefs root: ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFilesWithExcludes(Ljava/io/File;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "root":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getCPUFrequencyMax()I
    .locals 3

    const-class v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;

    monitor-enter v0

    .line 220
    :try_start_0
    sget v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sFrequency:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 221
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sFrequency:I

    .line 222
    if-eq v2, v1, :cond_0

    .line 223
    div-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sFrequency:I

    .line 227
    :cond_0
    sget v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sFrequency:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCommonPreloadBy()Ljava/lang/String;
    .locals 7

    .line 708
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    if-nez v0, :cond_f

    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadByCalculated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 709
    nop

    .line 710
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 712
    const-string v1, "ComponentName"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 713
    :try_start_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 714
    const-string v5, "quinox_preload_component_enable"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 716
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v4

    .line 717
    if-eqz v4, :cond_4

    .line 718
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 719
    const-class v6, Lcom/alipay/mobile/quinox/preload/PreloadService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 720
    const-string v6, "ActionName"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 721
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 723
    goto :goto_1

    .line 724
    :cond_0
    if-eqz v2, :cond_1

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "auto-service-"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 724
    :cond_1
    move-object v4, v3

    .line 727
    :goto_0
    goto :goto_1

    :cond_2
    const-class v4, Lcom/alipay/mobile/quinox/preload/MainPldService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 728
    const-string v4, "push-preload"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 727
    :cond_3
    move-object v4, v3

    .line 730
    :goto_1
    if-eqz v2, :cond_5

    .line 731
    :try_start_1
    const-class v2, Lcom/alipay/mobile/quinox/preload/PreloadReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "auto-"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 738
    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v3

    .line 739
    :goto_2
    const-string v5, "SystemUtil"

    invoke-static {v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 740
    :cond_4
    move-object v4, v3

    :cond_5
    :goto_3
    nop

    .line 742
    :goto_4
    if-nez v4, :cond_6

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isOppoPreload(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 743
    const-string v4, "oppo-findx"

    .line 746
    :cond_6
    if-nez v4, :cond_a

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isHuaweiPreloadLaunch()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 748
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "huawei"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 749
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    .line 752
    :cond_7
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, "unknown-null"

    goto :goto_5

    :cond_8
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object v4, v2

    goto :goto_7

    .line 750
    :cond_9
    :goto_6
    nop

    .line 756
    :cond_a
    :goto_7
    if-nez v4, :cond_b

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPerfSyncLaunch()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 757
    const-string v4, "perf-sync"

    .line 760
    :cond_b
    if-nez v4, :cond_c

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isBerserkerPreloadLaunch()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 761
    const-string v4, "berserker"

    .line 764
    :cond_c
    if-nez v4, :cond_e

    if-eqz v0, :cond_e

    .line 765
    nop

    .line 766
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v2

    .line 767
    if-eqz v2, :cond_d

    .line 768
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 770
    :cond_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->componentToPreload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 772
    :cond_e
    sput-object v4, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    .line 775
    :cond_f
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    return-object v0
.end method

.method public static getFgProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 629
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.fgbg.FgBgMonitor"

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 631
    .local v2, "fgbgMonitor":Ljava/lang/Object;
    const-string v3, "getForegroundProcess"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    .line 632
    .local v3, "processInfo":Ljava/lang/Object;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 633
    return-object v0

    .line 635
    :cond_0
    const-string v1, "getProcessName"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    return-object v1

    .line 637
    .end local v2    # "fgbgMonitor":Ljava/lang/Object;
    .end local v3    # "processInfo":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 638
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 872
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static hasActivityOccur(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 881
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isFirstActivityCreated()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_0
    goto :goto_0

    .line 900
    :catchall_0
    move-exception v0

    .line 901
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppOnBackground(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 156
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isBackground1(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isBackground2(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isArt()Z
    .locals 5

    .line 252
    const/4 v0, 0x0

    .local v0, "versionString":Ljava/lang/String;
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    move-object v0, v1

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 255
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 259
    return v1

    .line 263
    :cond_0
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 266
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isBackground1(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 84
    return v0

    .line 86
    :cond_0
    const-string v1, "android.permission.GET_TASKS"

    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 87
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 88
    return v0

    .line 92
    :cond_1
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 93
    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v2, "tasks":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 97
    return v4

    .line 102
    .end local v2    # "tasks":Ljava/util/List;
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_2
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v0
.end method

.method private static isBackground2(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "SystemUtil"

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "bRet":Z
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 117
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 119
    .local v3, "appProcesses":Ljava/util/List;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 122
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 128
    .local v7, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v7, v8

    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 129
    iget v5, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x7d

    if-lt v5, v8, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 131
    goto :goto_2

    .line 136
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "processState"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 137
    .local v5, "stateField":Ljava/lang/reflect/Field;
    const-class v8, Landroid/app/ActivityManager;

    const-string v9, "PROCESS_STATE_TOP"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 138
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 139
    .local v6, "processStateTop":I
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    if-le v0, v6, :cond_1

    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_2

    .line 146
    .end local v5    # "stateField":Ljava/lang/reflect/Field;
    .end local v6    # "processStateTop":I
    :cond_1
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v5

    .line 145
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 149
    .end local v7    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_1

    .line 151
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_2
    return v1
.end method

.method public static isBerserkerPreloadLaunch()Z
    .locals 3

    .line 671
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 672
    .local v1, "reasonMap":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "ComponentName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    const-string v2, "com.alipay.berserker.service.PreloadService"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    return v0

    .line 680
    .end local v1    # "reasonMap":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    .line 679
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDynamicReleaseLaunch()Z
    .locals 4

    .line 779
    const/4 v0, 0x0

    .line 782
    .local v0, "isDynamicReleaseLaunch":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v1

    .line 784
    .local v1, "reasonMap":Ljava/util/Map;
    const-string v2, ""

    .line 785
    .local v2, "componentName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 786
    const-string v3, "ComponentName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 789
    :cond_0
    const-string v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseProcessService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 790
    const/4 v0, 0x1

    .line 794
    .end local v1    # "reasonMap":Ljava/util/Map;
    .end local v2    # "componentName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 792
    :catchall_0
    move-exception v1

    .line 793
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 795
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public static isHuaweiPreloadLaunch()Z
    .locals 3

    .line 651
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sHuaweiPreloadLaunch:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 654
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    .line 656
    .local v0, "reasonMap":Ljava/util/Map;
    const-string v1, ""

    .line 657
    .local v1, "recordType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 658
    const-string v2, "RecordType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 661
    :cond_0
    const-string v2, "HuaweiPreload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sHuaweiPreloadLaunch:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .end local v0    # "reasonMap":Ljava/util/Map;
    .end local v1    # "recordType":Ljava/lang/String;
    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    .line 663
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sHuaweiPreloadLaunch:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNubiaBugDevice()Z
    .locals 7

    .line 830
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isNubiaDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_1

    .line 832
    const/4 v0, 0x1

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 834
    .local v4, "m":Ljava/lang/reflect/Method;
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ro.nubia.AlipayGphone"

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 835
    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 836
    return v1

    .line 840
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 838
    :catchall_0
    move-exception v1

    .line 839
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return v0

    .line 843
    :cond_1
    return v1
.end method

.method public static isNubiaDevice()Z
    .locals 2

    .line 814
    const-string v0, "nubia"

    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 815
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    goto :goto_1

    .line 816
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 818
    :catchall_0
    move-exception v0

    .line 819
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isOppoDevice()Z
    .locals 2

    .line 865
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 866
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 865
    return v0

    .line 866
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOppoPreload(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "SystemUtil"

    .line 848
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isOppoDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v4, 0x0

    .line 851
    .local v4, "am":Landroid/app/ActivityManager;
    move-object v4, v3

    if-nez v3, :cond_0

    .line 852
    const-string v3, "am is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    const-class v3, Landroid/app/ActivityManager;

    const-string v5, "isOppoPreload"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 855
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 859
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "am":Landroid/app/ActivityManager;
    :cond_1
    goto :goto_0

    .line 857
    :catchall_0
    move-exception v2

    .line 858
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 861
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public static isParallelUserId()Z
    .locals 2

    .line 876
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isPerfSyncLaunch()Z
    .locals 3

    .line 686
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 687
    .local v1, "reasonMap":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "ComponentName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    const-string v2, "com.alipay.mobile.performance.sync.PerfSyncService"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 690
    const/4 v0, 0x1

    return v0

    .line 695
    .end local v1    # "reasonMap":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPreloadLaunch()Z
    .locals 1

    .line 644
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadLaunch:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 645
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCommonPreloadBy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadLaunch:Ljava/lang/Boolean;

    .line 647
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadLaunch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUIEntryLaunch(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 454
    sget v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    return v1

    .line 457
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 458
    return v3

    .line 460
    :cond_1
    const/4 v0, 0x0

    .line 461
    .local v0, "isUIEntryLaunch":Z
    sput v2, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch:I

    .line 464
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v2

    .line 466
    .local v2, "reasonMap":Ljava/util/Map;
    const-string v4, ""

    .line 467
    .local v4, "startupComponent":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 468
    const-string v6, "ComponentName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    move-object v6, v5

    .local v6, "activityList":Ljava/util/List;
    goto :goto_0

    .line 467
    .end local v6    # "activityList":Ljava/util/List;
    :cond_2
    move-object v6, v5

    .line 471
    .restart local v6    # "activityList":Ljava/util/List;
    :goto_0
    sget-boolean v7, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_ALIPAY:Z

    if-eqz v7, :cond_4

    .line 472
    const-string v3, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.quinox.LauncherActivity.alias"

    .line 473
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.quinox.SchemeLauncherActivity"

    .line 474
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    :cond_3
    const/4 v0, 0x1

    .line 476
    sput v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch:I

    goto/16 :goto_2

    .line 480
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 482
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object v9, v5

    .line 483
    .local v9, "mainIntent":Landroid/content/Intent;
    move-object v9, v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {v7, v9, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    .line 488
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v5, "schemeIntent":Landroid/content/Intent;
    move-object v5, v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v8, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v8, "alipays://test"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 494
    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 496
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 497
    .local v8, "activity":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_5

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 498
    const/4 v0, 0x1

    .line 499
    sput v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    goto :goto_2

    .line 502
    .end local v8    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_5
    goto :goto_1

    .line 506
    .end local v2    # "reasonMap":Ljava/util/Map;
    .end local v4    # "startupComponent":Ljava/lang/String;
    .end local v5    # "schemeIntent":Landroid/content/Intent;
    .end local v6    # "activityList":Ljava/util/List;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "mainIntent":Landroid/content/Intent;
    :cond_6
    goto :goto_2

    .line 504
    :catchall_0
    move-exception v1

    .line 505
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_2
    return v0
.end method

.method public static isUILaunch()Z
    .locals 4

    .line 539
    const/4 v0, 0x0

    .line 542
    .local v0, "isUILaunch":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v1

    .line 544
    .local v1, "reasonMap":Ljava/util/Map;
    const-string v2, ""

    .line 545
    .local v2, "recordType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 546
    const-string v3, "RecordType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 549
    :cond_0
    const-string v3, "ActivityClientRecord"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 550
    const/4 v0, 0x1

    .line 554
    .end local v1    # "reasonMap":Ljava/util/Map;
    .end local v2    # "recordType":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    .line 553
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public static isX86()Z
    .locals 2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 284
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86Lollipop()Z

    move-result v0

    return v0

    .line 286
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86Kitkat()Z

    move-result v0

    return v0
.end method

.method public static isX86Kitkat()Z
    .locals 8

    .line 291
    const-string v0, "isX86CPU error"

    const-string v1, "SystemUtil"

    const/4 v2, 0x0

    .line 292
    .local v2, "isX86":Z
    const/4 v3, 0x0

    .line 294
    .local v3, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 295
    .local v4, "ir":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 297
    .local v5, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "getprop ro.product.cpu.abi"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    move-object v3, v6

    .line 298
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 299
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 300
    move-object v5, v6

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 301
    const-string v7, "x86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v6, :cond_0

    .line 302
    const/4 v2, 0x1

    .line 309
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_0

    .line 310
    :catchall_0
    move-exception v6

    .line 311
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    goto :goto_1

    .line 318
    :catchall_1
    move-exception v6

    .line 319
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_3

    .line 325
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 328
    :goto_2
    goto :goto_5

    .line 326
    :catchall_2
    move-exception v6

    .line 327
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 304
    :catchall_3
    move-exception v6

    .line 305
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 307
    .end local v6    # "e":Ljava/lang/Throwable;
    if-eqz v5, :cond_1

    .line 309
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 312
    goto :goto_3

    .line 310
    :catchall_4
    move-exception v6

    .line 311
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 317
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 320
    goto :goto_4

    .line 318
    :catchall_5
    move-exception v6

    .line 319
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 325
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 331
    :cond_3
    :goto_5
    return v2

    .line 307
    :catchall_6
    move-exception v6

    if-eqz v5, :cond_4

    .line 309
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 312
    goto :goto_6

    .line 310
    :catchall_7
    move-exception v7

    .line 311
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 317
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 320
    goto :goto_7

    .line 318
    :catchall_8
    move-exception v7

    .line 319
    .restart local v7    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 325
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 328
    goto :goto_8

    .line 326
    :catchall_9
    move-exception v7

    .line 327
    .restart local v7    # "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_8
    throw v6
.end method

.method public static isX86Lollipop()Z
    .locals 6

    .line 335
    const-string v0, "SystemUtil"

    .line 337
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 341
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 342
    if-eqz v3, :cond_0

    .line 343
    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 344
    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 349
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    if-eqz v4, :cond_1

    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 351
    nop

    .line 352
    const/4 v1, 0x1

    goto :goto_2

    .line 348
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    :cond_2
    goto :goto_2

    .line 355
    :catch_0
    move-exception v2

    .line 356
    const-string v3, "isX86CPU error"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isX86="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v1
.end method

.method public static isYunOs()Z
    .locals 8

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, "isYunOs":Z
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 367
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "ro.yunos.version"

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "version":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "java.vm.name"

    aput-object v5, v3, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    .local v2, "vmName":Ljava/lang/String;
    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lemur"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_2

    .line 372
    :cond_1
    const/4 v0, 0x1

    .line 376
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "vmName":Ljava/lang/String;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 377
    :goto_0
    return v0
.end method

.method public static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "pSystemFile"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 236
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 237
    .local v2, "sc":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 241
    return v3

    .line 242
    .end local v2    # "sc":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    const-string v2, "SystemUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception to readSystemFileAsInt("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), return -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 245
    const/4 v2, -0x1

    return v2

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static reflectGetReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 800
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    const-string v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 805
    .local v2, "activityClass":Ljava/lang/Class;
    const-string v3, "mReferrer"

    invoke-static {v1, p0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 801
    .end local v2    # "activityClass":Ljava/lang/Class;
    :cond_1
    :goto_0
    return-object v0

    .line 806
    :catchall_0
    move-exception v1

    .line 807
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 809
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static setPreloadBy(Ljava/lang/String;)V
    .locals 2
    .param p0, "preloadBy"    # Ljava/lang/String;

    .line 700
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 701
    sput-object p0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preloadBy can\'t set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", it\'s already set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/SystemUtil;->sPreloadBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public static shouldPreLoadCookieManager()Z
    .locals 3

    .line 908
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "5.1.1"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 909
    :catchall_0
    move-exception v1

    .line 910
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "SystemUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    .end local v1    # "tr":Ljava/lang/Throwable;
    return v0
.end method

.method private static supportARM()Z
    .locals 7

    .line 270
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 273
    .local v1, "armList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "armList: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mytest"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    aget-object v5, v1, v2

    const-string v6, "armeabi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    return v4

    .line 273
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

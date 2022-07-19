.class public Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Z

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$1;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "callStack"    # Ljava/lang/String;
    .param p2, "processAlias"    # Ljava/lang/String;

    .line 454
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 456
    .local v2, "crashInfo":Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 457
    .local v0, "infoLength":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleNativeExceptionDirectly, length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, "logcatMessage":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v12, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    invoke-interface {v3, v12, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v11}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v13

    .line 462
    .local v13, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .end local p2    # "processAlias":Ljava/lang/String;
    .local v3, "processAlias":Ljava/lang/String;
    goto :goto_1

    .line 462
    .end local v3    # "processAlias":Ljava/lang/String;
    .restart local p2    # "processAlias":Ljava/lang/String;
    :cond_1
    move-object/from16 v14, p2

    .line 465
    .end local p2    # "processAlias":Ljava/lang/String;
    .local v14, "processAlias":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    .line 466
    .local v15, "threadName":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v3, v13}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v5, v2

    move-object v8, v14

    move-object v9, v15

    invoke-virtual/range {v3 .. v10}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "render":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    sget-object v6, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v4, v5, v1, v6, v3}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    move-object v1, v4

    .line 469
    .local v1, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-interface {v13, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 471
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 473
    const-string v4, "handleNativeExceptionDirectly: deleteFileByPath"

    .line 474
    .end local v11    # "logcatMessage":Ljava/lang/String;
    .local v4, "logcatMessage":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v12, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V

    .line 477
    return-object v2
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isDelay"    # Z

    .line 527
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Z

    if-eqz v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Z

    .line 532
    if-nez p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->initialize(Landroid/content/Context;)V

    .line 535
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addParams()V

    .line 537
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 538
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void

    .line 540
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 541
    .local v0, "lastHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 542
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->initialize(Landroid/content/Context;)V

    .line 543
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addParams()V

    .line 544
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 546
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 547
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.alipay.mobile.core.exception.FrameworkExceptionHandler"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 553
    .end local v0    # "lastHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_2
    return-void
.end method

.method private a()Z
    .locals 9

    .line 481
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    return v1

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    return v1

    .line 487
    :cond_1
    nop

    .line 488
    nop

    .line 489
    nop

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "CRASHSDK_DELAY"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delayPolicy: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 494
    aget-object v5, v4, v1

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    .line 495
    const/4 v5, 0x1

    goto :goto_0

    .line 494
    :cond_2
    const/4 v5, 0x0

    .line 497
    :goto_0
    :try_start_1
    aget-object v6, v4, v3

    const-string v7, "common"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 498
    const/4 v0, 0x1

    goto :goto_3

    .line 499
    :cond_3
    aget-object v4, v4, v2

    const-string/jumbo v6, "slow"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 500
    const/4 v0, 0x2

    goto :goto_1

    .line 499
    :cond_4
    const/4 v0, 0x0

    .line 504
    :goto_1
    goto :goto_3

    .line 502
    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    .line 503
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v6, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "decode error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 505
    :goto_3
    if-eqz v5, :cond_6

    .line 506
    if-ne v0, v3, :cond_5

    .line 507
    goto :goto_4

    .line 508
    :cond_5
    if-ne v0, v2, :cond_6

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "perfJudgeFullFused"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 510
    if-eqz v0, :cond_6

    .line 511
    goto :goto_4

    .line 515
    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needDelay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-eqz v3, :cond_7

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "DELAY_CRASH_BEGIN"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 518
    if-eqz v0, :cond_7

    .line 519
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hasDelayTag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    goto :goto_5

    .line 523
    :cond_7
    move v1, v3

    :goto_5
    return v1
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 356
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    move-object v1, p0

    .local v1, "temp":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 360
    :goto_0
    if-eqz v1, :cond_3

    .line 361
    instance-of v3, v1, Ljava/lang/RuntimeException;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v2, "message":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    const-string v3, "InputChannel is not initialized."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    return v4

    .line 368
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    instance-of v3, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_2

    .line 369
    return v4

    .line 371
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 374
    :cond_3
    return v0
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 378
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 379
    return v0

    .line 381
    :cond_0
    move-object v1, p0

    .line 382
    .local v1, "temp":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_2

    .line 383
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 384
    const/4 v0, 0x1

    return v0

    .line 386
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 389
    :cond_2
    return v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    .line 69
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 65
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    .locals 2

    .line 73
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ensureCrashSdk()V
    .locals 2

    .line 556
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Z)V

    return-void

    .line 559
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$4;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 142
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getUncaughtExceptionCallback()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    move-result-object v1

    move-object v2, v0

    .line 143
    .local v2, "exceptionCallback":Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;->getExternalExceptionInfo(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 148
    .end local v2    # "exceptionCallback":Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    :cond_0
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    .line 150
    :goto_0
    return-object v0
.end method

.method public getUncaughtExceptionCallback()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    return-object v0
.end method

.method public handleNativeException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 395
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object p3

    invoke-interface {p3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object p3

    .line 398
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 400
    nop

    .line 401
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const/4 v0, 0x3

    aput-object p1, v1, v0

    const-string v0, "a native crash occured in [%s] process [%s] thread. callStack: %s, filePath: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 416
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 418
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isSandboxProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleNativeException, error: unknown process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 422
    :cond_3
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0, p1, p2, p4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 427
    goto :goto_2

    .line 407
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 408
    if-eqz v0, :cond_5

    .line 410
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v0, p1, p2, p4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 416
    :cond_5
    nop

    .line 433
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "handleNativeException"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v0, ", filePath: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string p1, ", callStack: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string p1, ", process: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string p1, ", thread: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string p1, "a native crash occured. END"

    .line 441
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v4, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    const-string p2, "applog"

    invoke-interface {p1, p2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 446
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method public setUncaughtExceptionCallback(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V
    .locals 0
    .param p1, "mUncaughtExceptionCallback"    # Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    .line 133
    return-void
.end method

.method public declared-synchronized setup()V
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 81
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Z

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->enableJavaAndUnexpLog()V

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 93
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 96
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DELAY_CRASH_BEGIN"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 100
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 101
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$2;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->registerEventListener(Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;)V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 118
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 120
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :cond_4
    monitor-exit p0

    return-void

    .line 79
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takedown()V
    .locals 1

    monitor-enter p0

    .line 126
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Z

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 125
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 19
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    move-object/from16 v1, p0

    const-string v0, "OOMException"

    .line 159
    move-object/from16 v2, p2

    .line 161
    .local v2, "crashCause":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 162
    .local v3, "negligibleThrowable":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NegligibleThrowable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    const/4 v3, 0x1

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 167
    :cond_0
    const/4 v4, 0x1

    .line 170
    .local v4, "callDefaultExceptionHandler":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "applog"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    .line 287
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 306
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v5, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "uncaughtException: unknown process "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 306
    invoke-interface {v0, v5, v10, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v0, v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 313
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    .line 320
    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 291
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v0, v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 295
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    goto :goto_2

    .line 298
    :catchall_1
    move-exception v0

    .line 302
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 171
    :cond_4
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v10, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    const-string v11, "enter uncaughtException."

    invoke-interface {v5, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    move-object v5, v6

    .line 177
    .local v5, "extParam":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v10

    invoke-interface {v10, v2, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 179
    .end local v5    # "extParam":Ljava/lang/String;
    goto :goto_4

    .line 182
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5, v7, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V

    move-object v5, v6

    .line 189
    :goto_4
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 190
    iget-object v10, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    const-string v11, "activity"

    .line 191
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 193
    .local v5, "activityManager":Landroid/app/ActivityManager;
    new-array v11, v9, [I

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    aput v12, v11, v8

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v11, v6

    .line 196
    .local v11, "appMemInfos":[Landroid/os/Debug$MemoryInfo;
    move-object v11, v10

    :try_start_3
    array-length v10, v10

    if-lez v10, :cond_6

    .line 197
    aget-object v10, v11, v8

    .line 198
    .local v10, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "totalProportional: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dalvikHeapAlloc: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "totalPss: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dalvikPss: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v10, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "nativePss: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v10, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "otherPss: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v10, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v12, v6

    .line 207
    .local v12, "params":Ljava/util/HashMap;
    move-object v12, v0

    :try_start_4
    const-string/jumbo v13, "totalProportional"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v16, v7

    :try_start_5
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "dalvikHeapAlloc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v17

    sub-long v13, v13, v17

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "totalPss"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "dalvikPss"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v10, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v0, "nativePss"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v10, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v0, "otherPss"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v10, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string v6, "BIZ_FRAME"

    const-string v7, "FRAME_OOM_REPORT"

    const-string v13, "0"

    invoke-interface {v0, v6, v7, v13, v12}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 223
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "memInfo":Landroid/os/Debug$MemoryInfo;
    .end local v11    # "appMemInfos":[Landroid/os/Debug$MemoryInfo;
    .end local v12    # "params":Ljava/util/HashMap;
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v16, v7

    :goto_5
    move-object/from16 v6, v16

    goto :goto_9

    .line 196
    :cond_6
    move-object/from16 v16, v7

    const/4 v12, 0x0

    .line 217
    :goto_6
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v6, v16

    :try_start_7
    invoke-interface {v0, v6, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 221
    goto :goto_9

    .line 219
    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_7

    .line 223
    :catchall_6
    move-exception v0

    move-object v6, v7

    goto :goto_8

    .line 189
    :cond_7
    move-object v6, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 225
    :goto_7
    goto :goto_9

    .line 223
    :catchall_7
    move-exception v0

    move-object v6, v7

    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x0

    .line 228
    :goto_9
    :try_start_8
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    const-string v0, "com.alipay.android.phone.mobilesdk.apm.memory.MemoryMonitor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v5, "memoryMonitorClass":Ljava/lang/Class;
    move-object v5, v0

    const-string v7, "getInstance"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    .local v11, "getInsMethod":Ljava/lang/reflect/Method;
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "mm":Ljava/lang/Object;
    const-string v7, "handleDestroyActivities"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v10, v12

    .line 233
    .local v10, "handleMethod":Ljava/lang/reflect/Method;
    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_a

    .line 235
    .end local v0    # "mm":Ljava/lang/Object;
    .end local v5    # "memoryMonitorClass":Ljava/lang/Class;
    .end local v10    # "handleMethod":Ljava/lang/reflect/Method;
    .end local v11    # "getInsMethod":Ljava/lang/reflect/Method;
    :catchall_8
    move-exception v0

    nop

    .line 240
    :cond_8
    :goto_a
    :try_start_9
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const-string v0, "com.alipay.mobile.quinox.utils.ThreadDumpUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 242
    .local v5, "threadDumpClass":Ljava/lang/Class;
    const-string v7, "logAllThreadsTraces"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v7, v11

    .line 243
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v7, v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 244
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 247
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 248
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v6, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 251
    goto :goto_b

    .line 249
    :catchall_9
    move-exception v0

    .line 255
    .end local v5    # "threadDumpClass":Ljava/lang/Class;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_9
    goto :goto_b

    .line 253
    :catchall_a
    move-exception v0

    .line 258
    :goto_b
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->dumpLogcatForException(Landroid/content/Context;)V

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientStatus(Z)Ljava/lang/String;

    move-result-object v0

    const-string v5, "foreground"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    move-result-object v0

    const-string v5, "CRASH"

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->recordException(Ljava/lang/String;)V

    .line 267
    :cond_a
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 268
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v6, v9}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v6, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 272
    goto :goto_c

    .line 270
    :catchall_b
    move-exception v0

    .line 275
    :goto_c
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->dumpMemHeap(Landroid/content/Context;)V

    .line 280
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->getInstance()Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    move-result-object v0

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5, v9}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->reportLogcat(IZ)V

    .line 282
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 283
    const/4 v4, 0x0

    .line 325
    :cond_c
    :goto_d
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    const/4 v4, 0x1

    .line 329
    :cond_d
    if-eqz v4, :cond_10

    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_10

    .line 330
    sget-wide v5, Lcom/alipay/mobile/common/logging/util/crash/CrashConstants;->sCrashDefWaitTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_f

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    :cond_e
    const-wide/16 v5, 0x0

    .line 333
    .local v5, "timeSlept":J
    :goto_e
    sget-wide v7, Lcom/alipay/mobile/common/logging/util/crash/CrashConstants;->sCrashDefWaitTime:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_f

    const-wide/16 v7, 0xfa0

    cmp-long v0, v5, v7

    if-gez v0, :cond_f

    .line 335
    const-wide/16 v7, 0x1f4

    :try_start_c
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 338
    goto :goto_f

    .line 336
    :catchall_c
    move-exception v0

    .line 339
    :goto_f
    add-long/2addr v5, v7

    goto :goto_e

    .line 344
    .end local v5    # "timeSlept":J
    :cond_f
    :try_start_d
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    move-object/from16 v5, p1

    :try_start_e
    invoke-interface {v0, v5, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 347
    return-void

    .line 345
    :catchall_d
    move-exception v0

    goto :goto_10

    :catchall_e
    move-exception v0

    move-object/from16 v5, p1

    .line 347
    :goto_10
    return-void

    .line 329
    :cond_10
    move-object/from16 v5, p1

    .line 350
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 351
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 353
    return-void
.end method

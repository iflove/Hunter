.class public final Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;
    }
.end annotation


# static fields
.field public static final FIRST_CLICK_DELAY:Ljava/lang/String; = "FirstClickDelay"

.field public static final MAIN_TASK_RESULT:Ljava/lang/String; = "MainTaskResult"

.field public static final MAIN_TASK_TIME_DISTRIBUTION:Ljava/lang/String; = "MainTaskTimeDistribution"

.field static final MESSAGE_START:Ljava/lang/String; = ">>>>> Dispatching to Handler "

.field public static final SECTION_FIRST_CLICK_DELAY:Ljava/lang/String; = "CLICK_DELAY"

.field static final TAG:Ljava/lang/String; = "MainTaskWatcher"


# instance fields
.field private volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:J

.field private k:[J

.field private l:[J

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->f:Z

    .line 53
    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->k:[J

    .line 54
    new-array v2, v2, [J

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->l:[J

    .line 127
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getDefaultSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    const-string v3, "config_enable_main_task_watcher"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 132
    if-eqz v2, :cond_0

    .line 133
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->f:Z

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 138
    new-instance v2, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$1;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 145
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->n:Z

    .line 147
    :cond_1
    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$1;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;)Ljava/lang/String;
    .locals 18

    .line 369
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "&"

    if-nez v0, :cond_0

    .line 370
    const-string/jumbo v0, "request is null"

    return-object v0

    .line 372
    :cond_0
    :try_start_0
    iget-boolean v4, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-nez v4, :cond_1

    .line 373
    const-string v0, "can not get result before request done"

    return-object v0

    .line 375
    :cond_1
    iget-object v4, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mCachedTasks:Ljava/util/List;

    .line 376
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 380
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    .line 381
    nop

    .line 382
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    const-string/jumbo v9, "startTimeStamp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    int-to-long v12, v10

    cmp-long v14, v12, v5

    if-gez v14, :cond_a

    .line 386
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 387
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 388
    const-string v3, ">>>>> Dispatching to Handler "

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, " << "

    if-eqz v3, :cond_4

    .line 389
    nop

    .line 390
    :try_start_1
    invoke-direct {v1, v15}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    const-string/jumbo v11, "start >> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-wide/16 v16, 0x1

    sub-long v16, v5, v16

    cmp-long v11, v12, v16

    if-nez v11, :cond_3

    .line 393
    const-string v11, "end unfinished cost="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    iget-object v13, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v11, v11, v16

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_3
    move-object/from16 v16, v4

    move-object v11, v14

    goto/16 :goto_3

    :cond_4
    const-string v3, "<<<<< Finished to Handler "

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    if-nez v11, :cond_5

    .line 399
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v16, v4

    iget-wide v3, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStartTime:J

    sub-long/2addr v12, v3

    .line 400
    invoke-direct {v1, v15}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 402
    :cond_5
    move-object/from16 v16, v4

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v3, v12

    .line 403
    invoke-direct {v1, v15}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    :goto_1
    const-string v4, "end cost="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    const-string v3, ">>>>> start subsection "

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x3

    const-string v12, "\\s"

    if-eqz v3, :cond_7

    .line 407
    :try_start_2
    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 408
    aget-object v3, v3, v4

    .line 409
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 410
    :cond_7
    const-string v3, "<<<<< end subsection "

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 411
    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 412
    aget-object v3, v3, v4

    .line 413
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 414
    if-eqz v4, :cond_9

    .line 417
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 419
    const-wide/16 v14, 0xa

    cmp-long v4, v12, v14

    if-ltz v4, :cond_9

    .line 422
    const-string v4, "end  subsection cost="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 410
    :cond_8
    :goto_2
    nop

    .line 385
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_0

    .line 425
    :cond_a
    const-string/jumbo v3, "stopTimeStamp:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mRecordingStopTime:J

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 428
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_b
    return-object v0

    .line 377
    :cond_c
    :goto_4
    const-string/jumbo v0, "unParsedResult is null"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 431
    :catchall_0
    move-exception v0

    .line 432
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainTaskWatcher"

    const-string v4, "Can\'t get parsed result"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    const/4 v2, 0x0

    return-object v2
.end method

.method private a()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 514
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b(Landroid/util/Printer;)V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    .line 518
    return-void
.end method

.method private static a(Landroid/util/Printer;)V
    .locals 8
    .param p0, "printer"    # Landroid/util/Printer;

    .line 465
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilesdk.apm.base.MainLooperLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 466
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 467
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "instance":Ljava/lang/Object;
    const-string v3, "addMessageLogging"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/Printer;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 469
    .local v1, "methodAML":Ljava/lang/reflect/Method;
    move-object v1, v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 470
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    nop

    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "methodAML":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 471
    :catchall_0
    move-exception v0

    .line 472
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MainTaskWatcher"

    const-string v3, "Can\'t add message logging"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->f:Z

    if-eqz v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    const-string v0, "CLICK_DELAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    .line 221
    .local v2, "clickDelayRequest":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onRestart(Z)V

    .line 223
    return-void

    .line 227
    .end local v2    # "clickDelayRequest":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    .line 228
    .local v2, "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_2
    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    if-nez v0, :cond_5

    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mDone:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    const-string v3, "doStart -- "

    const-string v4, "MainTaskWatcher"

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onStart()V

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 240
    :cond_4
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    .line 241
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onStart()V

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a(Landroid/util/Printer;)V

    .line 244
    return-void

    .line 233
    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->i:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a()V

    .line 543
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->f:Z

    .line 544
    return-void
.end method

.method private static b(Landroid/util/Printer;)V
    .locals 8
    .param p0, "printer"    # Landroid/util/Printer;

    .line 479
    :try_start_0
    const-string v0, "com.alipay.android.phone.mobilesdk.apm.base.MainLooperLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 480
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 481
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    .local v0, "instance":Ljava/lang/Object;
    const-string/jumbo v3, "removeMessageLogging"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/Printer;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 483
    .local v1, "methodRML":Ljava/lang/reflect/Method;
    move-object v1, v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 484
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    nop

    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "methodRML":Ljava/lang/reflect/Method;
    .end local v2    # "clazz":Ljava/lang/Class;
    return-void

    .line 485
    :catchall_0
    move-exception v0

    .line 486
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MainTaskWatcher"

    const-string v3, "Can\'t remove message logging"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 247
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->f:Z

    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    const-string v1, "MainTaskWatcher"

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    const/4 v2, 0x0

    .line 252
    .local v2, "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    move-object v2, v0

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->mStarting:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->onStop()V

    .line 254
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doStop -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v2    # "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    :cond_1
    return-void

    .line 257
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "no need to stop watch main task by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 438
    const-string v0, "\\s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 439
    .local v1, "dispatchBuffer":[Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 440
    .local v4, "indexAt":I
    move v4, v0

    if-lez v0, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    aget-object v0, v1, v2

    .line 441
    .local v0, "runnable":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "null:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "_"

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x4

    if-eqz v2, :cond_3

    .line 442
    aget-object v2, v1, v7

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "handler":Ljava/lang/String;
    aget-object v5, v1, v5

    .line 444
    .local v5, "objectIndex":Ljava/lang/String;
    const/4 v6, 0x7

    aget-object v6, v1, v6

    .line 445
    .local v6, "what":Ljava/lang/String;
    const-string v7, "android.app.ActivityThread$H"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 446
    const-string v7, "androidx.localbroadcastmanager.content.LocalBroadcastManager$2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 447
    const-string v7, "android.view.ViewRootImpl$ViewRootHandler"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 452
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 448
    :cond_2
    :goto_1
    iput-object v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->g:Ljava/lang/String;

    .line 449
    iput-object v6, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->h:Ljava/lang/String;

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 453
    .end local v2    # "handler":Ljava/lang/String;
    .end local v5    # "objectIndex":Ljava/lang/String;
    .end local v6    # "what":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    aget-object v2, v1, v7

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2    # "handler":Ljava/lang/String;
    aget-object v5, v1, v5

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->h:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 459
    .end local v2    # "handler":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    .locals 1

    .line 123
    # getter for: Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;->a:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$SingletonHolder;->access$100()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addActionUpCount()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->o:I

    .line 112
    return-void
.end method

.method final clearActionUpCount()V
    .locals 1

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->o:I

    .line 116
    return-void
.end method

.method public final clearAllCache()V
    .locals 2

    .line 494
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$5;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a()V

    .line 507
    return-void
.end method

.method public final endSubSection(Ljava/lang/String;)V
    .locals 6
    .param p1, "subSectionName"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<<<< end subsection "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;->onUpdateSubTask(JLjava/lang/String;)V

    .line 195
    goto :goto_0

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    return-void
.end method

.method public final getActionUpCount()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->o:I

    return v0
.end method

.method public final getAllResults()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 336
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v0, "resultMap":Ljava/util/Map;
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 338
    .local v2, "copyRequests":Ljava/util/Map;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v3, "mainTaskResultBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v4, "mainTaskTimeDistributionBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "&"

    const-string v9, "#"

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 341
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 342
    .local v6, "key":Ljava/lang/String;
    move-object v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 345
    const-string v7, "CLICK_DELAY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    .line 349
    .local v7, "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":TotalDoFrameTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalDoFrameTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    const-string/jumbo v10, "|TotalOthersTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalOthersTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v10, "|TotalNaturalTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;->getTotalNaturalTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v5, "mainTaskResult":Ljava/lang/String;
    move-object v5, v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 356
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 358
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v1, "mainTaskTimeDistribution":Ljava/lang/String;
    move-object v1, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 360
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_4
    const-string v6, "MainTaskResult"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v6, "MainTaskTimeDistribution"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-object v0

    .line 333
    .end local v0    # "resultMap":Ljava/util/Map;
    .end local v1    # "mainTaskTimeDistribution":Ljava/lang/String;
    .end local v2    # "copyRequests":Ljava/util/Map;
    .end local v3    # "mainTaskResultBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "mainTaskTimeDistributionBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "mainTaskResult":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllRequests error, mRequests ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainTaskWatcher"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-object v1
.end method

.method public final getClickDelay()[J
    .locals 6

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 84
    .local v1, "clickDeley":[J
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->k:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    aput-wide v4, v0, v3

    .line 85
    const/4 v0, 0x1

    aget-wide v4, v2, v0

    aput-wide v4, v1, v0

    .line 86
    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 87
    aput-wide v4, v2, v0

    .line 88
    return-object v1
.end method

.method public final getFirstClickDelay()[J
    .locals 6

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 93
    .local v1, "firstClickDelay":[J
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->l:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    aput-wide v4, v0, v3

    .line 94
    const/4 v0, 0x1

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    .line 95
    return-object v1
.end method

.method public final getMainTaskResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MainTaskWatcher"

    const-string v2, "getMainTaskResult error, key is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;

    .line 276
    .local v0, "request":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcherRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final getMessageQueueIdle()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->i:Z

    return v0
.end method

.method final getTheLastMsgCost()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->j:J

    return-wide v0
.end method

.method public final println(Ljava/lang/String;)V
    .locals 10
    .param p1, "x"    # Ljava/lang/String;

    .line 282
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->e:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 288
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    return-void

    .line 291
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->n:Z

    if-nez v0, :cond_3

    .line 292
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$4;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->n:Z

    .line 302
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->i:Z

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    .local v0, "firstChar":C
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 306
    .local v1, "currentTime":J
    const/16 v3, 0x3e

    const/4 v4, 0x0

    if-ne v0, v3, :cond_6

    .line 307
    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->d:J

    .line 308
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 309
    .local v4, "listener":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;
    move-object v4, v5

    if-eqz v5, :cond_4

    .line 310
    invoke-interface {v4, v1, v2, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;->onUpdateDispatchMainTask(JLjava/lang/String;)V

    .line 312
    .end local v4    # "listener":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;
    :cond_4
    goto :goto_0

    :cond_5
    return-void

    .line 313
    :cond_6
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_9

    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "tinyTask":Z
    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->d:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-gez v9, :cond_7

    .line 317
    const/4 v3, 0x1

    .line 319
    :cond_7
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 320
    .restart local v4    # "listener":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;
    move-object v4, v6

    if-eqz v6, :cond_8

    .line 321
    invoke-interface {v4, v1, v2, p1, v3}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;->onUpdateFinishMainTask(JLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v4    # "listener":Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;
    :cond_8
    goto :goto_1

    .line 328
    .end local v0    # "firstChar":C
    .end local v1    # "currentTime":J
    .end local v3    # "tinyTask":Z
    :cond_9
    return-void

    .line 286
    :cond_a
    :goto_2
    return-void

    .line 326
    :catchall_0
    move-exception v0

    .line 329
    return-void
.end method

.method final removeListener(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method final setClickDelay([J)V
    .locals 5
    .param p1, "clickDelay"    # [J

    .line 70
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 74
    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->m:Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->l:[J

    aget-wide v3, p1, v1

    aput-wide v3, v0, v1

    .line 76
    aget-wide v3, p1, v2

    aput-wide v3, v0, v2

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->k:[J

    aget-wide v3, p1, v1

    aput-wide v3, v0, v1

    .line 79
    aget-wide v3, p1, v2

    aput-wide v3, v0, v2

    .line 80
    return-void

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method final setListener(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public final shutdown()V
    .locals 2

    .line 524
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$6;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b()V

    .line 537
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$2;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final startSubSection(Ljava/lang/String;)V
    .locals 6
    .param p1, "subSectionName"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">>>>> start subsection "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/IMainTaskListener;->onUpdateSubTask(JLjava/lang/String;)V

    .line 178
    goto :goto_0

    .line 174
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    return-void
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 211
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method final updateTheLastMsgCost(J)V
    .locals 0
    .param p1, "cost"    # J

    .line 99
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->j:J

    .line 100
    return-void
.end method

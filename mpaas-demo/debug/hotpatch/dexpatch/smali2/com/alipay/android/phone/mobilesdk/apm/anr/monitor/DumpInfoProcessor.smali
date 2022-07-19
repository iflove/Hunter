.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;
.super Ljava/lang/Object;
.source "DumpInfoProcessor.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    .line 43
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/io/File;J)V
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "traceTime"    # J

    const-string v0, "_"

    .line 173
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 174
    .local v3, "files":Ljava/util/List;
    move-object v3, v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v1, "params":Ljava/util/Map;
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime(J)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v2, "timeFormat":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, ":"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .end local v2    # "timeFormat":Ljava/lang/String;
    .local v0, "timeFormat":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "diagnoseANR-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "extraInfo":Ljava/lang/String;
    const-string v4, "extraInfo"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "deleteWhenSuccess"

    const-string/jumbo v5, "true"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->getInstance()Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/alipay/mobile/logmonitor/util/storage/FileRetriever;->startFileRetrieve(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "timeFormat":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/Map;
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "files":Ljava/util/List;
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DumpInfoProcessor"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/proc/"

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a(Ljava/io/File;)Z

    move-result v0

    const-string v5, "DumpInfoProcessor"

    if-eqz v0, :cond_8

    .line 353
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dumpAllTaskStatToFile, start, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v6, 0x0

    .line 360
    .local v6, "bufWriter":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move v7, v0

    .line 361
    .local v7, "myPid":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    move-object v9, v8

    .line 362
    .local v9, "pidMap":Ljava/util/Map;
    move-object v9, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "running_process_name"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 363
    if-eqz v1, :cond_1

    .line 365
    :try_start_1
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v10, v8

    .line 366
    .local v10, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "processes":Ljava/util/List;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    .line 368
    .local v11, "myUid":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 369
    .local v8, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v8, v13

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v13, v11, :cond_0

    .line 370
    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "add proc: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v5, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v8    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 374
    .end local v0    # "processes":Ljava/util/List;
    .end local v10    # "manager":Landroid/app/ActivityManager;
    .end local v11    # "myUid":I
    :catchall_0
    move-exception v0

    nop

    .line 377
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 378
    move-object v6, v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "*** begin_dump_tstat *** "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 381
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v11, v0

    .line 383
    .local v11, "entry":Ljava/util/Map$Entry;
    :try_start_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 384
    .local v12, "pid":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 385
    .local v13, "procName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/task"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 386
    .local v8, "taskDirList":[Ljava/io/File;
    move-object v8, v0

    if-nez v0, :cond_2

    .line 387
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "taskDirList is null, pid: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v18, v3

    goto/16 :goto_6

    .line 390
    .end local v8    # "taskDirList":[Ljava/io/File;
    :cond_2
    array-length v14, v8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_4

    aget-object v0, v8, v15

    move-object/from16 v16, v0

    .line 391
    .local v16, "taskDir":Ljava/io/File;
    const/16 v17, 0x0

    .line 392
    .local v17, "content":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 401
    .local v18, "tid":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/task/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    .end local v18    # "tid":Ljava/lang/String;
    .local v1, "tid":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v18, v3

    :try_start_4
    const-string v3, "/stat"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v3, v0

    .line 403
    .local v3, "statFile":Ljava/io/File;
    :try_start_5
    invoke-static {v3}, Lcom/alipay/mobile/monitor/util/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v0

    .line 405
    goto :goto_3

    .line 404
    :catchall_1
    move-exception v0

    .line 410
    .end local v3    # "statFile":Ljava/io/File;
    :goto_3
    :try_start_6
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "error_read:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v17, v0

    move-object/from16 v3, v17

    goto :goto_4

    .line 410
    :cond_3
    move-object/from16 v3, v17

    .line 414
    .end local v17    # "content":Ljava/lang/String;
    .local v3, "content":Ljava/lang/String;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "--- "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 417
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 420
    goto :goto_5

    .line 419
    :catchall_2
    move-exception v0

    .line 390
    .end local v1    # "tid":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v16    # "taskDir":Ljava/io/File;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    goto/16 :goto_2

    .line 422
    .end local v12    # "pid":Ljava/lang/String;
    .end local v13    # "procName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 390
    .restart local v12    # "pid":Ljava/lang/String;
    .restart local v13    # "procName":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v3

    .line 424
    .end local v12    # "pid":Ljava/lang/String;
    .end local v13    # "procName":Ljava/lang/String;
    nop

    .line 381
    .end local v11    # "entry":Ljava/util/Map$Entry;
    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 422
    .restart local v11    # "entry":Ljava/util/Map$Entry;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v3

    .line 423
    .local v0, "t":Ljava/lang/Throwable;
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v11    # "entry":Ljava/util/Map$Entry;
    move-object/from16 v1, p0

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 426
    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*** finish_dump_tstat *** "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 429
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 437
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 439
    goto :goto_8

    .line 438
    :catchall_5
    move-exception v0

    .line 430
    :goto_8
    const/4 v0, 0x1

    return v0

    .line 431
    .end local v7    # "myPid":I
    .end local v9    # "pidMap":Ljava/util/Map;
    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 432
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 435
    if-eqz v6, :cond_6

    .line 437
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 439
    goto :goto_9

    .line 438
    :catchall_7
    move-exception v0

    .line 433
    :cond_6
    :goto_9
    const/4 v3, 0x0

    return v3

    .line 435
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_8
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_7

    .line 437
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 439
    goto :goto_a

    .line 438
    :catchall_9
    move-exception v0

    .line 439
    :cond_7
    :goto_a
    throw v1

    .line 355
    .end local v6    # "bufWriter":Ljava/io/BufferedWriter;
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dumpAllTaskStatToFile, prepare failed, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    return v1
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4
    .param p0, "destFile"    # Ljava/io/File;

    .line 221
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 225
    :cond_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 230
    :catchall_0
    move-exception v1

    .line 231
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DumpInfoProcessor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    return v0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 14
    .param p0, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a(Ljava/io/File;)Z

    move-result v0

    const-string v1, "DumpInfoProcessor"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dumpAllProcStatToFile, start, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 277
    .local v5, "procDirList":[Ljava/io/File;
    move-object v5, v3

    if-nez v3, :cond_0

    .line 278
    return v2

    .line 280
    :cond_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 281
    move-object v0, v3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "*** begin_dump_pstat *** "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 284
    array-length v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v8, v5, v6

    .line 285
    .local v8, "procDir":Ljava/io/File;
    const/4 v9, 0x0

    .line 286
    .local v9, "content":Ljava/lang/String;
    const/4 v10, -0x1

    .line 287
    .local v10, "nPid":I
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 288
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v4, "sPid":Ljava/lang/String;
    move-object v4, v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 290
    .local v7, "first":C
    move v7, v11

    const/16 v12, 0x31

    if-lt v11, v12, :cond_1

    const/16 v11, 0x39

    if-gt v7, v11, :cond_1

    .line 292
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 301
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/proc/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/stat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static {v11}, Lcom/alipay/mobile/monitor/util/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v11

    .line 308
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v11

    .line 311
    .end local v4    # "sPid":Ljava/lang/String;
    .end local v7    # "first":C
    :cond_1
    :goto_1
    if-lez v10, :cond_3

    .line 312
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 313
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "error_read:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v9, v11

    .line 316
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 317
    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    goto :goto_2

    .line 319
    :catchall_1
    move-exception v11

    .line 284
    .end local v8    # "procDir":Ljava/io/File;
    .end local v9    # "content":Ljava/lang/String;
    .end local v10    # "nPid":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*** finish_dump_pstat *** "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 326
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 334
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 336
    goto :goto_3

    .line 335
    :catchall_2
    move-exception v1

    .line 327
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 328
    .end local v5    # "procDirList":[Ljava/io/File;
    :catchall_3
    move-exception v3

    .line 329
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 332
    if-eqz v0, :cond_5

    .line 334
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 336
    goto :goto_4

    .line 335
    :catchall_4
    move-exception v1

    .line 330
    :cond_5
    :goto_4
    return v2

    .line 332
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    if-eqz v0, :cond_6

    .line 334
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 336
    goto :goto_5

    .line 335
    :catchall_6
    move-exception v2

    .line 336
    :cond_6
    :goto_5
    throw v1

    .line 271
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dumpAllProcStatToFile, prepare failed, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v2
.end method

.method static synthetic c()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->f()V

    return-void
.end method

.method private static f()V
    .locals 13

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "invokeTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 83
    .local v4, "context":Landroid/content/Context;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 88
    .local v2, "fileDir":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "diagnoseANR"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 91
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v5

    .line 92
    :goto_0
    const-string v5, "DumpInfoProcessor"

    if-eqz v2, :cond_2

    .line 94
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :cond_1
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v6

    .line 98
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, "files":Ljava/util/List;
    :try_start_2
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "procStatBegin"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v8, v3

    .line 105
    .local v8, "procStatBegin":Ljava/io/File;
    move-object v8, v7

    :try_start_3
    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b(Ljava/io/File;)Z

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v9, "procStatBegin finish"

    invoke-interface {v7, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    nop

    .end local v8    # "procStatBegin":Ljava/io/File;
    goto :goto_2

    .line 108
    :catchall_2
    move-exception v7

    goto :goto_2

    :catchall_3
    move-exception v7

    move-object v8, v3

    .line 114
    :goto_2
    :try_start_4
    new-instance v7, Ljava/io/File;

    const-string/jumbo v9, "taskStatBegin"

    invoke-direct {v7, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v7

    .line 115
    .local v8, "taskStatBegin":Ljava/io/File;
    invoke-static {v4, v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a(Landroid/content/Context;Ljava/io/File;)Z

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v9, "taskStatBegin finish"

    invoke-interface {v7, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 120
    nop

    .end local v8    # "taskStatBegin":Ljava/io/File;
    goto :goto_3

    .line 118
    :catchall_4
    move-exception v7

    .line 123
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x3e8

    cmp-long v7, v9, v11

    if-gez v7, :cond_3

    .line 125
    const-wide/16 v9, 0x258

    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 128
    goto :goto_4

    .line 126
    :catchall_5
    move-exception v7

    .line 133
    :cond_3
    :goto_4
    :try_start_6
    new-instance v7, Ljava/io/File;

    const-string/jumbo v9, "taskStatEnd"

    invoke-direct {v7, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v7

    .line 134
    .local v8, "taskStatEnd":Ljava/io/File;
    invoke-static {v4, v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a(Landroid/content/Context;Ljava/io/File;)Z

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v9, "taskStatEnd finish"

    invoke-interface {v7, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 139
    nop

    .end local v8    # "taskStatEnd":Ljava/io/File;
    goto :goto_5

    .line 137
    :catchall_6
    move-exception v7

    .line 142
    :goto_5
    :try_start_7
    new-instance v7, Ljava/io/File;

    const-string/jumbo v9, "procStatEnd"

    invoke-direct {v7, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v8, "procStatEnd":Ljava/io/File;
    move-object v8, v7

    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b(Ljava/io/File;)Z

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v9, "procStatEnd finish"

    invoke-interface {v7, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 148
    nop

    .end local v8    # "procStatEnd":Ljava/io/File;
    goto :goto_6

    .line 146
    :catchall_7
    move-exception v7

    .line 150
    :goto_6
    new-instance v7, Ljava/io/File;

    const-string v9, "DiagnoseANRReport"

    invoke-direct {v7, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v8, "zipFile":Ljava/io/File;
    move-object v8, v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 153
    :try_start_8
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 156
    goto :goto_7

    .line 154
    :catchall_8
    move-exception v7

    .line 158
    :cond_4
    :goto_7
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "zipFilePath":Ljava/lang/String;
    :try_start_9
    invoke-static {v6, v7, v3, v3}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 163
    goto :goto_8

    .line 161
    :catchall_9
    move-exception v3

    .line 162
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    invoke-static {v8, v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a(Ljava/io/File;J)V

    return-void

    .line 167
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v9, "zipFile.exists false"

    invoke-interface {v3, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private static g()Z
    .locals 8

    .line 194
    const-string v0, "diagnoseANR"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "isOpen":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DumpInfoProcessor"

    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "diagnoseANR open false"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v2

    .line 200
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    if-nez v1, :cond_1

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "getLogContext is null"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return v2

    .line 206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->c:J

    .line 208
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "diagnoseOnFrameSkipped false < 1 day"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return v2
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 52
    const-string v0, "DumpInfoProcessor"

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "isDoingDiagnose return"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;)V

    const-string v3, "DumpDiagnoseInfo"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

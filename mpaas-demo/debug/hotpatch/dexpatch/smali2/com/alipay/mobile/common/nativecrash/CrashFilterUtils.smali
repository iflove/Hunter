.class public Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;
.super Ljava/lang/Object;
.source "CrashFilterUtils.java"


# static fields
.field public static final MPAAS_PRODUCT_VERSION:Ljava/lang/String; = "mPaaSProductVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "crashInfo"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "fullCheck"    # Z

    .line 194
    const-string v0, "CrashFilter"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 199
    .local v3, "time":J
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const-string v5, ">>> %s <<<"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v5, ">>> %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 202
    .local v1, "isFind":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 203
    .end local v3    # "time":J
    .local v5, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " call \'isTargetProcess\' spend "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    return v1

    .line 207
    .end local v1    # "isFind":Z
    .end local v5    # "time":J
    :catchall_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isTargetProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v2

    .line 195
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return v2
.end method

.method public static getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "exception"    # Ljava/lang/String;

    const-string v1, "CrashFilter"

    .line 301
    const-string v2, ""

    .line 303
    .local v2, "clientStatus":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    return-object v2

    .line 307
    :cond_0
    const-wide/16 v3, -0x1

    .line 308
    .local v3, "processSetupTimestamp":J
    const-wide/16 v5, -0x1

    .line 309
    .local v5, "crashTime":J
    const-wide/16 v7, 0x0

    .line 310
    .local v7, "clientLaunchTimestamp":J
    const-wide/16 v9, 0x0

    .line 311
    .local v9, "gotoBackgroundTimestamp":J
    const/4 v11, 0x0

    .line 312
    .local v11, "startupAction":Ljava/lang/String;
    const/4 v12, 0x0

    .line 314
    .local v12, "startupComponent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 316
    .local v13, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/StringReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v14, p0

    :try_start_1
    invoke-direct {v0, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "sr":Ljava/io/StringReader;
    new-instance v15, Ljava/io/BufferedReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-wide/from16 v16, v3

    .end local v3    # "processSetupTimestamp":J
    .local v16, "processSetupTimestamp":J
    const/16 v3, 0x2000

    :try_start_2
    invoke-direct {v15, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v13, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v24, v5

    move-object v5, v3

    move-object v6, v5

    move-wide/from16 v3, v16

    move-wide v15, v9

    move-object/from16 v17, v12

    move-object v12, v11

    move-wide v10, v7

    const/4 v7, 0x0

    move-wide/from16 v8, v24

    .line 320
    .end local v5    # "crashTime":J
    .end local v7    # "clientLaunchTimestamp":J
    .end local v9    # "gotoBackgroundTimestamp":J
    .end local v11    # "startupAction":Ljava/lang/String;
    .end local v16    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    .local v8, "crashTime":J
    .local v10, "clientLaunchTimestamp":J
    .local v12, "startupAction":Ljava/lang/String;
    .local v15, "gotoBackgroundTimestamp":J
    .local v17, "startupComponent":Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .local v19, "line":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 322
    move-object/from16 v18, v0

    .end local v0    # "sr":Ljava/io/StringReader;
    .local v18, "sr":Ljava/io/StringReader;
    const-string/jumbo v0, "processSetupTimestamp"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v20, v3

    move-object/from16 v3, v19

    .end local v19    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    .local v20, "processSetupTimestamp":J
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x3a

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 324
    .local v7, "startIndex":I
    move v7, v0

    if-ltz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_1

    .line 325
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v5, "time":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v19, v22

    move-wide/from16 v20, v19

    .line 330
    .end local v5    # "time":Ljava/lang/String;
    .end local v7    # "startIndex":I
    :cond_1
    const-string v0, "clientLaunchTimestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 332
    .restart local v7    # "startIndex":I
    move v7, v0

    if-ltz v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_2

    .line 333
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v5    # "time":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 338
    .end local v5    # "time":Ljava/lang/String;
    .end local v7    # "startIndex":I
    :cond_2
    const-string v0, "gotoBackgroundTimestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 340
    .restart local v7    # "startIndex":I
    move v7, v0

    if-ltz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_3

    .line 341
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v5    # "time":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 346
    .end local v5    # "time":Ljava/lang/String;
    .end local v7    # "startIndex":I
    :cond_3
    const-string v0, "log end: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 348
    .restart local v7    # "startIndex":I
    move v7, v0

    if-ltz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_4

    .line 349
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v5    # "time":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 351
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 352
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 353
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v8, v22

    move-object v6, v4

    .line 356
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    .end local v7    # "startIndex":I
    :cond_4
    const-string v0, "StartupAction"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v0, v7

    .line 358
    .local v0, "startIndex":I
    move v0, v4

    if-ltz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_6

    .line 359
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v5, "action":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 361
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 362
    move-object v4, v5

    move v7, v0

    move-object v12, v4

    .end local v12    # "startupAction":Ljava/lang/String;
    .local v4, "startupAction":Ljava/lang/String;
    goto :goto_1

    .line 361
    .end local v4    # "startupAction":Ljava/lang/String;
    .restart local v12    # "startupAction":Ljava/lang/String;
    :cond_5
    move v7, v0

    goto :goto_1

    .line 366
    .end local v0    # "startIndex":I
    .end local v5    # "action":Ljava/lang/String;
    :cond_6
    move v7, v0

    :cond_7
    :goto_1
    const-string v0, "StartupComponent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 367
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v4, v7

    .line 368
    .local v4, "startIndex":I
    move v7, v0

    .end local v4    # "startIndex":I
    .restart local v7    # "startIndex":I
    if-ltz v0, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_9

    .line 369
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v5

    .line 370
    .local v4, "component":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 371
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_8

    .line 372
    move-object v0, v4

    move-object/from16 v17, v0

    move-object v5, v4

    .end local v17    # "startupComponent":Ljava/lang/String;
    .local v0, "startupComponent":Ljava/lang/String;
    goto :goto_2

    .line 371
    .end local v0    # "startupComponent":Ljava/lang/String;
    .restart local v17    # "startupComponent":Ljava/lang/String;
    :cond_8
    move-object v5, v4

    .line 375
    .end local v4    # "component":Ljava/lang/String;
    .end local v7    # "startIndex":I
    :cond_9
    :goto_2
    move-object/from16 v0, v18

    move-wide/from16 v3, v20

    goto/16 :goto_0

    .line 366
    :cond_a
    move-object/from16 v0, v18

    move-wide/from16 v3, v20

    goto/16 :goto_0

    .line 377
    .end local v3    # "line":Ljava/lang/String;
    .end local v18    # "sr":Ljava/io/StringReader;
    :catchall_0
    move-exception v0

    move-wide v5, v8

    move-wide v7, v10

    move-object v11, v12

    move-wide v9, v15

    move-object/from16 v12, v17

    move-wide/from16 v3, v20

    goto :goto_5

    .line 320
    .end local v20    # "processSetupTimestamp":J
    .local v0, "sr":Ljava/io/StringReader;
    .local v3, "processSetupTimestamp":J
    .restart local v19    # "line":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v0

    move-wide/from16 v20, v3

    move-object/from16 v3, v19

    .line 382
    .end local v0    # "sr":Ljava/io/StringReader;
    .end local v3    # "processSetupTimestamp":J
    .end local v19    # "line":Ljava/lang/String;
    .restart local v20    # "processSetupTimestamp":J
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 386
    goto :goto_3

    .line 384
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 385
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v0    # "tr":Ljava/lang/Throwable;
    nop

    .line 389
    :goto_3
    move-object/from16 v0, v17

    move-wide/from16 v3, v20

    goto :goto_8

    .line 377
    .end local v20    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    :catchall_2
    move-exception v0

    move-wide/from16 v20, v3

    move-wide v5, v8

    move-wide v7, v10

    move-object v11, v12

    move-wide v9, v15

    move-object/from16 v12, v17

    .end local v3    # "processSetupTimestamp":J
    .restart local v20    # "processSetupTimestamp":J
    goto :goto_5

    .end local v8    # "crashTime":J
    .end local v10    # "clientLaunchTimestamp":J
    .end local v15    # "gotoBackgroundTimestamp":J
    .end local v17    # "startupComponent":Ljava/lang/String;
    .end local v20    # "processSetupTimestamp":J
    .local v5, "crashTime":J
    .local v7, "clientLaunchTimestamp":J
    .restart local v9    # "gotoBackgroundTimestamp":J
    .restart local v11    # "startupAction":Ljava/lang/String;
    .local v12, "startupComponent":Ljava/lang/String;
    .restart local v16    # "processSetupTimestamp":J
    :catchall_3
    move-exception v0

    move-wide/from16 v3, v16

    goto :goto_5

    .end local v16    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    :goto_4
    move-wide/from16 v16, v3

    .line 378
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    invoke-interface {v15, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 381
    .end local v0    # "tr":Ljava/lang/Throwable;
    if-eqz v13, :cond_c

    .line 382
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_6

    .line 384
    :catchall_6
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 385
    .restart local v0    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    invoke-interface {v15, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v0    # "tr":Ljava/lang/Throwable;
    goto :goto_7

    .line 386
    :cond_c
    :goto_6
    nop

    .line 389
    :goto_7
    move-wide v15, v9

    move-object v0, v12

    move-object v12, v11

    move-wide v10, v7

    move-wide v8, v5

    .end local v5    # "crashTime":J
    .end local v7    # "clientLaunchTimestamp":J
    .end local v9    # "gotoBackgroundTimestamp":J
    .end local v11    # "startupAction":Ljava/lang/String;
    .local v0, "startupComponent":Ljava/lang/String;
    .restart local v8    # "crashTime":J
    .restart local v10    # "clientLaunchTimestamp":J
    .local v12, "startupAction":Ljava/lang/String;
    .restart local v15    # "gotoBackgroundTimestamp":J
    :goto_8
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_11

    cmp-long v1, v8, v5

    if-lez v1, :cond_11

    .line 393
    const-string v1, "background"

    move-object v7, v13

    .end local v13    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    const-wide/16 v13, 0x1

    cmp-long v17, v15, v5

    if-lez v17, :cond_d

    sub-long v17, v8, v15

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 394
    invoke-virtual {v5, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v21, v17, v5

    if-lez v21, :cond_d

    .line 395
    return-object v1

    .line 399
    :cond_d
    const-wide/16 v5, 0x0

    cmp-long v17, v10, v5

    if-gtz v17, :cond_f

    cmp-long v17, v3, v5

    if-lez v17, :cond_f

    sub-long v5, v8, v3

    move-wide/from16 v17, v3

    .end local v3    # "processSetupTimestamp":J
    .local v17, "processSetupTimestamp":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 400
    invoke-virtual {v3, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v13, v5, v3

    if-gtz v13, :cond_e

    invoke-static {v12, v0}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 401
    :cond_e
    return-object v1

    .line 399
    .end local v17    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    :cond_f
    move-wide/from16 v17, v3

    .line 406
    .end local v3    # "processSetupTimestamp":J
    .restart local v17    # "processSetupTimestamp":J
    :cond_10
    const-string v1, "foreground"

    return-object v1

    .line 389
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v17    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    .restart local v13    # "br":Ljava/io/BufferedReader;
    :cond_11
    move-wide/from16 v17, v3

    move-object v7, v13

    .line 410
    .end local v3    # "processSetupTimestamp":J
    .end local v13    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "processSetupTimestamp":J
    return-object v2

    .line 380
    .end local v0    # "startupComponent":Ljava/lang/String;
    .end local v8    # "crashTime":J
    .end local v10    # "clientLaunchTimestamp":J
    .end local v15    # "gotoBackgroundTimestamp":J
    .end local v17    # "processSetupTimestamp":J
    .restart local v3    # "processSetupTimestamp":J
    .restart local v5    # "crashTime":J
    .local v7, "clientLaunchTimestamp":J
    .restart local v9    # "gotoBackgroundTimestamp":J
    .restart local v11    # "startupAction":Ljava/lang/String;
    .local v12, "startupComponent":Ljava/lang/String;
    .restart local v13    # "br":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v0

    move-object v14, v0

    .line 381
    if-eqz v13, :cond_12

    .line 382
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_9

    .line 384
    :catchall_8
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 385
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    invoke-interface {v15, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 386
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_12
    :goto_9
    nop

    :goto_a
    throw v14
.end method

.method public static getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "CrashFilter"

    .line 261
    const-string v1, ""

    .line 263
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 267
    :cond_0
    const/4 v2, 0x0

    .line 269
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 270
    .local v3, "sr":Ljava/io/StringReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v4

    const/4 v4, 0x0

    .line 273
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 275
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 277
    .local v4, "startIndex":I
    move v4, v5

    if-ltz v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 278
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    move-object v1, v5

    .line 281
    goto :goto_1

    .line 283
    .end local v4    # "startIndex":I
    :cond_2
    goto :goto_0

    .line 290
    .end local v3    # "sr":Ljava/io/StringReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :cond_4
    :goto_2
    goto :goto_3

    .line 292
    :catchall_0
    move-exception v3

    .line 293
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .end local v3    # "tr":Ljava/lang/Throwable;
    goto :goto_3

    .line 285
    :catchall_1
    move-exception v3

    .line 286
    .restart local v3    # "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 289
    .end local v3    # "tr":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 290
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 297
    :goto_3
    return-object v1

    .line 288
    :catchall_2
    move-exception v3

    .line 289
    if-eqz v2, :cond_5

    .line 290
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    .line 292
    :catchall_3
    move-exception v4

    .line 293
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 294
    .end local v4    # "tr":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    nop

    :goto_5
    throw v3

    .line 264
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_6
    :goto_6
    return-object v1
.end method

.method public static getProcessAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getMainProcessName()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "mainProcessName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 221
    if-eqz v2, :cond_0

    .line 222
    const-string/jumbo v1, "main"

    return-object v1

    .line 225
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPushProcessName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "pushProcessName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 227
    if-eqz v3, :cond_1

    .line 228
    const-string/jumbo v1, "push"

    return-object v1

    .line 231
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getToolsProcessName()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "toolsProcessName":Ljava/lang/String;
    invoke-static {p0, v3, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 233
    if-eqz v4, :cond_2

    .line 234
    const-string/jumbo v1, "tools"

    return-object v1

    .line 237
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getExtProcessName()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "extProcessName":Ljava/lang/String;
    invoke-static {p0, v4, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 239
    if-eqz v5, :cond_3

    .line 240
    const-string v1, "ext"

    return-object v1

    .line 243
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":lite1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":lite2"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":lite3"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":lite4"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":lite5"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 248
    :goto_1
    if-eqz v1, :cond_6

    .line 249
    const-string v1, "lite"

    return-object v1

    .line 252
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":sandboxed_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 253
    if-eqz v1, :cond_7

    .line 254
    const-string/jumbo v1, "sandboxed_"

    return-object v1

    .line 257
    :cond_7
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public static isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 415
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    return v1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, "isBackgroundAction":Z
    const/4 v2, 0x0

    .line 423
    .local v2, "isBackgroundComponent":Z
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 424
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 425
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 426
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.TIME_SET"

    .line 427
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 428
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 429
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    .line 430
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "org.rome.android.ipp.intent.action.PINGA"

    .line 431
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "org.rome.android.IPP_CALL"

    .line 432
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.alipay.mobile.commonbiz.biz.SET_SCHEME"

    .line 433
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.alipay.mobile.notification"

    .line 434
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.meizu.cloud.pushservice.action.PUSH_SERVICE_START"

    .line 435
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "monitor.action.MONITOR_POWER"

    .line 436
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.huawei.intent.action.PUSH"

    .line 437
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 438
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    :cond_1
    const/4 v0, 0x1

    .line 442
    :cond_2
    const-string v3, "com.alipay.android.launcher.service.LauncherService"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.launcher.service.LauncherService$InnerService"

    .line 443
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.phone.mobilesdk.apm.service.APMInnerService"

    .line 444
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "org.rome.android.ipp.binder.IppService"

    .line 445
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.amap.api.location.APSService"

    .line 446
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.taobao.android.sso.internal.AlipayAuthenticationService"

    .line 447
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.taobao.infsword.receiver.SmsIntercept"

    .line 448
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.command.engine.TaskExeService"

    .line 449
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.pushsdk.push.NotificationService"

    .line 450
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.launcher.service.DummyService"

    .line 451
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.rome.pushservice.integration.RecvMsgIntentService"

    .line 452
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.healthcommon.stepcounter.APMainStepService"

    .line 453
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.liteprocess.ipc.IpcMsgServer"

    .line 454
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.common.logging.process.LogServiceInMainProcess"

    .line 456
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.base.network.NetworkStartMainProcService"

    .line 457
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.performance.sync.PerfSyncService"

    .line 458
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.rome.pushservice.direct.PushDirectMainProcessService"

    .line 459
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.framework.service.ChargingJobService"

    .line 460
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.common.fgbg.FgBgMonitorService"

    .line 461
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.berserker.service.PreloadService"

    .line 462
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.berserker.service.PreloadService$InnerService"

    .line 463
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.quinox.preload.PreloadService"

    .line 464
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.quinox.preload.MainPldService"

    .line 465
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.launcher.service.WonderfulService"

    .line 467
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.launcher.service.WonderfulService$InnerService"

    .line 468
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.clean.CleanService"

    .line 471
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.mobile.common.amnet.service.AmnetMainProcService"

    .line 472
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.alipay.android.app.MspService"

    .line 475
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    :cond_3
    const/4 v2, 0x1

    .line 480
    :cond_4
    const-string v3, "com.alipay.android.phone.offlinepay.nfc.CardService"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 481
    const-string v3, "BenWee V5"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 482
    const/4 v2, 0x1

    .line 486
    :cond_5
    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    goto :goto_0

    .line 491
    .end local v0    # "isBackgroundAction":Z
    .end local v2    # "isBackgroundComponent":Z
    :cond_6
    goto :goto_1

    .line 487
    .restart local v0    # "isBackgroundAction":Z
    .restart local v2    # "isBackgroundComponent":Z
    :cond_7
    :goto_0
    return v1

    .line 489
    .end local v0    # "isBackgroundAction":Z
    .end local v2    # "isBackgroundComponent":Z
    :catchall_0
    move-exception v0

    .line 490
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "CrashFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isIgnoreCrash(Ljava/lang/String;)I
    .locals 8
    .param p0, "crashInfo"    # Ljava/lang/String;

    const-string v0, "CrashFilter"

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 33
    return v2

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, "time":J
    const/4 v1, 0x0

    .line 55
    .local v1, "findResult":I
    invoke-static {p0}, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->parse(Ljava/lang/String;)Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->getCrashSignal()I

    move-result v5

    move v1, v5

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 58
    .end local v3    # "time":J
    .local v5, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "isIgnoreCrash spend "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return v1

    .line 60
    .end local v1    # "findResult":I
    .end local v5    # "time":J
    :catchall_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isIgnoreCrash: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return v2
.end method

.method public static isKnownInvalidCrash(Ljava/lang/String;)Z
    .locals 12
    .param p0, "crashInfo"    # Ljava/lang/String;

    const-string v0, "CrashFilter"

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    return v2

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "startupComponent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 119
    .local v3, "logsDirectory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 121
    .local v4, "e":Ljava/io/BufferedReader;
    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, "sr":Ljava/io/StringReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v7, v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 125
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 126
    const-string v9, "StartupComponent"

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v11, 0x3a

    if-eqz v9, :cond_2

    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 128
    .local v8, "startIndex":I
    move v8, v9

    if-ltz v9, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    if-ge v8, v9, :cond_3

    .line 129
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v7, "component":Ljava/lang/String;
    move-object v7, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 134
    .end local v7    # "component":Ljava/lang/String;
    .end local v8    # "startIndex":I
    :cond_2
    const-string v9, "[DEBUG] Check logs in directory: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 136
    .restart local v8    # "startIndex":I
    move v8, v9

    if-ltz v9, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    if-ge v8, v9, :cond_4

    .line 137
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v7, "directory":Ljava/lang/String;
    move-object v7, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 139
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto :goto_1

    .line 134
    .end local v7    # "directory":Ljava/lang/String;
    .end local v8    # "startIndex":I
    :cond_3
    :goto_0
    nop

    .line 144
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_1

    .line 154
    .end local v6    # "sr":Ljava/io/StringReader;
    .end local v10    # "line":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_6
    :goto_2
    goto :goto_3

    .line 156
    :catchall_0
    move-exception v6

    .line 157
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v6    # "tr":Ljava/lang/Throwable;
    goto :goto_3

    .line 149
    :catchall_1
    move-exception v6

    .line 150
    .restart local v6    # "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    .end local v6    # "tr":Ljava/lang/Throwable;
    if-eqz v4, :cond_6

    .line 154
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 161
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 162
    const-string v0, "com.lbe.doubleagent.client.proxy.ActivityProxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    const-string v0, "com.lbe.doubleagent.client.proxy.ServiceProxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    const-string v0, "com.morgoo.droidplugin.stub.ServiceStub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    :cond_7
    return v5

    .line 168
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 169
    const-string v0, "/com.lbe.parallel/parallel/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 170
    const-string v0, "/com.qihoo.magic/Plugin/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 171
    const-string v0, "/com.dobe.sandbox/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 172
    const-string v0, "/com.excelliance.dualaid/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 173
    const-string v0, "/com.ppt.double_assistant/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    const-string v0, "/com.doubleopen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    const-string v0, "/io.va.exposed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 176
    const-string v0, "/com.bfire.da.nui/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 177
    const-string v0, "/com.plda.dualapp/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 178
    const-string v0, "com.qgwapp.shadowside"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 179
    const-string v0, "com.lody.virtual.client"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 180
    const-string v0, "com.qihoo.magicmutiple/Plugin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 181
    const-string v0, "/io.hello/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 182
    const-string v0, "com.qyqd/virtual"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 183
    const-string v0, "com.deniu.multi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    const-string v0, "/c.l.a/plugin/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 185
    const-string v0, "dkmodel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "virtual"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    :cond_9
    return v5

    .line 190
    :cond_a
    return v2

    .line 152
    :catchall_2
    move-exception v2

    .line 153
    if-eqz v4, :cond_b

    .line 154
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    .line 156
    :catchall_3
    move-exception v5

    .line 157
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 158
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_b
    :goto_4
    nop

    :goto_5
    throw v2
.end method

.method public static isPotentialBackgroundCrash(Ljava/lang/String;)Z
    .locals 2
    .param p0, "exceptionInfo"    # Ljava/lang/String;

    .line 496
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 497
    return v1

    .line 500
    :cond_0
    const-string v0, "java.lang.SecurityException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const-string v0, "Unable to find app for caller android.app.ApplicationThreadProxy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string/jumbo v0, "when publishing content providers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "android.os.Parcel.readException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    const-string v0, "android.app.ActivityManagerProxy.publishContentProviders"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const-string v0, "android.app.ActivityThread.installContentProviders"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    const-string v0, "android.app.ActivityThread.handleBindApplication"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_1
    return v1
.end method

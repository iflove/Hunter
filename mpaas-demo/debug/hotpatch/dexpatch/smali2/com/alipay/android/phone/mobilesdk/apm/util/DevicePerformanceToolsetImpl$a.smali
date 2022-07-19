.class final Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;
.super Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;
.source "DevicePerformanceToolsetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    .line 291
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    const-string v0, "close app reader got exception"

    const-string v1, "DevicePerformanceToolset"

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 371
    .local v3, "procFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object v3, v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 373
    .local v5, "procStatString":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v4

    .line 379
    .end local v5    # "procStatString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_0
    :goto_0
    goto :goto_1

    .line 381
    :catchall_0
    move-exception v4

    .line 382
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v1, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 374
    :catchall_1
    move-exception v4

    .line 375
    .restart local v4    # "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "RandomAccessFile(Process Stat) reader fail, error"

    invoke-interface {v5, v1, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 378
    .end local v4    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_0

    .line 379
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 385
    :goto_1
    return-object v2

    .line 377
    :catchall_2
    move-exception v4

    .line 378
    if-eqz v3, :cond_1

    .line 379
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 381
    :catchall_3
    move-exception v5

    .line 382
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v1, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 383
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    nop

    :goto_3
    throw v4
.end method


# virtual methods
.method public final getAlipayCpuLoad()F
    .locals 5

    .line 360
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->e:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 361
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->g:J

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    return v2

    .line 363
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getSystemCpuLoad()F
    .locals 5

    .line 351
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->e:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 352
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->f:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    return v2

    .line 354
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final update()V
    .locals 23

    .line 314
    move-object/from16 v1, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    monitor-enter p0

    .line 318
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    .local v2, "start":J
    :try_start_1
    const-string v0, "/proc/stat"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 321
    .local v5, "procStats":[Ljava/lang/String;
    move-object v5, v0

    const/4 v6, 0x2

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 322
    .local v6, "userTime":J
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 323
    .local v8, "systemTime":J
    const/4 v0, 0x5

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 324
    .local v10, "idleTime":J
    const/4 v0, 0x6

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 325
    .local v12, "ioWaitTime":J
    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 326
    .local v14, "irqTime":J
    const/16 v0, 0x8

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 327
    .local v16, "softIrqTime":J
    add-long v18, v6, v8

    add-long v18, v18, v10

    add-long v18, v18, v12

    add-long v18, v18, v14

    move-object/from16 v20, v5

    .end local v5    # "procStats":[Ljava/lang/String;
    .local v20, "procStats":[Ljava/lang/String;
    add-long v4, v18, v16

    .line 328
    .local v4, "cpuTotalTime":J
    move-wide/from16 v18, v6

    .end local v6    # "userTime":J
    .local v18, "userTime":J
    iget-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->b:J

    sub-long v6, v4, v6

    iput-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->e:J

    .line 329
    iget-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->c:J

    sub-long v6, v10, v6

    iput-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->f:J

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 331
    .local v0, "procPidStats":[Ljava/lang/String;
    move-object v0, v6

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v21, 0xe

    aget-object v21, v0, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    add-long v6, v6, v21

    .line 332
    .local v6, "appTime":J
    move-wide/from16 v21, v8

    .end local v8    # "systemTime":J
    .local v21, "systemTime":J
    iget-wide v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->d:J

    sub-long v8, v6, v8

    iput-wide v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->g:J

    .line 333
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->b:J

    .line 334
    iput-wide v10, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->c:J

    .line 335
    iput-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v0    # "procPidStats":[Ljava/lang/String;
    .end local v4    # "cpuTotalTime":J
    .end local v6    # "appTime":J
    .end local v10    # "idleTime":J
    .end local v12    # "ioWaitTime":J
    .end local v14    # "irqTime":J
    .end local v16    # "softIrqTime":J
    .end local v18    # "userTime":J
    .end local v20    # "procStats":[Ljava/lang/String;
    .end local v21    # "systemTime":J
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    .line 337
    .local v0, "t":Ljava/lang/Throwable;
    const-wide/16 v4, 0x0

    :try_start_2
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->d:J

    .line 338
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->b:J

    .line 339
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->c:J

    .line 340
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->g:J

    .line 341
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->e:J

    .line 342
    iput-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;->f:J

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "DevicePerformanceToolset"

    const-string v6, "RandomAccessFile(App Stat) reader fail, error"

    invoke-interface {v4, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "DevicePerformanceToolset"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start cpu checker cost:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v2    # "start":J
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

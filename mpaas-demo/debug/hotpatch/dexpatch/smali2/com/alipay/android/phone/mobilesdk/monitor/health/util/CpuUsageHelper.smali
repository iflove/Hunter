.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;
.super Ljava/lang/Object;
.source "CpuUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;,
        Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    }
.end annotation


# static fields
.field private static a:[B


# instance fields
.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

.field private f:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a:[B

    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "workerHandler"    # Landroid/os/Handler;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->g:Z

    .line 59
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$1;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->h:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$2;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->i:Ljava/lang/Runnable;

    .line 110
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b:Landroid/os/Handler;

    .line 111
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d:I

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->e()Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;
    .param p1, "x1"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    return-object p1
.end method

.method private static a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Ljava/io/File;)Z
    .locals 3
    .param p0, "info"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    .param p1, "procDir"    # Ljava/io/File;

    .line 163
    invoke-static {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->f:J

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->g:J

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->b:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->f:J

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->n:J

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->b:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->g:J

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->o:J

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;Ljava/io/File;)Z
    .locals 9
    .param p0, "tInfo"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    .param p1, "threadDir"    # Ljava/io/File;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 231
    .local v2, "rawStat":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "CpuUsageHelper"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "Obtain thread usage information but is rawStat is empty."

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return v4

    .line 236
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "extractElements":[Ljava/lang/String;
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    invoke-direct {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;-><init>()V

    .line 238
    .local v1, "cpuInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    move-object v1, v5

    const/4 v6, 0x1

    aget-object v7, v0, v6

    iput-object v7, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a:Ljava/lang/String;

    .line 239
    const/16 v5, 0xd

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->b:J

    .line 240
    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->c:J

    .line 241
    const/16 v5, 0x11

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->e:I

    .line 242
    const/16 v5, 0x12

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->d:I

    .line 243
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    .line 244
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a:Ljava/lang/String;

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    .line 245
    aget-object v5, v0, v4

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    .line 246
    const/4 v5, 0x3

    aget-object v5, v0, v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    return v6

    .line 248
    .end local v0    # "extractElements":[Ljava/lang/String;
    .end local v1    # "cpuInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    :catchall_0
    move-exception v0

    .line 249
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Obtain thread usage information error, rawStat: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    return v4
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;)Z
    .locals 16
    .param p0, "buffer"    # Ljava/util/Map;
    .param p1, "threadUsageInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " ms."

    const-string/jumbo v3, "sample java thread crazy core waste "

    const-string v4, "CpuUsageHelper"

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 340
    .local v5, "start":J
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 341
    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    nop

    .end local v7    # "thread":Ljava/lang/Thread;
    goto :goto_0

    .line 343
    :cond_0
    const/4 v0, 0x1

    .line 345
    .local v0, "isFulfilled":Z
    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 346
    .local v7, "tmpThreadSet":Ljava/util/Set;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v9

    .line 347
    .local v8, "tmpJTIList":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v10

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 348
    .local v10, "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    move-object v10, v12

    iget-object v12, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    if-eqz v12, :cond_1

    iget-object v12, v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 351
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 352
    iget-object v12, v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    .line 353
    .local v11, "jti":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    move-object v11, v13

    iget-object v13, v13, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_2

    iget-object v13, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    iget-object v13, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    if-eqz v13, :cond_2

    iget-object v13, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    array-length v13, v13

    if-eqz v13, :cond_2

    .line 357
    iget-object v13, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v13, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/StackTraceElement;

    .line 359
    .local v13, "tmpSTEArray":[Ljava/lang/StackTraceElement;
    iget-object v14, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    invoke-static {v14, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 362
    new-instance v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    iget-object v15, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Thread;

    invoke-direct {v14, v15, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;-><init>(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    nop

    .end local v11    # "jti":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    goto :goto_2

    .line 364
    .end local v13    # "tmpSTEArray":[Ljava/lang/StackTraceElement;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 365
    iget-object v12, v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 368
    :cond_4
    iget-object v12, v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v13, v13, 0x4

    if-ge v12, v13, :cond_5

    .line 369
    and-int/lit8 v0, v0, 0x0

    .line 371
    .end local v10    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_5
    goto/16 :goto_1

    .line 372
    :cond_6
    nop

    .line 374
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-interface {v9, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return v0

    .line 374
    .end local v0    # "isFulfilled":Z
    .end local v7    # "tmpThreadSet":Ljava/util/Set;
    .end local v8    # "tmpJTIList":Ljava/util/List;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-interface {v7, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/StackTraceElement;
    .param p1, "b"    # [Ljava/lang/StackTraceElement;

    .line 380
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 384
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    return v0

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_3
    :goto_1
    return v0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "rawStat"    # Ljava/lang/String;

    .line 428
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 429
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 430
    .local v4, "line":Ljava/lang/String;
    move-object v4, v5

    const-string v6, "cpu "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    const-string v0, "\\s+"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_1
    return-object v2
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 12
    .param p0, "threadUsageInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 296
    .local v0, "start":J
    const-string v2, " ms."

    const-string v3, "Sample java thread crazy waste "

    const-string v4, "CpuUsageHelper"

    if-eqz p0, :cond_8

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 299
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v5, "sampleBuffer":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 301
    .local v8, "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    move-object v8, v10

    iget-object v10, v10, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 304
    iget-object v10, v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    .line 305
    .local v9, "jti":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    move-object v9, v11

    iget-object v11, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_2

    iget-object v11, v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 308
    iget-object v11, v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 311
    iget-object v11, v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    nop

    .end local v9    # "jti":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    goto :goto_1

    .line 313
    .end local v8    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_3
    goto :goto_0

    .line 314
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    .line 330
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v6, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void

    .line 317
    :cond_5
    const/4 v6, 0x0

    .local v6, "count":I
    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_7

    .line 319
    const-wide/16 v7, 0x64

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    goto :goto_3

    .line 320
    :catch_0
    move-exception v7

    .line 323
    :goto_3
    :try_start_2
    invoke-static {v5, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Ljava/util/Map;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 324
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string v8, "Sample java thread crazy is calm due to satisfaction."

    invoke-interface {v7, v4, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v7, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 317
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 328
    .end local v6    # "count":I
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "Sample java thread crazy is calm due to overflow."

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .end local v5    # "sampleBuffer":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v5, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v6, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_8
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v5, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private static b(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Ljava/io/File;)Z
    .locals 9
    .param p0, "pInfo"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    .param p1, "procDir"    # Ljava/io/File;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 175
    .local v2, "rawStat":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "CpuUsageHelper"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "Obtain thread usage information but is rawStat is empty."

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v4

    .line 180
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "extractElements":[Ljava/lang/String;
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    invoke-direct {v5}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;-><init>()V

    .line 182
    .local v1, "cpuInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    move-object v1, v5

    const/4 v6, 0x1

    aget-object v7, v0, v6

    iput-object v7, v5, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a:Ljava/lang/String;

    .line 183
    const/16 v5, 0xd

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->b:J

    .line 184
    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->c:J

    .line 185
    const/16 v5, 0x11

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->e:I

    .line 186
    const/16 v5, 0x12

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->d:I

    .line 187
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->b:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    .line 188
    iget-object v5, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a:Ljava/lang/String;

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->a:Ljava/lang/String;

    .line 189
    aget-object v5, v0, v4

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->c:Ljava/lang/String;

    .line 190
    const/4 v5, 0x3

    aget-object v5, v0, v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    return v6

    .line 192
    .end local v0    # "extractElements":[Ljava/lang/String;
    .end local v1    # "cpuInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Obtain process usage information error, rawStat: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    return v4
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "rawStat"    # Ljava/lang/String;

    .line 438
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 439
    .local v0, "idxLeft":I
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 440
    .local v1, "idxRight":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "left":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "right":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 444
    .local v6, "elements":[Ljava/lang/String;
    move-object v6, v5

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 445
    return-object v6
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    const-string v0, "CpuUsageHelper"

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 450
    return-object v2

    .line 452
    :cond_0
    const/4 v1, 0x0

    .line 454
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    .line 455
    .local v4, "file":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 456
    return-object v2

    .line 458
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 461
    .local v3, "builder":Ljava/lang/StringBuilder;
    .local v6, "hasRead":I
    :goto_0
    sget-object v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a:[B

    invoke-virtual {v1, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_2

    .line 462
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a:[B

    invoke-direct {v7, v8, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    goto :goto_1

    .line 471
    :catch_0
    move-exception v5

    .line 472
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 465
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "hasRead":I
    :catchall_0
    move-exception v3

    .line 466
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can\'t read file, path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    .end local v3    # "tr":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 470
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 473
    :goto_2
    goto :goto_3

    .line 471
    :catch_1
    move-exception v3

    .line 472
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 476
    :cond_3
    :goto_3
    return-object v2

    .line 468
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 470
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 473
    goto :goto_4

    .line 471
    :catch_2
    move-exception v3

    .line 472
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    throw v2
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c:I

    return v0
.end method

.method private static d()J
    .locals 9

    const-string v0, "CpuUsageHelper"

    .line 393
    const-wide/16 v1, -0x1

    :try_start_0
    const-string v3, "/proc/stat"

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 394
    .local v4, "deviceItems":[Ljava/lang/String;
    move-object v4, v3

    if-nez v3, :cond_0

    .line 395
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v5, "Can\'t parse device stat file!"

    invoke-interface {v3, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-wide v1

    .line 398
    :cond_0
    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v3, 0x3

    aget-object v3, v4, v3

    .line 399
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v3, 0x5

    aget-object v3, v4, v3

    .line 400
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v3, 0x6

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v3, 0x7

    aget-object v3, v4, v3

    .line 401
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, v0

    .line 398
    return-wide v5

    .line 402
    .end local v4    # "deviceItems":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 403
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    return-wide v1
.end method

.method private e()Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    .locals 19

    const-string v1, "Sample once waste time: "

    const-string v2, "CpuUsageHelper"

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 411
    .local v3, "start":J
    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "/proc/"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p0

    :try_start_1
    iget v7, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/stat"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v5

    .line 412
    .local v7, "procItems":[Ljava/lang/String;
    move-object v7, v0

    const/16 v8, 0xd

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v0, 0xe

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v0, 0x11

    aget-object v0, v7, v0

    .line 413
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v0, 0x12

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 414
    .local v8, "procTimeSlice":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x0

    .line 415
    .local v12, "deviceTimeSlice":J
    move-wide v15, v10

    .end local v12    # "deviceTimeSlice":J
    .local v15, "deviceTimeSlice":J
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_0

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v5

    .line 418
    :cond_0
    :try_start_2
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v12, v0

    move-wide v13, v8

    invoke-direct/range {v12 .. v18}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;-><init>(JJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-object v0

    .line 419
    .end local v7    # "procItems":[Ljava/lang/String;
    .end local v8    # "procTimeSlice":J
    .end local v15    # "deviceTimeSlice":J
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    .line 420
    .local v0, "tr":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-object v5

    .line 423
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->f:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;)Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->e:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;)V
    .locals 0
    .param p1, "cpuOccupancyRateCallback"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->f:Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$Callback;

    .line 116
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 9
    .param p1, "threadUsageInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;",
            ">;)V"
        }
    .end annotation

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "CpuUsageHelper"

    const-string v2, "Glue java thread information but thread info list is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "pidStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 262
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 268
    .local v4, "tInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    iget-object v5, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    .line 270
    .local v5, "mainThread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    .line 271
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    .line 272
    iget-object v6, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    new-instance v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;-><init>(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    goto :goto_1

    .line 275
    .end local v5    # "mainThread":Ljava/lang/Thread;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    iget-object v5, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    if-nez v5, :cond_4

    .line 279
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    .line 281
    :cond_4
    iget-object v5, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    new-instance v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    invoke-direct {v6, v7, v8}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;-><init>(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    .line 281
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v4    # "tInfo":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    goto :goto_1

    .line 284
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_5
    goto/16 :goto_0

    .line 286
    :cond_6
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->g:Z

    return v0
.end method

.method public final c()Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;
    .locals 10

    .line 127
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d()J

    move-result-wide v0

    .line 128
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 129
    return-object v2

    .line 131
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    invoke-direct {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;-><init>()V

    .line 133
    invoke-static {v4, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    return-object v2

    .line 137
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/task"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 138
    array-length v5, v3

    if-nez v5, :cond_2

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "CpuUsageHelper"

    const-string v3, "Can\'t get threads\' information!"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object v2

    .line 142
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    .line 143
    array-length v2, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    aget-object v6, v3, v5

    .line 144
    new-instance v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    invoke-direct {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;-><init>()V

    .line 145
    invoke-static {v7, v6}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    iget-wide v8, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->f:J

    iput-wide v8, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->f:J

    .line 149
    iget-wide v8, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->g:J

    iput-wide v8, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->g:J

    .line 150
    iget-object v6, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v8, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->f:J

    iput-wide v8, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->n:J

    .line 151
    iget-object v6, v7, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iget-wide v8, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->g:J

    iput-wide v8, v6, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->o:J

    .line 152
    iget-object v6, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_4
    iget-object v2, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->b:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iput-wide v0, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    .line 156
    iget-object v2, v4, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 157
    iget-object v3, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    iput-wide v0, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    return-object v4
.end method

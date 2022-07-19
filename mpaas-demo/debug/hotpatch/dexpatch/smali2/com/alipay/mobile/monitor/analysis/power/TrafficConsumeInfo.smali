.class public Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
.super Ljava/lang/Object;
.source "TrafficConsumeInfo.java"


# static fields
.field public static final LOAD_TIME_SCALE:J


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->LOAD_TIME_SCALE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    .line 83
    return-void
.end method


# virtual methods
.method public calcGprsBytes()J
    .locals 4

    .line 151
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public calcRxBytes()J
    .locals 9

    .line 155
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    add-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    return-wide v0
.end method

.method public calcTotalBytes()J
    .locals 4

    .line 137
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public calcTxBytes()J
    .locals 9

    .line 159
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    add-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    return-wide v0
.end method

.method public calcWifiBytes()J
    .locals 4

    .line 144
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getGprsRxBytes()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    return-wide v0
.end method

.method public getGprsTxBytes()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    return-wide v0
.end method

.method public getLoadSecondTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    return v0
.end method

.method public getWifiRxBytes()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    return-wide v0
.end method

.method public getWifiTxBytes()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    return-wide v0
.end method

.method public load(Z)V
    .locals 16

    .line 183
    move-object/from16 v1, p0

    const-string v2, "load: "

    const-string v3, "TrafficConsumeInfo"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->LOAD_TIME_SCALE:J

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    .line 186
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getUserId()I

    move-result v0

    .line 188
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 189
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 190
    move-wide v4, v6

    .line 192
    :cond_0
    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->setTotalRxBytes(J)V

    .line 194
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 195
    cmp-long v10, v8, v6

    if-gez v10, :cond_1

    .line 196
    move-wide v8, v6

    .line 198
    :cond_1
    invoke-virtual {v1, v8, v9}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->setTotalTxBytes(J)V

    .line 200
    if-eqz p1, :cond_2

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    cmp-long v4, v8, v6

    if-lez v4, :cond_2

    .line 201
    return-void

    .line 205
    :cond_2
    nop

    .line 206
    nop

    .line 209
    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "netstats"

    .line 210
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 209
    invoke-static {v5}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 211
    if-nez v5, :cond_7

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    .line 263
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 265
    :cond_3
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    .line 266
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 268
    :cond_4
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_5

    .line 269
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 271
    :cond_5
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_6

    .line 272
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 212
    :cond_6
    return-void

    .line 215
    :cond_7
    :try_start_1
    const-class v8, Landroid/net/INetworkStatsService;

    const-string v9, "getMobileIfaces"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    if-nez v8, :cond_c

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_8

    .line 263
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 265
    :cond_8
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_9

    .line 266
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 268
    :cond_9
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_a

    .line 269
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 271
    :cond_a
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_b

    .line 272
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 217
    :cond_b
    return-void

    .line 220
    :cond_c
    :try_start_2
    invoke-interface {v5}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v5

    .line 221
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 223
    if-eqz v5, :cond_d

    array-length v9, v5

    if-eqz v9, :cond_d

    .line 224
    array-length v9, v5

    :goto_0
    if-ge v10, v9, :cond_d

    aget-object v11, v5, v10

    .line 225
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 228
    :cond_d
    new-instance v5, Ljava/io/FileReader;

    const-string v9, "/proc/net/xt_qtaguid/stats"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 234
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 241
    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 242
    const/4 v11, 0x1

    aget-object v12, v10, v11

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x5

    const/4 v14, 0x7

    const/4 v15, 0x2

    const-string v6, "0x0"

    if-eqz v12, :cond_e

    :try_start_5
    aget-object v7, v10, v15

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 244
    iget-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    aget-object v4, v10, v14

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 245
    iget-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    aget-object v4, v10, v13

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v6, v10

    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 247
    :cond_e
    const-string/jumbo v7, "wlan0"

    aget-object v11, v10, v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    aget-object v7, v10, v15

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 249
    iget-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    aget-object v4, v10, v13

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 250
    iget-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    aget-object v4, v10, v14

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v6, v10

    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 253
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unkown line:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    :cond_10
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 260
    :cond_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gez v0, :cond_12

    .line 263
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 265
    :cond_12
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_13

    .line 266
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 268
    :cond_13
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_14

    .line 269
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 271
    :cond_14
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_15

    .line 272
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 277
    :cond_15
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 280
    goto :goto_2

    .line 278
    :catch_0
    move-exception v0

    .line 284
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 287
    return-void

    .line 285
    :catch_1
    move-exception v0

    .line 287
    return-void

    .line 257
    :catchall_0
    move-exception v0

    move-object v4, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v4

    .line 260
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gez v0, :cond_16

    .line 263
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 265
    :cond_16
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_17

    .line 266
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 268
    :cond_17
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_18

    .line 269
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 271
    :cond_18
    iget-wide v2, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_19

    .line 272
    iput-wide v6, v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 275
    :cond_19
    if-eqz v4, :cond_1a

    .line 277
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 280
    goto :goto_4

    .line 278
    :catch_2
    move-exception v0

    .line 282
    :cond_1a
    :goto_4
    if-eqz v5, :cond_1b

    .line 284
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 287
    return-void

    .line 290
    :cond_1b
    return-void
.end method

.method public readFromSP(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 293
    if-nez p1, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    const-string v0, "loadSecondTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    .line 297
    const/4 v0, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    .line 298
    const-string/jumbo v0, "totalTxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    .line 299
    const-string/jumbo v0, "totalRxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 300
    const-string/jumbo v0, "wifiTxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 301
    const-string/jumbo v0, "wifiRxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 302
    const-string v0, "gprsTxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 303
    const-string v0, "gprsRxBytes"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 304
    return-void
.end method

.method public setGprsRxBytes(J)V
    .locals 0
    .param p1, "gprsRxBytes"    # J

    .line 106
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 107
    return-void
.end method

.method public setGprsTxBytes(J)V
    .locals 0
    .param p1, "gprsTxBytes"    # J

    .line 102
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 103
    return-void
.end method

.method public setLoadSecondTime(J)V
    .locals 0
    .param p1, "loadSecondTime"    # J

    .line 70
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    .line 71
    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0
    .param p1, "totalRxBytes"    # J

    .line 90
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 91
    return-void
.end method

.method public setTotalTxBytes(J)V
    .locals 0
    .param p1, "totalTxBytes"    # J

    .line 86
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    .line 87
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 78
    iput p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    .line 79
    return-void
.end method

.method public setWifiRxBytes(J)V
    .locals 0
    .param p1, "wifiRxBytes"    # J

    .line 98
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 99
    return-void
.end method

.method public setWifiTxBytes(J)V
    .locals 0
    .param p1, "wifiTxBytes"    # J

    .line 94
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 95
    return-void
.end method

.method public subtraction(Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;)V
    .locals 4
    .param p1, "consumeInfo"    # Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    .line 166
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 167
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    .line 169
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 170
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 172
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 173
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 175
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 324
    .local v1, "message":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string/jumbo v2, "version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, ", loadSecondTime = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, ", totalTxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, ", totalRxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    const-string v0, ", wifiTxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    const-string v0, ", wifiRxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, ", gprsTxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    const-string v0, ", gprsRxBytes = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToSP(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 307
    if-nez p1, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:J

    const-string v2, "loadSecondTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:I

    const-string/jumbo v1, "version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:J

    const-string/jumbo v2, "totalTxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 313
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    const-string/jumbo v2, "totalRxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    const-string/jumbo v2, "wifiTxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    const-string/jumbo v2, "wifiRxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    const-string v2, "gprsTxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    const-string v2, "gprsRxBytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void
.end method

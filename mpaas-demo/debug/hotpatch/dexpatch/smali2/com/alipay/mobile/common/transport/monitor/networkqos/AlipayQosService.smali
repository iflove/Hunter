.class public Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;
.super Ljava/lang/Object;
.source "AlipayQosService.java"


# static fields
.field public static final QOE_FROM_DIAG:B = 0x3t

.field public static final QOE_FROM_INTERFERENCE:B = 0x6t

.field public static final QOE_FROM_MMTP:B = 0x1t

.field public static final QOE_FROM_NBET:B = 0x4t

.field public static final QOE_FROM_READING:B = 0x5t

.field public static final QOE_FROM_TCP:B = 0x2t

.field public static final QOE_NET_BAD:D = 5000.0

.field public static final QOS_LEVEL_A:B = 0x1t

.field public static final QOS_LEVEL_B:B = 0x2t

.field public static final QOS_LEVEL_C:B = 0x3t

.field public static final QOS_LEVEL_D:B = 0x4t

.field private static a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

.field private c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a()V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    .line 83
    return-void
.end method

.method private a(D)I
    .locals 5
    .param p1, "speed"    # D

    .line 227
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->g:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->h:D

    cmpg-double v4, v2, p1

    if-gtz v4, :cond_1

    cmpg-double v4, p1, v0

    if-gez v4, :cond_1

    .line 230
    const/4 v0, 0x2

    return v0

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->i:D

    cmpg-double v4, v0, p1

    if-gtz v4, :cond_2

    cmpg-double v0, p1, v2

    if-gez v0, :cond_2

    .line 232
    const/4 v0, 0x3

    return v0

    .line 234
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private a(DD)I
    .locals 3
    .param p1, "rtt"    # D
    .param p3, "speed"    # D

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getRtoLevel(D)I

    move-result v0

    const/4 v1, 0x0

    .line 197
    .local v1, "rtoLevel":I
    move v1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 198
    return v2

    .line 200
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a(D)I

    move-result v0

    .line 201
    if-ge v0, v1, :cond_1

    .line 202
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 204
    :cond_1
    return v1
.end method

.method private a()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 88
    .local v0, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RTO_BOUND_A:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->d:D

    .line 89
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RTO_BOUND_B:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->e:D

    .line 90
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RTO_BOUND_C:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->f:D

    .line 92
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPEED_BOUND_A:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->g:D

    .line 93
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPEED_BOUND_B:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->h:D

    .line 94
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPEED_BOUND_C:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->i:D

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->j:I

    .line 97
    return-void
.end method

.method private a(DDDI)V
    .locals 8
    .param p1, "rto"    # D
    .param p3, "speed"    # D
    .param p5, "bandwidth"    # D
    .param p7, "level"    # I

    .line 161
    const-string v0, "AlipayQosService"

    const/4 v1, 0x4

    if-ne p7, v1, :cond_0

    .line 162
    const-string v1, "========here level is D=========="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->j:I

    if-ne v1, p7, :cond_1

    .line 166
    return-void

    .line 169
    :cond_1
    iput p7, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->j:I

    .line 171
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v2, 0x0

    .line 172
    .local v2, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v1

    const-string v3, "NETQOS"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 173
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 174
    const-string v1, "INFO"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 175
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%.4f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "RTO"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "SPEED"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BANDWIDTH"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LEVEL"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetType(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETTYPE"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;DDDI)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a(DDDI)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;)Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;
    .locals 2

    .line 66
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    if-eqz v0, :cond_0

    .line 67
    return-object v0

    .line 69
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    .line 73
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    return-object v0

    .line 73
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public estimate(DB)V
    .locals 3
    .param p1, "rtt"    # D
    .param p3, "from"    # B

    .line 248
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 253
    return-void

    .line 256
    :cond_1
    const-wide v0, 0x40b3880000000000L    # 5000.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    .line 257
    const-wide p1, 0x40b3880000000000L    # 5000.0

    .line 260
    :cond_2
    move-wide v0, p1

    .line 261
    .local v0, "finalRtt":D
    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$2;

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$2;-><init>(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;DB)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v0    # "finalRtt":D
    return-void

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "AlipayQosService"

    const-string v2, "estimate exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public estimateByStartTime(JB)V
    .locals 9
    .param p1, "everyStartTime"    # J
    .param p3, "from"    # B

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 339
    .local v2, "everyEndReadTime":J
    move-wide v2, v0

    cmp-long v4, v0, p1

    if-gtz v4, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    sub-long v0, v2, p1

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 343
    .local v0, "rtt":I
    move v0, v1

    const/16 v4, 0x3c

    if-gt v1, v4, :cond_1

    .line 344
    return-void

    .line 346
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x40b3880000000000L    # 5000.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    int-to-double v6, v0

    :goto_0
    invoke-virtual {v1, v6, v7, p3}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimate(DB)V

    .line 347
    return-void
.end method

.method public getBandwidth()D
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->getBandwidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public getQosLevel()I
    .locals 22

    move-object/from16 v10, p0

    const-string v11, "AlipayQosService"

    .line 107
    const/4 v12, 0x3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v13, v1

    .line 108
    .local v13, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NET_QOS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v0, "qosSwitch is off,always return A level"

    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v14, 0x4

    if-nez v0, :cond_1

    .line 116
    return v14

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getRto()D

    move-result-wide v0

    move-wide v7, v0

    .line 120
    .local v7, "rto":D
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getSpeed()D

    move-result-wide v0

    move-wide v15, v0

    .line 121
    .local v15, "speed":D
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getBandwidth()D

    move-result-wide v0

    move-wide/from16 v17, v0

    .line 123
    .local v17, "bandwidth":D
    cmpl-double v0, v15, v17

    if-lez v0, :cond_2

    move-wide v0, v15

    goto :goto_0

    :cond_2
    move-wide/from16 v0, v17

    :goto_0
    invoke-direct {v10, v7, v8, v0, v1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a(DD)I

    move-result v0

    .line 130
    .local v0, "level":I
    iget v1, v10, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->j:I

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 135
    :cond_3
    move v9, v0

    .line 136
    .local v9, "finalLevel":I
    new-instance v19, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-wide v3, v7

    move-wide v5, v15

    move-wide/from16 v20, v7

    .end local v7    # "rto":D
    .local v20, "rto":D
    move-wide/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;-><init>(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;DDDI)V

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V

    .line 143
    if-ne v0, v14, :cond_4

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 146
    if-ne v1, v14, :cond_4

    .line 147
    const-string v1, "Though result is D,but it\'s 4G now,return C instead"

    invoke-static {v11, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    return v12

    .line 151
    :cond_4
    return v0

    .line 152
    .end local v0    # "level":I
    .end local v9    # "finalLevel":I
    .end local v13    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .end local v15    # "speed":D
    .end local v17    # "bandwidth":D
    .end local v20    # "rto":D
    :catchall_0
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "ex":Ljava/lang/Throwable;
    return v12
.end method

.method public getRto()D
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;->getRto()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRtoLevel(D)I
    .locals 3
    .param p1, "rtt"    # D

    .line 214
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->d:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->e:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_1

    .line 217
    const/4 v0, 0x2

    return v0

    .line 218
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->e:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->f:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_2

    .line 219
    const/4 v0, 0x3

    return v0

    .line 221
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public getSpeed()D
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->getSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public resetRtoWhenNetchange()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->b:Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/QoeManager;->resetRtoWhenNetchange()V

    .line 352
    return-void
.end method

.method public setSpeed(D)V
    .locals 1
    .param p1, "speed"    # D

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->setSpeed(D)V

    .line 301
    return-void
.end method

.method public startTrafficMonitor()Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->startTrafficMonitor()Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public stopTrafficMonitor(Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;)Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;
    .locals 2
    .param p1, "startInfo"    # Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->c:Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/DeviceTrafficManager;->stopTrafficMonitor(Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;)Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "AlipayQosService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
.super Ljava/lang/Object;
.source "ExtTransportTunnelWatchdog.java"


# static fields
.field public static DOWNGRADE_REASON_AMNETPOST:Ljava/lang/String; = null

.field public static DOWNGRADE_REASON_BIND:Ljava/lang/String; = null

.field public static DOWNGRADE_REASON_CRASH:Ljava/lang/String; = null

.field public static DOWNGRADE_REASON_RPC:Ljava/lang/String; = null

.field public static final SP_KEY_PROC_CRASH_TICK:Ljava/lang/String; = "proc_crash_tick"

.field public static final SP_SUB_KEY_MAX_CRASH_TIME_ALLOW:Ljava/lang/String; = "maxCrashTimeAllow"

.field public static final SP_SUB_KEY_PROC_CRASH_COUNT:Ljava/lang/String; = "procCrasheCount"

.field private static a:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:J

.field private volatile f:I

.field private volatile g:J

.field private volatile h:I

.field private volatile i:I

.field private volatile j:J

.field private volatile k:J

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "RPC_FAILURE"

    sput-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_RPC:Ljava/lang/String;

    .line 53
    const-string v0, "BIND_FAILURE"

    sput-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_BIND:Ljava/lang/String;

    .line 54
    const-string v0, "CRASH_FAILURE"

    sput-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_CRASH:Ljava/lang/String;

    .line 55
    const-string v0, "AMNETPOST_FAILURE"

    sput-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_AMNETPOST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->m:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    .line 104
    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    .line 105
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->g:J

    .line 106
    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    .line 107
    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    .line 108
    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    .line 109
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->n:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 115
    .local v0, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DOWNGRADE_RPC_TRIGGER_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b:I

    .line 116
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DOWNGRADE_RPC_TRIGGER_TIME:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    .line 119
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    const-wide/16 v5, 0x61a8

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    .line 120
    iput-wide v5, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    .line 123
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DOWNGRADE_BIND_TRIGGER_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    .line 124
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DOWNGRADE_BIND_TRIGGER_TIME:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v1

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MMTP Triggers: RPCFailures - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RPCFailureTime - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " BindFailure - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BindFailureTime - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXT_Watchdog"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 480
    const-string/jumbo v0, "proc_crash_tick"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 481
    .local v1, "procCrashTickJson":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    return-object v1

    .line 485
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    add-long/2addr v2, v4

    .line 486
    .local v2, "maxProcCrashTimeAllow":J
    const/4 v0, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Landroid/content/Context;JI)Z

    .line 487
    const-string v0, "EXT_Watchdog"

    const-string v4, "SP_KEY_PROC_CRASH_TICK no exist, regenerate the model ! "

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, ""

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 234
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    .line 239
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    .line 240
    const-string v0, "EXT_Watchdog"

    const-string v1, "Bind failure reset to 0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 294
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ALLOW_AMNET_DOWNGRADE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    .local v1, "downgradeSwitch":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    if-eqz v2, :cond_1

    .line 309
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 310
    const-string v2, "EXT_Watchdog"

    const-string v4, "[startTunnelDowngrade] Local amnet is disabled, reset isDowngraded state."

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    if-eqz v2, :cond_2

    .line 314
    const-string v2, "EXT_Watchdog"

    const-string v3, "Tunnel is already downgraded, not need to do it again"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->mrpcFailureRest()V

    .line 316
    monitor-exit v0

    return-void

    .line 319
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c(Landroid/content/Context;)V

    .line 331
    const-string v0, "downgrade"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 332
    const-string v0, "EXT_Watchdog"

    const-string v2, "Tunnel Downgrade Done"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->mrpcFailureRest()V

    .line 336
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a()V

    .line 339
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_CRASH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    const-string/jumbo v0, "proc_crash_tick"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->removeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    :cond_3
    return-void

    .line 321
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 296
    :cond_4
    :goto_0
    const-string v0, "EXT_Watchdog"

    const-string v2, "Config does not allow downgrade"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 16
    .param p1, "Op"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "localAmnetModel"    # Ljava/lang/Boolean;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "downgrade"

    const-string v4, "_"

    const-string v5, "EXT_Watchdog"

    .line 394
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/transport/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v6

    .line 395
    .local v6, "net0":I
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/transport/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v7

    .line 397
    .local v7, "net1":I
    new-instance v8, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v8}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v9, 0x0

    move-object v10, v9

    .line 398
    .local v10, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v10, v8

    const-string v11, "MMTP"

    invoke-virtual {v8, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 399
    const-string v8, "1.0"

    invoke-virtual {v10, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v10, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 402
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcessRuning(Landroid/content/Context;)Z

    move-result v8

    .line 403
    .local v8, "isPushAlive":Z
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "0"

    if-eqz v11, :cond_1

    .line 404
    :try_start_1
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v13, "rpc_fc"

    iget v14, v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string v13, "bind_fc"

    iget v14, v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string v13, "crash_fc"

    iget v14, v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->i:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v13, "reason"

    invoke-interface {v11, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v13, "push_alive"

    if-eqz v8, :cond_0

    const-string v14, "1"

    goto :goto_0

    :cond_0
    move-object v14, v12

    :goto_0
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 410
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v11

    const-string v13, "local_amnet"

    const-string v14, "T"

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_1
    invoke-static {v10}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 415
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Dumping perfLog:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v11

    const-string v13, "BIZ_NETWORK"

    const-string v14, "LINK_DOWNGRADE"

    .line 419
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v11, v13, v14, v12, v15}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v8, :cond_2

    .line 423
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 424
    .local v9, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v9, v0

    const-string v11, "PROCESS"

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 427
    const-string v0, "dead_push_process"

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 429
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v4, v9}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 433
    .end local v9    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    :cond_2
    const/4 v0, 0x0

    .line 434
    .local v0, "isBindFailed":Z
    sget-object v4, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_BIND:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_CRASH:Ljava/lang/String;

    .line 435
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    :cond_3
    const/4 v0, 0x1

    .line 438
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v4

    const-string/jumbo v9, "network"

    invoke-interface {v4, v9, v0, v3}, Lcom/alipay/mobile/monitor/api/MonitorContext;->kickOnNetworkBindService(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    .end local v0    # "isBindFailed":Z
    .end local v6    # "net0":I
    .end local v7    # "net1":I
    .end local v8    # "isPushAlive":Z
    .end local v10    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 439
    :catchall_0
    move-exception v0

    .line 440
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;JI)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxProcCrashTimeAllow"    # J
    .param p3, "procCrashCount"    # I

    .line 458
    const-string v0, "EXT_Watchdog"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 460
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "maxCrashTimeAllow"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v2, "procCrasheCount"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    nop

    .line 467
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "proc_crash_tick"

    invoke-static {p0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 469
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SP_KEY_PROC_CRASH_TICK save finish, result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ".  json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return v3

    .line 462
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "Put json data exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 10

    .line 249
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;-><init>(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)V

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4, v5}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 259
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 262
    .local v3, "ts":J
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    const-string v5, "EXT_Watchdog"

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    iget v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b:I

    if-ge v0, v6, :cond_1

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->g:J

    sub-long v6, v3, v6

    iget-wide v8, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->c:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 264
    :cond_1
    const-string v0, "Will start downgrade due to RPC failure condition"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_RPC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->startTunnelDowngrade(Ljava/lang/String;)V

    .line 266
    return-void

    .line 271
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    iget v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    if-lt v0, v6, :cond_3

    .line 272
    const-string v0, "Will start downgrade due to Bind failure condition"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    sub-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "bc = %d, bmc = %d, ts = %d, tms = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_BIND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->startTunnelDowngrade(Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_3
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    const-string/jumbo v0, "proc_crash_tick"

    .line 492
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->PROC_CRASH_HANDLE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "T"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v1

    .line 493
    const-string v2, "EXT_Watchdog"

    if-nez v1, :cond_0

    .line 494
    const-string/jumbo v0, "pushProcCrashTick switch is off"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 499
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    const-string v0, "AMNET is disabled already, no need to tick"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->isDowngraded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    const-string v0, "Already downgraded, no need to tick"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void

    .line 510
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 511
    .local v4, "procCrashTickJson":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    return-void

    .line 511
    :cond_3
    move-object v1, v3

    .line 517
    .local v1, "procCrashTickJsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 522
    const/4 v3, 0x0

    move v5, v3

    .local v5, "procCrashCount":I
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 527
    .local v8, "maxCrashTimeAllow":J
    :try_start_1
    const-string/jumbo v10, "maxCrashTimeAllow"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move-wide v8, v10

    .line 528
    const-string/jumbo v10, "procCrasheCount"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v5    # "procCrashCount":I
    .local v0, "procCrashCount":I
    nop

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide v5, v6

    .line 536
    .local v5, "curTs":J
    const/4 v7, 0x1

    cmp-long v12, v10, v8

    if-gtz v12, :cond_4

    .line 537
    add-int/2addr v0, v7

    .line 538
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "increasing procCrashCount\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_4
    const/4 v0, 0x0

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    add-long v8, v10, v12

    .line 545
    :goto_0
    invoke-static {p1, v8, v9, v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Landroid/content/Context;JI)Z

    .line 547
    iget v10, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    if-lt v0, v10, :cond_5

    .line 548
    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->i:I

    .line 549
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    iget v11, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v7, "Will start downgrade due to proc crash condition. procCrashCount = %d, maxCrashTimeAllow = %d, mMaxBindTickAllow = %d"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v2, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->DOWNGRADE_REASON_CRASH:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 553
    :cond_5
    iput v3, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->i:I

    .line 554
    return-void

    .line 529
    .end local v0    # "procCrashCount":I
    .local v5, "procCrashCount":I
    :catchall_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get data from json obj exception, procCrashTickJson: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->removeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    return-void

    .line 518
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "procCrashCount":I
    .end local v8    # "maxCrashTimeAllow":J
    :catch_0
    move-exception v3

    .line 519
    .local v3, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New JSONObject exception, procCrashTickJson: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->removeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 561
    const-string v0, "EXT_Watchdog"

    const-string v1, "Starting tunnel switch to downgrade to SPDY"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 566
    .local v1, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->n:Ljava/lang/String;

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Original AMNET_SWTICH:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "0,0,0"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLatestVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 574
    .local v0, "oldversion":I
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 577
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 578
    .local v4, "config":Ljava/util/Map;
    move-object v4, v3

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "android_network_core"

    invoke-virtual {v1, p1, v4, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Z

    .line 583
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->notifySwitchUpdate()V

    .line 584
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
    .locals 2

    .line 91
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    if-eqz v0, :cond_0

    .line 92
    return-object v0

    .line 94
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    if-eqz v1, :cond_1

    .line 96
    monitor-exit v0

    return-object v1

    .line 98
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    .line 99
    monitor-exit v0

    .line 100
    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized bindFailureTick()V
    .locals 10

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "EXT_Watchdog"

    const-string v1, "AMNET is disabled already, no need to tick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 193
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->isDowngraded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledTransportByLocalAmnet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->isDowngraded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "EXT_Watchdog"

    const-string v1, "Already downgraded, no need to tick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 204
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "ts":J
    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    if-nez v2, :cond_3

    .line 206
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    .line 208
    :cond_3
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    .line 209
    .local v4, "timeDiff":J
    move-wide v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v8, v2, v6

    if-lez v8, :cond_5

    .line 211
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    sub-long v2, v0, v2

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->e:J

    const/4 v8, 0x1

    cmp-long v9, v2, v6

    if-lez v9, :cond_4

    .line 212
    iput v8, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    .line 213
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    .line 214
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    .line 215
    const-string v2, "EXT_Watchdog"

    const-string v3, "Bind failure does not exceed configure data, Reseting counters for bind..."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 219
    :cond_4
    :try_start_3
    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    .line 220
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    .line 228
    const-string v2, "EXT_Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "IPC Bind failure ticked, current failures:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->h:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failure duration:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->j:J

    sub-long v6, v0, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms\uff0c mLastBindFailureTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 224
    :cond_5
    :try_start_4
    const-string v2, "EXT_Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Ignore - Bind failure happened too frequent. current ts = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mLastBindFailureTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->k:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", timeDiff = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 187
    .end local v0    # "ts":J
    .end local v4    # "timeDiff":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDowngradeInLocalAmnetMode()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    return v0
.end method

.method public isDowngraded()Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    monitor-exit v0

    return v1

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized mrpcFailureRest()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 159
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->g:J

    .line 165
    const-string v0, "EXT_Watchdog"

    const-string v1, "MMTP failure reset to 0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mrpcFailureTick()V
    .locals 6

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->isDowngraded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledTransportByLocalAmnet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 140
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->isDowngraded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, "ts":J
    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    if-nez v2, :cond_2

    .line 146
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->g:J

    .line 148
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    .line 149
    const-string v2, "EXT_Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MMTP failure ticked, current failures:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failure duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->g:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "ts":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushProcCrashTick(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXT_Watchdog"

    const-string/jumbo v2, "pushProcCrashTick exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const-string/jumbo v1, "proc_crash_tick"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->removeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    return v1
.end method

.method public resetDowngradeFlag()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    const-string v1, "EXT_Watchdog"

    const-string/jumbo v2, "resetting isDowngraded..."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->l:Z

    .line 451
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->p:Z

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const-string/jumbo v0, "upgrade"

    const-string/jumbo v1, "swtich_update"

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized startTunnelDowngrade(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 285
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    .local v0, "ctx":Landroid/content/Context;
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 284
    .end local v0    # "ctx":Landroid/content/Context;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;
    .end local p1    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

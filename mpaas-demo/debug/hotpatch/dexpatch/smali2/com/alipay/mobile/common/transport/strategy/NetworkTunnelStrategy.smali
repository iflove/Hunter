.class public Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
.super Ljava/lang/Object;
.source "NetworkTunnelStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;,
        Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;
    }
.end annotation


# static fields
.field public static final TUNNEL_TYPE_AMNET:I = 0x3

.field public static final TUNNEL_TYPE_ORIGINAL:I = 0x1

.field public static final TUNNEL_TYPE_SPDY:I = 0x2

.field public static final TUNNEL_TYPE_UNINIT:I = -0x1

.field private static a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

.field private c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    .line 51
    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Z

    .line 55
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->g:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h:Z

    .line 63
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->k:Z

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->n()V

    .line 80
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 9
    .param p0, "tunnelChangeEventModel"    # Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    const-string v0, ""

    const-string v1, "NetworkTunnelStrategy"

    .line 570
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v3, 0x0

    .line 571
    .local v3, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v3, v2

    const-string v4, "TunnelChange"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 575
    move-object v2, v0

    .line 576
    .local v2, "oldTun":Ljava/lang/String;
    nop

    .line 577
    .local v0, "newTun":Ljava/lang/String;
    iget v4, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "SPDY"

    const/4 v6, 0x2

    const-string v7, "AMNET"

    const/4 v8, 0x3

    if-ne v4, v8, :cond_0

    .line 578
    move-object v2, v7

    goto :goto_0

    .line 579
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    if-ne v4, v6, :cond_1

    .line 580
    move-object v2, v5

    .line 582
    :cond_1
    :goto_0
    iget v4, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    if-ne v4, v8, :cond_2

    .line 583
    move-object v0, v7

    goto :goto_1

    .line 584
    :cond_2
    iget v4, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    if-ne v4, v6, :cond_3

    .line 585
    move-object v0, v5

    .line 587
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "oldTun"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "newTun"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "networkTunnel switch perflog:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v0    # "newTun":Ljava/lang/String;
    .end local v2    # "oldTun":Ljava/lang/String;
    .end local v3    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    return-void

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "perfLog exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private final a()Z
    .locals 4

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "grayscaleValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NetworkTunnelStrategy"

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isEnabledAmnet is true, utdid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x1

    return v1

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isEnabledAmnet is false, utdid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    return v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operationType"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->OPERATION_TYPE_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 150
    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-static {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4OperationType(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "brandBlackList"    # Ljava/lang/String;
    .param p1, "modelBlackList"    # Ljava/lang/String;
    .param p2, "cpuModelBackList"    # Ljava/lang/String;

    .line 321
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Brand(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "] "

    const-string v3, "NetworkTunnelStrategy"

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Brand is false. brandBlackList=["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v1

    .line 327
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Model(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Brand is false. isUse4Model=["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v1

    .line 333
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Hardware(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isUse4Hardware is false. cpuModelBackList=["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return v1

    .line 338
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 26
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 26
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    return p1
.end method

.method private b()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c()V

    .line 156
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    .line 157
    return-void
.end method

.method private c()V
    .locals 6

    .line 161
    const-string v0, "NetworkTunnelStrategy"

    const-string/jumbo v1, "updateTunnlType"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 167
    .local v0, "transportConfigureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 170
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->g:Z

    .line 171
    const/4 v2, 0x2

    iput v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    .line 172
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->H5_SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v5, "T"

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h:Z

    goto :goto_0

    .line 175
    :cond_0
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h:Z

    goto :goto_0

    .line 178
    :cond_1
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->g:Z

    .line 179
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h:Z

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const/4 v2, 0x3

    iput v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    .line 184
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Z

    goto :goto_1

    .line 187
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Z

    .line 195
    :goto_1
    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    if-ne v2, v1, :cond_3

    .line 196
    iput v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I

    .line 198
    :cond_3
    return-void
.end method

.method private final d()Z
    .locals 2

    .line 201
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 243
    return v1

    .line 246
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "NetworkTunnelStrategy"

    const-string v2, "isUseSpdy4Devices == false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return v1

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    return v1

    .line 255
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    return v1

    .line 259
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private f()Z
    .locals 2

    .line 282
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    return v1

    .line 286
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    return v1

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    return v1

    .line 294
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    return v1

    .line 298
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static g()Z
    .locals 5

    .line 302
    const/4 v0, 0x0

    .local v0, "configMng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 303
    move-object v0, v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "brandBlackList":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "modelBlackList":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "cpuModelBackList":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
    .locals 2

    .line 66
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    if-eqz v0, :cond_0

    .line 67
    return-object v0

    .line 69
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    if-eqz v1, :cond_1

    .line 71
    monitor-exit v0

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 74
    monitor-exit v0

    .line 75
    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static h()Z
    .locals 5

    .line 311
    const/4 v0, 0x0

    .local v0, "configMng":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 312
    move-object v0, v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "brandBlackList":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "modelBlackList":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "cpuModelBackList":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method private i()Z
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 357
    return v1

    .line 361
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 364
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "disabledNetKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Net(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    return v1

    .line 369
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private j()Z
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    const-string v0, "NetworkTunnelStrategy"

    const-string v2, "mContext is null. so return false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return v1

    .line 381
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 384
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "disabledNetKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Net(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    return v1

    .line 389
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static k()Z
    .locals 2

    .line 394
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 395
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4SdkVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static l()Z
    .locals 2

    .line 404
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4SdkVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 419
    .local v1, "openSwitch":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 420
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private n()V
    .locals 2

    .line 485
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getConfigureChangedListener()Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    .line 486
    return-void
.end method

.method private o()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;-><init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    return-object v0
.end method


# virtual methods
.method public addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V
    .locals 2
    .param p1, "networkTunnelChangedListener"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addNetworkTunnelChangedListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTunnelStrategy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->o()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->addObserver(Ljava/util/Observer;)V

    .line 446
    return-void
.end method

.method public getConfigureChangedListener()Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;-><init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    return-object v0
.end method

.method public final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public getConnFailMaxTime()I
    .locals 2

    .line 434
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 435
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_FAIL_MAX_TIMES:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public getCurrentDataTunnlType()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "utdid"    # Ljava/lang/String;

    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->k:Z

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->k:Z

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->j:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b()V

    .line 92
    return-void
.end method

.method public isCanUseAmnet()Z
    .locals 2

    .line 263
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCanUseAmnetOnOnlyPush()Z
    .locals 1

    .line 274
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledOnlyPush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    return v0
.end method

.method public isCanUseSpdy()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->g:Z

    return v0
.end method

.method public isCanUseSpdyDataTunel()Z
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    return v1

    .line 230
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 231
    return v1

    .line 233
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseSpdyForH5()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->h:Z

    return v0
.end method

.method public isCanUseSpdyLongLink()Z
    .locals 3

    .line 564
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_LONGLINK_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUse4Utdid(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "utdid"    # Ljava/lang/String;
    .param p2, "grayValue1"    # I
    .param p3, "grayValue2"    # I

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 105
    .local v0, "grayValues":[I
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->grayscaleUtdid(Ljava/lang/String;[I)Z

    move-result v1

    return v1
.end method

.method public isUseExtTransport(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z
    .locals 1
    .param p1, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 133
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUseExtTransportForRealtime()Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "NetworkTunnelStrategy"

    const-string v2, "===> Rpc push process does not use spdy <==="

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    return v1

    .line 223
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public notifyFirstTunnelChanged()V
    .locals 3

    .line 556
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;-><init>()V

    const/4 v1, 0x0

    .line 557
    .local v1, "tunnelChangeEventModel":Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    .line 558
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    iput v0, v1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    .line 559
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->notifyTunnelChanged(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyFirstTunnelChanged finish.  newTunnelType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkTunnelStrategy"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public notifyNetworkTunnelChangedEvent(I)V
    .locals 2
    .param p1, "tunnelType"    # I

    .line 460
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->o()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->notifyObservers(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public notifyTunnelChanged(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 3
    .param p1, "tunnelChangeEventModel"    # Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->o()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->notifyObservers(Ljava/lang/Object;)V

    .line 549
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    return-void

    .line 550
    :catchall_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "NetworkTunnelStrategy"

    const-string v2, " notifyTunnelChanged exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public removeNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V
    .locals 1
    .param p1, "networkTunnelChangedListener"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;

    .line 453
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->o()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->deleteObserver(Ljava/util/Observer;)V

    .line 454
    return-void
.end method

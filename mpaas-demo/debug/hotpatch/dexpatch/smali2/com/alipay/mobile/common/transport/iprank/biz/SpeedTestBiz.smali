.class public Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;
.super Ljava/lang/Object;
.source "SpeedTestBiz.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_SpeedTestBiz"

.field private static a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

.field private c:Z

.field private d:Z

.field public mContext:Landroid/content/Context;

.field public scoreManager:Lcom/alipay/mobile/common/transport/iprank/mng/score/IScore;

.field public speedTestManager:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

.field public storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->speedTestManager:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->scoreManager:Lcom/alipay/mobile/common/transport/iprank/mng/score/IScore;

    .line 77
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    .line 78
    return-void
.end method

.method private a(J)V
    .locals 8
    .param p1, "stalledTime"    # J

    const-string v0, "IPR_SpeedTestBiz"

    .line 201
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const/4 v2, 0x0

    .line 202
    .local v2, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v1

    const-string v3, "IpRank"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "speedTest"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpNum()I

    move-result v1

    .line 206
    .local v1, "ipNum":I
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getTableSize()I

    move-result v3

    .line 207
    .local v3, "tableSize":I
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string v5, "ipNum"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string v5, "iprankSize"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string v5, "complete"

    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    if-eqz v6, :cond_0

    const-string v6, "T"

    goto :goto_0

    :cond_0
    const-string v6, "F"

    :goto_0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string v5, "lbs"

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getLatLng(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string v5, "lbsSize"

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->b:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->getTableSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "stalled"

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "speedTest perf:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v1    # "ipNum":I
    .end local v2    # "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .end local v3    # "tableSize":I
    return-void

    .line 215
    :catchall_0
    move-exception v1

    .line 216
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_SPEEDTEST_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 165
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "IPR_SpeedTestBiz"

    const-string/jumbo v1, "speedTest switch is not on..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "IPR_SpeedTestBiz"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "wallet is at front desk,ignore speedtest task"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v2

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "push process don\'t do speedtest"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v2

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    const-string/jumbo v0, "speedtest Task,network is not available..."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v2

    .line 193
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    return v2

    .line 196
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    if-eqz v0, :cond_0

    .line 59
    return-object v0

    .line 61
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    .line 65
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    return-object v0

    .line 65
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public isShouldStop()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    return v0
.end method

.method public setShouldStop(Z)V
    .locals 0
    .param p1, "shouldStop"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    .line 86
    return-void
.end method

.method public speedTest()V
    .locals 12

    .line 94
    const-string v0, "IPR_SpeedTestBiz"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->deleteFromTable()V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->b()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 156
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    .line 157
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    .line 101
    return-void

    .line 104
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getHostAndIpRankModels()Ljava/util/HashMap;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    const-string/jumbo v5, "network unavailable,break"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    .line 111
    goto :goto_5

    .line 113
    :cond_1
    iget-boolean v7, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    if-eqz v7, :cond_2

    .line 114
    const-string/jumbo v5, "shouldStop is true,will break"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    .line 116
    goto :goto_5

    .line 118
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 120
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 121
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 122
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->speedTestManager:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    iget-object v10, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->speedTest(Ljava/lang/String;I)I

    move-result v9

    .line 123
    if-ltz v9, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 124
    :goto_2
    if-eqz v10, :cond_4

    .line 125
    iput v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 126
    iget v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    goto :goto_3

    .line 131
    :cond_4
    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_5

    .line 135
    const/16 v9, 0x270f

    iput v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 136
    iget v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 120
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 144
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->updateIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 146
    :cond_6
    goto/16 :goto_0

    .line 149
    :cond_7
    :goto_5
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->clearCache()V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 152
    sub-long/2addr v5, v3

    invoke-direct {p0, v5, v6}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_6
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    .line 157
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    .line 158
    return-void

    .line 153
    :catchall_0
    move-exception v3

    .line 154
    :try_start_2
    const-string/jumbo v3, "speedTest exception"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 156
    :catchall_1
    move-exception v0

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->c:Z

    .line 157
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->d:Z

    throw v0
.end method

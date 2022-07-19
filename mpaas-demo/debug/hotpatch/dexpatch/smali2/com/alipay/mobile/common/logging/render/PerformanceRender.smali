.class public Lcom/alipay/mobile/common/logging/render/PerformanceRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "PerformanceRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 0
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 27
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;
    .locals 11
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "pageId"    # Ljava/lang/String;
    .param p7, "extParam"    # Ljava/util/Map;
    .param p8, "customerParams"    # Ljava/util/Map;
    .param p9, "loggerLevel"    # I
    .param p10, "pendingRender"    # Lcom/alipay/mobile/common/logging/render/PendingRender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/alipay/mobile/common/logging/render/PendingRender;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;
    .locals 5
    .param p1, "performanceID"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "pageId"    # Ljava/lang/String;
    .param p7, "extParam"    # Ljava/util/Map;
    .param p8, "customerParams"    # Ljava/util/Map;
    .param p9, "loggerLevel"    # I
    .param p10, "pendingRender"    # Lcom/alipay/mobile/common/logging/render/PendingRender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/alipay/mobile/common/logging/render/PendingRender;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 69
    .local v1, "header":Ljava/lang/String;
    if-eqz p8, :cond_0

    .line 70
    const-string v2, "header"

    invoke-interface {p8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 74
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "D-MM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    if-eqz p10, :cond_2

    iget-object v2, p10, Lcom/alipay/mobile/common/logging/render/PendingRender;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p10, Lcom/alipay/mobile/common/logging/render/PendingRender;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "2"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    if-eqz p10, :cond_3

    .line 107
    iget-object v2, p10, Lcom/alipay/mobile/common/logging/render/PendingRender;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v3, "actionID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_2
    if-eqz p10, :cond_4

    .line 114
    iget-object v2, p10, Lcom/alipay/mobile/common/logging/render/PendingRender;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v3, "actionToken"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p9}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getHitTestRate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v0, p4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {v0, p5}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0, p7}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendExtParam(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "android"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/NetUtil;->getNetworkTypeOptimizedAfterStartup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getNumCoresOfCPUAfterStartup()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getCPUMaxFreqMHzAfterStartup()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getTotalMemAfterStartup(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApkUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBizExternParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendExtParam(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "spmPageId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->isMainProcStartupFinishOrTimeout()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v3

    const/4 v4, 0x0

    .line 186
    .local v4, "spmMonitor":Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;
    move-object v4, v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getTopPage()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 187
    invoke-interface {v4}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getTopPage()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .end local v4    # "spmMonitor":Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 191
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->setCurrentPageId(Ljava/lang/String;)V

    .line 195
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 196
    invoke-static {v0, p6}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 198
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getCurrentPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_4
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->getResolutionAfterStartup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    if-eqz p10, :cond_8

    .line 206
    iget-object v3, p10, Lcom/alipay/mobile/common/logging/render/PendingRender;->g:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 208
    :cond_8
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v4, "appID"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "$$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;
    .locals 11
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p3, "customerParams"    # Ljava/util/Map;
    .param p4, "pendingRender"    # Lcom/alipay/mobile/common/logging/render/PendingRender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/render/PendingRender;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam2()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v7

    .line 38
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v9

    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "extParam"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;
    .locals 11
    .param p1, "performanceID"    # Ljava/lang/String;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p3, "customerParams"    # Ljava/util/Map;
    .param p4, "pendingRender"    # Lcom/alipay/mobile/common/logging/render/PendingRender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/render/PendingRender;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam2()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v7

    .line 47
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v9

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;
.super Ljava/lang/Object;
.source "H5LogProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LogProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$H5AutoClick;
    }
.end annotation


# static fields
.field public static final H5_SHOW_LOG_UPLOAD_CONFIG:Ljava/lang/String; = "h5_show_log_upload"

.field private static a:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 62
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "H5_PAGE_PERFORMANCE|H5_AL_SESSION_FROM_NATIVE|H5_AL_SESSION_MAP_SUCCESS|H5_AL_SESSION_FALLBACK|H5_GETLOCATION_RESULT"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .locals 12
    .param p0, "p"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "paramStr"    # Ljava/lang/String;

    const-string v0, "="

    .line 544
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    return-object p0

    .line 548
    :cond_0
    const-string v2, "^"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 549
    const-string v0, "param4"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-object p0

    .line 553
    :cond_1
    const-string v2, "\\^"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "params":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 555
    .local v3, "extIndex":I
    array-length v4, v2

    const/4 v5, 0x0

    move-object v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v8, v2, v6

    .line 556
    .local v7, "param":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 559
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ext"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    add-int/lit8 v3, v3, 0x1

    .line 562
    goto :goto_1

    .line 564
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 565
    .local v8, "index":I
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, "key":Ljava/lang/String;
    const-string v10, ""

    .line 567
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_3

    .line 568
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 570
    :cond_3
    invoke-virtual {p0, v9, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 573
    :cond_5
    return-object p0

    .line 574
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "extIndex":I
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5WalletLogProvider"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .line 51
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p1, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .line 51
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p0, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/lang/String;
    .param p7, "headerMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v7

    if-nez v7, :cond_0

    .line 623
    return-void

    .line 626
    :cond_0
    const-string v7, "h5_logNebulaTechEnable"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, "logNebulaTechEnable":Ljava/lang/String;
    const/4 v8, 0x0

    .line 630
    .local v8, "needWebAppLog":Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "H5WalletLogProvider"

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    .line 631
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 632
    :cond_1
    const-string v9, "yes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 633
    nop

    .line 634
    const-string v9, "h5_logWebAppWhitelist"

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    move-object v13, v12

    .line 635
    .local v13, "h5LogWebAppWhiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v13, v9

    if-eqz v9, :cond_2

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 636
    :cond_2
    sget-object v13, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a:Lcom/alibaba/fastjson/JSONArray;

    .line 639
    :cond_3
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 640
    const/4 v9, 0x0

    .line 641
    .local v9, "i":I
    :goto_0
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_5

    .line 642
    invoke-virtual {v13, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 643
    .local v12, "whiteItem":Ljava/lang/String;
    move-object v12, v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 644
    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 645
    const/4 v8, 0x1

    .line 646
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "seedID match : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object v12, v13

    goto :goto_1

    .line 641
    .end local v12    # "whiteItem":Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move-object v12, v13

    goto :goto_1

    .line 639
    .end local v9    # "i":I
    :cond_6
    move-object v12, v13

    const/4 v9, 0x0

    goto :goto_1

    .line 632
    .end local v13    # "h5LogWebAppWhiteList":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    const/4 v9, 0x0

    .line 654
    :goto_1
    if-nez v8, :cond_a

    .line 655
    new-instance v10, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 656
    .local v12, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v12, v10

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 658
    nop

    .line 659
    const-string v10, "h5_show_log_upload"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v10

    .line 660
    .local v9, "showLogUpload":Z
    if-eqz v10, :cond_8

    .line 661
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "a."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .end local p1    # "seedID":Ljava/lang/String;
    .local v1, "seedID":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 665
    const-string v10, "NebulaTech"

    invoke-virtual {v12, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 666
    move-object/from16 v11, p2

    invoke-virtual {v12, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 667
    const-string v10, "header"

    const-string v13, "H5-VM"

    invoke-virtual {v12, v10, v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v12, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v12, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v12, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 671
    invoke-static {v12, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V

    .line 672
    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 673
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v10

    invoke-interface {v10, v12}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 675
    .end local v9    # "showLogUpload":Z
    .end local v12    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_9
    return-void

    .line 676
    .end local v1    # "seedID":Ljava/lang/String;
    .restart local p1    # "seedID":Ljava/lang/String;
    :cond_a
    move-object/from16 v11, p2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "seedId:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ### param1:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", ### param2:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", ###param3:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",  ###param4:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    if-nez v6, :cond_b

    .line 680
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v9, v10, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    return-void

    .line 683
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v9, v10, v0, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V

    .line 687
    return-void
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p0, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 254
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "paramBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 259
    .local v1, "isFirst":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 260
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 261
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    .local v5, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 266
    if-eqz v1, :cond_2

    .line 267
    const/4 v1, 0x0

    goto :goto_1

    .line 269
    :cond_2
    const/16 v6, 0x5e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 273
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 278
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    .end local v0    # "paramBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "isFirst":Z
    :cond_5
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p0, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 527
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 530
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5WalletLogProvider"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 540
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V
    .locals 11
    .param p0, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p1, "paramStr"    # Ljava/lang/String;

    .line 582
    if-eqz p0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 586
    :cond_0
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    const-string v0, "param4"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 591
    :cond_1
    const-string v0, "\\^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "params":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 593
    .local v1, "extIndex":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    aget-object v6, v0, v5

    .line 594
    .local v4, "param":Ljava/lang/String;
    move-object v4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 597
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ext"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 600
    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 603
    .local v6, "index":I
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "key":Ljava/lang/String;
    const-string v8, ""

    .line 605
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_3

    .line 606
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 609
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 610
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "key "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " alerday exist not add"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "H5WalletLogProvider"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v4    # "param":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 616
    :cond_6
    return-void

    .line 583
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "extIndex":I
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public autoClick(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 452
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$H5AutoClick;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$H5AutoClick;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method public behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
    .locals 2
    .param p1, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p2, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    .line 166
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "params4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;
    .param p8, "remoteLogType"    # Ljava/lang/String;
    .param p9, "bizScenario"    # Ljava/lang/String;

    .line 283
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v0, p6

    .line 284
    .local v0, "param4":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 285
    .local v3, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v3, v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 289
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ucId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    move-object/from16 v12, p2

    .line 295
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^bizScenario="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p9

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 296
    .end local v0    # "param4":Ljava/lang/String;
    .local v14, "param4":Ljava/lang/String;
    invoke-static {v3, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object v15

    .line 297
    .end local v3    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .local v15, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 299
    .local v1, "headerMap":Ljava/util/Map;
    move-object v7, v0

    .end local v1    # "headerMap":Ljava/util/Map;
    .local v7, "headerMap":Ljava/util/Map;
    const-string v1, "header"

    move-object/from16 v6, p7

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "H5_PAGE_ABNORMAL"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 302
    const-string v0, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 303
    const-string v0, "error"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    const-string v0, "H5_AL_PAGE_JSERROR"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v16, v7

    goto :goto_1

    .line 311
    :cond_2
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v14

    move-object/from16 v16, v7

    .end local v7    # "headerMap":Ljava/util/Map;
    .local v16, "headerMap":Ljava/util/Map;
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, v16

    goto :goto_2

    .line 303
    .end local v16    # "headerMap":Ljava/util/Map;
    .restart local v7    # "headerMap":Ljava/util/Map;
    :cond_3
    move-object/from16 v16, v7

    .end local v7    # "headerMap":Ljava/util/Map;
    .restart local v16    # "headerMap":Ljava/util/Map;
    goto :goto_1

    .line 302
    .end local v16    # "headerMap":Ljava/util/Map;
    .restart local v7    # "headerMap":Ljava/util/Map;
    :cond_4
    move-object/from16 v16, v7

    .end local v7    # "headerMap":Ljava/util/Map;
    .restart local v16    # "headerMap":Ljava/util/Map;
    goto :goto_1

    .line 301
    .end local v16    # "headerMap":Ljava/util/Map;
    .restart local v7    # "headerMap":Ljava/util/Map;
    :cond_5
    move-object/from16 v16, v7

    .line 306
    .end local v7    # "headerMap":Ljava/util/Map;
    .restart local v16    # "headerMap":Ljava/util/Map;
    :goto_1
    invoke-static {v8, v9, v10, v11, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    move-object/from16 v2, v16

    .end local v16    # "headerMap":Ljava/util/Map;
    .local v2, "headerMap":Ljava/util/Map;
    invoke-interface {v0, v1, v15, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V

    return-void

    .line 306
    .end local v2    # "headerMap":Ljava/util/Map;
    .restart local v16    # "headerMap":Ljava/util/Map;
    :cond_6
    move-object/from16 v2, v16

    .line 314
    .end local v16    # "headerMap":Ljava/util/Map;
    .restart local v2    # "headerMap":Ljava/util/Map;
    :goto_2
    return-void
.end method

.method public h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seedID"    # Ljava/lang/String;
    .param p3, "abTestInfo"    # Ljava/lang/String;
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "pageId"    # Ljava/lang/String;
    .param p6, "ucId"    # Ljava/lang/String;
    .param p7, "param1"    # Ljava/lang/String;
    .param p8, "param2"    # Ljava/lang/String;
    .param p9, "param3"    # Ljava/lang/String;
    .param p10, "params4"    # Ljava/lang/String;
    .param p11, "uniteParam4"    # Ljava/lang/String;
    .param p12, "logLevel"    # I
    .param p13, "actionId"    # Ljava/lang/String;
    .param p14, "bizScenario"    # Ljava/lang/String;

    .line 338
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p12

    move-object/from16 v7, p13

    const-string v8, "H5WalletLogProvider"

    move-object/from16 v9, p10

    .line 340
    .local v9, "param4":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 341
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    if-eqz v6, :cond_2

    .line 342
    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    .line 343
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 344
    :cond_0
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 345
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 346
    :cond_1
    const/4 v10, 0x3

    if-ne v6, v10, :cond_2

    .line 347
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 350
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 351
    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 353
    const-string v11, "h5_show_log_upload"

    const/4 v12, 0x0

    .line 354
    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v11

    .line 355
    if-eqz v11, :cond_3

    .line 356
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "a."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 361
    :goto_1
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 362
    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 363
    move-object/from16 v12, p4

    :try_start_1
    invoke-virtual {v0, v12}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setEntityContentId(Ljava/lang/String;)V

    .line 364
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v13, :cond_4

    .line 365
    move-object/from16 v13, p5

    :try_start_2
    invoke-virtual {v0, v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageId(Ljava/lang/String;)V

    goto :goto_2

    .line 364
    :cond_4
    move-object/from16 v13, p5

    .line 367
    :goto_2
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 370
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "^bizScenario="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v15, p14

    :try_start_3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v14

    .line 371
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v9

    .end local v9    # "param4":Ljava/lang/String;
    .local v16, "param4":Ljava/lang/String;
    :try_start_5
    const-string v9, "^"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p11

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 372
    .end local v16    # "param4":Ljava/lang/String;
    .local v14, "param4":Ljava/lang/String;
    :try_start_6
    invoke-static {v0, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V

    .line 373
    const-string v9, "header"

    const-string v10, "H5-VM"

    invoke-virtual {v0, v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_3

    .line 378
    :cond_5
    const-string v9, "TAC"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "app.launch"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 379
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/api/BizType;->TINY_APP:Lcom/alipay/mobile/common/logging/api/BizType;

    const/4 v11, 0x0

    invoke-interface {v9, v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V

    goto :goto_3

    .line 381
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v9

    invoke-interface {v9, v7, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 384
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h5BehavorLogger!!! seedId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " param1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", ### param2:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", ###param3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",  ###param4:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " logLevel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " actionId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " behaviourPro:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 384
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 392
    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    return-void

    .line 390
    :catchall_0
    move-exception v0

    move-object v9, v14

    goto :goto_6

    .end local v14    # "param4":Ljava/lang/String;
    .restart local v16    # "param4":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_6

    .end local v16    # "param4":Ljava/lang/String;
    .restart local v9    # "param4":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "param4":Ljava/lang/String;
    .restart local v16    # "param4":Ljava/lang/String;
    goto :goto_6

    .end local v16    # "param4":Ljava/lang/String;
    .restart local v9    # "param4":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v12, p4

    :goto_4
    move-object/from16 v13, p5

    :goto_5
    move-object/from16 v15, p14

    .line 391
    .local v0, "e":Ljava/lang/Throwable;
    :goto_6
    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "abTestInfo"    # Ljava/lang/String;
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/String;
    .param p7, "param2"    # Ljava/lang/String;
    .param p8, "param3"    # Ljava/lang/String;
    .param p9, "params4"    # Ljava/lang/String;
    .param p10, "uniteParam4"    # Ljava/lang/String;
    .param p11, "logLevel"    # I
    .param p12, "actionId"    # Ljava/lang/String;
    .param p13, "bizScenario"    # Ljava/lang/String;

    .line 399
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p11

    const-string v8, "H5WalletLogProvider"

    move-object/from16 v0, p9

    .line 400
    .local v0, "param4":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 402
    .local v9, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    if-eqz v7, :cond_2

    .line 403
    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 404
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 405
    :cond_0
    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    .line 406
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 407
    :cond_1
    const/4 v10, 0x3

    if-ne v7, v10, :cond_2

    .line 408
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 412
    :cond_2
    :goto_0
    const-string v10, "UC-KB"

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v9, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setEntityContentId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 416
    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 417
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v11, :cond_3

    .line 418
    move-object/from16 v11, p1

    :try_start_2
    invoke-virtual {v9, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageId(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_3
    move-object/from16 v11, p1

    .line 420
    :goto_1
    invoke-virtual {v9, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v9, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 423
    const-string v12, "header"

    const-string v13, "H5-VM"

    invoke-virtual {v9, v12, v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "^bizScenario="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v13, p13

    :try_start_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 425
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "^"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v14, p10

    :try_start_4
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 426
    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->b(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Ljava/lang/String;)V

    .line 428
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 429
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v12

    invoke-interface {v12, v9}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    move-object/from16 v15, p12

    goto :goto_2

    .line 431
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v15, p12

    :try_start_5
    invoke-interface {v12, v15, v9}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 434
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .end local v0    # "param4":Ljava/lang/String;
    .local v16, "param4":Ljava/lang/String;
    const-string v0, "h5RemoteLogClickLogger!!! seedId:"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " abTestInfo:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entityId:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " param1:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ### param2:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ###param3:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  ###param4:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 441
    .end local v9    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v16    # "param4":Ljava/lang/String;
    return-void

    .line 439
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v14, p10

    :goto_3
    move-object/from16 v15, p12

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    :goto_4
    move-object/from16 v14, p10

    move-object/from16 v15, p12

    move-object/from16 v13, p13

    .line 440
    .local v0, "t":Ljava/lang/Throwable;
    :goto_5
    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public isPageStarted(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .line 763
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->isPageStarted(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 764
    :catchall_0
    move-exception v0

    .line 765
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5WalletLogProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "unitParam4"    # Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "abTestInfo"    # Ljava/lang/String;
    .param p3, "view"    # Ljava/lang/Object;
    .param p4, "bizCode"    # Ljava/lang/String;
    .param p5, "map"    # Ljava/util/Map;
    .param p6, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "chInfo"

    const-string v1, "header"

    .line 713
    if-nez p5, :cond_0

    .line 714
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v2

    .end local p5    # "map":Ljava/util/Map;
    .local v2, "map":Ljava/util/Map;
    goto :goto_0

    .line 754
    .end local v2    # "map":Ljava/util/Map;
    .restart local p5    # "map":Ljava/util/Map;
    :catch_0
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p5

    move-object/from16 v13, p6

    goto/16 :goto_5

    .line 713
    :cond_0
    move-object/from16 v10, p5

    .line 717
    .end local p5    # "map":Ljava/util/Map;
    .local v10, "map":Ljava/util/Map;
    :goto_0
    :try_start_1
    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    invoke-interface {v10, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_1
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 722
    .local v4, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v11, v2

    .end local v4    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v11, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 723
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v11, v12}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V

    .line 724
    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->AUTO_TRACK_TYPE:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 727
    :try_start_3
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 729
    .local v3, "trackerMap":Ljava/util/Map;
    move-object v3, v2

    invoke-interface {v2, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 730
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    .local v0, "chInfo":Ljava/lang/String;
    invoke-static {v8, p1, v9, v3, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->onPagePause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 732
    .end local v0    # "chInfo":Ljava/lang/String;
    .end local v3    # "trackerMap":Ljava/util/Map;
    goto :goto_1

    .line 733
    :cond_2
    invoke-static {v8, p1, v9, v10}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->onPagePause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 736
    :goto_1
    const-string v0, "h5PageBack"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p6

    :try_start_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "no"

    const-string v2, "h5_enablePageDestroyAtLogSdk"

    .line 737
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 738
    invoke-static/range {p3 .. p3}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->onPageDestroy(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 742
    :cond_3
    goto :goto_3

    .line 740
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v13, p6

    .line 741
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    const-string v2, "H5WalletLogProvider"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 745
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    const-string v0, "H5-AM"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v0, "hashMap":Ljava/util/HashMap;
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 750
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    nop

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_4

    .line 753
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 756
    .end local v0    # "hashMap":Ljava/util/HashMap;
    .end local v11    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    return-void

    .line 754
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v13, p6

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;

    .line 693
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    :try_start_0
    invoke-static {p2, p1}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->onPageResume(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    return-void

    .line 697
    :catchall_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5WalletLogProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "rpc"    # Z

    .line 704
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 705
    return-void
.end method

.method public logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "logHeader"    # Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "unitParam4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;

    .line 75
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    .locals 2
    .param p1, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p2, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    return-void
.end method

.method public performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "params4"    # Ljava/lang/String;
    .param p7, "bizScenario"    # Ljava/lang/String;

    .line 319
    move-object/from16 v0, p6

    .line 320
    .local v0, "param4":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const/4 v2, 0x0

    .line 321
    .local v2, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v2, v1

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 322
    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 323
    move-object/from16 v12, p4

    invoke-virtual {v2, v12}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 324
    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 325
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ucId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p2

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_1
    move-object/from16 v14, p2

    .line 331
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^bizScenario="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object v3

    .line 333
    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v0

    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 334
    return-void
.end method

.method public upload()V
    .locals 2

    .line 91
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.class public Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;
.super Ljava/lang/Object;
.source "RPCDataParser.java"


# static fields
.field public static final BOUND_SYMBOL:Ljava/lang/String; = ","

.field public static final PLACE_HOLDER:Ljava/lang/String; = "-"

.field public static final TIME_MS:Ljava/lang/String; = "ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 398
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->b(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NET_AVA"

    const-string v2, "F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_0
    return-void

    .line 403
    :catchall_0
    move-exception v0

    .line 404
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addGlobalLog ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPCDataParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "dc"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    .line 437
    const-string/jumbo v0, "mrpc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    return-void

    .line 441
    :cond_0
    const-string v0, "LIBV"

    invoke-interface {p2, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 443
    .local v2, "bifrostFlag":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_1
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 2
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 74
    const-string v0, "RPCDataParser"

    :try_start_0
    const-string/jumbo v1, "spdy"

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string/jumbo v1, "mrpc"

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    goto :goto_1

    .line 81
    :catch_1
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v1, "https"

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    return-void

    .line 87
    :catch_2
    move-exception v1

    .line 88
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 3
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 353
    if-nez p0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->signErrorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->signErrorCode:Ljava/lang/String;

    const-string v2, "SIGN_ERROR_CODE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 9

    .line 502
    const-string v0, "RPC_ALL_TIME"

    :try_start_0
    const-string v1, "ALL_TIME"

    invoke-interface {p1, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "STALLED_TIME"

    invoke-interface {p1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "ms"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 506
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v3, "OLD_RPC_ALL_TIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_0
    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    iget-wide v5, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskFinishedTimeMillis:J

    .line 514
    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-gtz p0, :cond_1

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 518
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr v5, p0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v5, p0

    .line 519
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    :cond_2
    return-void

    .line 521
    :catch_0
    move-exception p0

    .line 522
    const-string p1, "RPCDataParser"

    const-string p2, "addRpcAllTime exception"

    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 17
    .param p0, "dc"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 527
    move-object/from16 v1, p0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 529
    .local v2, "allSize":D
    :try_start_0
    const-string v0, "REQ_SIZE"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 530
    .local v5, "reqSizeStr":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 534
    :cond_0
    const-string v0, "RES_SIZE"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v4

    .line 535
    .local v6, "respSizeStr":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 539
    :cond_1
    const-wide/16 v7, 0x0

    cmpl-double v0, v2, v7

    if-lez v0, :cond_4

    .line 540
    const-string v0, "ALL_TIME"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v4

    .line 541
    .local v9, "allTimeStr":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    return-void

    .line 544
    :cond_2
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 546
    .local v4, "allTime":Ljava/lang/Double;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v0, v10, v7

    if-gtz v0, :cond_3

    .line 547
    return-void

    .line 550
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v10

    .line 551
    .local v7, "sec":D
    div-double v10, v2, v7

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    mul-double v10, v10, v12

    .line 552
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    div-double/2addr v10, v12

    .line 554
    .local v10, "bwMbps":D
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v12, "BW"

    const-string v13, "%.4f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v4    # "allTime":Ljava/lang/Double;
    .end local v5    # "reqSizeStr":Ljava/lang/String;
    .end local v6    # "respSizeStr":Ljava/lang/String;
    .end local v7    # "sec":D
    .end local v9    # "allTimeStr":Ljava/lang/String;
    .end local v10    # "bwMbps":D
    :cond_4
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "RPCDataParser"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V
    .locals 3
    .param p0, "ext"    # Ljava/util/Map;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "dc"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p3, "time"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/DataContainer;",
            "Z)V"
        }
    .end annotation

    .line 565
    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 566
    .local v1, "itemValue":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ext"    # Ljava/util/Map;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 577
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 451
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/lbs/LBSManager;->getInstance()Lcom/alipay/mobile/common/transport/monitor/lbs/LBSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/lbs/LBSManager;->getReportLBSInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    .local v1, "lbsInfo":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v2, "LBS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v1    # "lbsInfo":Ljava/lang/String;
    :cond_0
    return-void

    .line 455
    :catchall_0
    move-exception v0

    .line 456
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addLbsLog ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPCDataParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 6
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 363
    const-string v0, "RPCDataParser"

    if-nez p0, :cond_0

    .line 364
    const-string v1, "[putBizLog] TransportContext is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "BIZ_LOG"

    const/16 v3, 0x80

    if-gt v1, v3, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-void

    .line 377
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "finalBizLog":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    nop

    .end local v1    # "finalBizLog":Ljava/lang/String;
    return-void

    .line 379
    :catchall_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[putBizLog] Put biz log exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/lang/String;)V
    .locals 13
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "protocol"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    const/4 v1, 0x0

    move-object v2, v1

    .line 95
    .local v2, "dc":Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 100
    .local v0, "pf":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->f(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 102
    const-string v3, "INFO"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 105
    const-string v3, "https"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "RPCDataParser"

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 108
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v3

    .line 111
    .end local v5    # "url":Ljava/net/URL;
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    move-object v5, v3

    .line 110
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Create URL object exception: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_1
    move-object v5, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getNetType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NETTYPE"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "DNS_TIME"

    const/4 v7, 0x1

    invoke-static {v3, v6, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 118
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "TCP_TIME"

    invoke-static {v3, v6, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 119
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "SSL_TIME"

    invoke-static {v3, v6, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 120
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "ALL_TIME"

    invoke-static {v3, v6, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "REQ_SIZE"

    const/4 v8, 0x0

    invoke-static {v3, v6, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 122
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "RES_SIZE"

    invoke-static {v3, v6, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 123
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v6, "DOWN_TRAFFIC"

    invoke-static {v3, v6, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 124
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    const-string v9, "UUID"

    invoke-interface {v3, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v6, 0x2

    const/4 v9, 0x3

    const-string v10, "API"

    if-eq v3, v6, :cond_3

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-eq v3, v9, :cond_3

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v6, 0x4

    if-eq v3, v6, :cond_3

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isMdapApi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    const-string v3, "LOG"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    nop

    .line 139
    :cond_4
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->d(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 143
    :cond_5
    :goto_2
    const-string v3, "ERROR"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v5, "itemValue":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v10, "F"

    const-string v11, "RESULT"

    const-string v12, "T"

    if-eqz v6, :cond_6

    .line 145
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    goto :goto_3

    .line 148
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v6, "FATAL"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 151
    :goto_3
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v3, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 153
    const-string v6, "DOWN"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v11, "EXT1"

    if-eqz v6, :cond_7

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 157
    :cond_7
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_4
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "ATLS_DOWN"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 161
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "STALLED_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 162
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "SENT_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "WAIT_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 164
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "PROXY"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 165
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "TARGET_HOST"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 166
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "TARGET_HOST_SHORT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "R_COOKIE"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "READ_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 169
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "SA_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v6

    sget-object v10, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ADVANCED_NET_PERF_PROFILING:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v1, "logAdvancedData":Ljava/lang/String;
    move-object v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 176
    :cond_8
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "IPC_TIME1"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 177
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "IPC_TIME2"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 179
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "AW_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "AMNET_STALLED_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 182
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "AIR_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 183
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "UTC_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    goto :goto_6

    .line 174
    :cond_9
    :goto_5
    const-string v6, "Advanced NetPerf Profiling is off"

    invoke-static {v4, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_6
    const-string v6, "RETRY"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 187
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_a
    const-string v6, "ORIGHC"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 190
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "HRC"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 194
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "TAG"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 196
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "PRIO"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 198
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "DT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 200
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "VIA"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 201
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "EagleId"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 203
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "RPCID"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 205
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "ONSHORT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 206
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v10, "try_IPv6"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 208
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "MTAG"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 210
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "QOE_CUR"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 212
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "NTCP_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 213
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "NSSL_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 215
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "CPS"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 217
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "IMG_DOWN"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 218
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "CANCEL"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v6

    sget-object v10, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LOG_PRIO_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v6

    .line 221
    if-lt v6, v9, :cond_c

    .line 222
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "JTC_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 224
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "AMNET_QUENE"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 225
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "AMNET_ST"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 227
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "CTJ_OUT_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 228
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "NT_IO_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "QUEUE_OUT_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 230
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "AMNET_HUNG_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 231
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "AMNET_ENCODE_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 232
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "AMNET_ALL_TIME"

    invoke-static {v6, v9, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 236
    :cond_c
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "CID"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 239
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "SOFT"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 241
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "bizId"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 242
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "CIP"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 243
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "REQ_RAW_SIZE"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 244
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "GROUND"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 245
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "IP_STACK"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 246
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "GATEWAY6"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 248
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "RETRYCOUNT"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 249
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "QOS"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 250
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v9, "IGN_ERR"

    invoke-static {v6, v9, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 251
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "MULTIMAIN"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "DWN_GZIP"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 254
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "U_CT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 255
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "D_CT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 256
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "DJG_BIZ"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 257
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "UP_MT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 258
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "NETTUNNEL"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 259
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "PROTOCOL"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 260
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "SUB_TYPE"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 261
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "ldcid-level"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 262
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "METHOD"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 263
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "SLEN"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 264
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "RADICAL"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 265
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "TH_PO_ATC"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 266
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "TH_PO_AC"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 267
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "CP_TIME"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 268
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "GW_RS"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 269
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "CONN_STATE"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 270
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "RPC_PS_INT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 271
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "H5_RSP_SRC"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 272
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "H5_CACHE_SETUP"

    invoke-static {v6, v10, v2, v7}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 275
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->transportByLocalAmnet:Z

    if-eqz v6, :cond_d

    .line 276
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "LA"

    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_d
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->printUrlToMonitorLog:Z

    if-eqz v6, :cond_e

    .line 281
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v10, "REDIRECT"

    invoke-static {v6, v10, v2, v8}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 285
    :cond_e
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->urgentFlag:Z

    if-eqz v6, :cond_f

    .line 286
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v8, "URGENT"

    invoke-interface {v6, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_f
    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;)V

    .line 292
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 295
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->e(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 297
    invoke-static {p0, v2, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 300
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->targetSpi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 301
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->targetSpi:Ljava/lang/String;

    const-string/jumbo v10, "spi"

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_10
    iget v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->tcpCount:I

    if-le v6, v7, :cond_11

    .line 305
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    iget v8, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->tcpCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "TCP_COUNT"

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_11
    iget v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->sslCount:I

    if-le v6, v7, :cond_12

    .line 308
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->sslCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSL_COUNT"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_12
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->c(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 313
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 315
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->b(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledTransportByLocalAmnet()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 319
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    const-string v7, "hlas"

    invoke-interface {v6, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_PERF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 328
    .local v7, "doNotUpload":Z
    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "errorValue":Ljava/lang/String;
    invoke-interface {v2, v9}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 331
    const/4 v7, 0x1

    .line 332
    const-string v8, "ignErr don\'t upload"

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_14
    if-nez v7, :cond_15

    .line 336
    invoke-static {v0, p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 340
    :cond_15
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    if-eqz v8, :cond_16

    .line 342
    :try_start_1
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;->callback(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    goto :goto_7

    .line 343
    :catchall_1
    move-exception v8

    .line 344
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[buildAndWriteLog] PerformanceDataCallback Exception = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_16
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->perfLog:Ljava/lang/String;

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->perfLog:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private static c(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 3
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 386
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->originRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-nez v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->originRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v1, "sign_time"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "signTime":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SIGN_TIME"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void

    .line 387
    .end local v0    # "signTime":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 5
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 409
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->printUrlToMonitorLog:Z

    if-nez v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 413
    .local v1, "url":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "URL"

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v3, "None"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void

    .line 419
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x800

    if-gt v0, v3, :cond_2

    .line 420
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    return-void

    .line 426
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 427
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "urltruncated"

    const-string v4, "T"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    .local v0, "e0":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[putURLToExtPramas] substring Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RPCDataParser"

    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .end local v0    # "e0":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method private static e(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 9
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    const-string v0, "%.4f"

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->deviceTrafficStateInfo:Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    const/4 v2, 0x0

    .line 464
    .local v2, "startDeviceTraffic":Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 466
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->stopTrafficMonitor(Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;)Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;

    move-result-object v1

    .line 468
    .local v1, "delta":Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "TRX"

    iget-wide v5, v1, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;->mDiffTotalRxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "TTX"

    iget-wide v5, v1, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;->mDiffTotalTxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "TMRX"

    iget-wide v5, v1, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;->mDiffMobileRxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "TMTX"

    iget-wide v5, v1, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;->mDiffMobileTxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "TTS"

    iget-wide v5, v1, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;->mDeltaTS:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "SPEED"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getSpeed()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v3

    const-string v4, "BWW"

    new-array v5, v5, [Ljava/lang/Object;

    .line 476
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getBandwidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    .line 475
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v1    # "delta":Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;
    .end local v2    # "startDeviceTraffic":Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;
    :cond_0
    return-void

    .line 478
    :catchall_0
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addTrafficLog ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPCDataParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static f(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 2
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 485
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 486
    const-string v0, "H5"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    return-void

    .line 487
    :cond_0
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 488
    const-string v0, "DJG"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    return-void

    .line 489
    :cond_1
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 491
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 492
    const-string v0, "LOG"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 494
    const-string v0, "RPC"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    return-void

    .line 496
    :cond_3
    const-string v0, "RSRC"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public static final monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3
    .param p0, "netContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 48
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "RPCDataParser"

    const-string v2, "RPC\u76d1\u63a7\u65e5\u5fd7\u7edf\u8ba1\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public static parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1
    .param p0, "srnc"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "https"

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 70
    return-void
.end method

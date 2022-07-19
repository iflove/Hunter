.class public Lcom/alipay/mobile/common/logging/http/MdapTrafficController;
.super Ljava/lang/Object;
.source "MdapTrafficController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "byteDataSize"    # I

    .line 29
    move-object/from16 v0, p1

    move/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curUploadDay"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "uploadDayKey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curUploadTrafic"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "uploadTraficKey":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long/2addr v4, v6

    .line 33
    .local v4, "curDay":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 35
    .local v6, "lastCurday":J
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/NetUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v9

    .line 36
    .local v10, "networkType":Ljava/lang/String;
    move-object v10, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    .line 37
    .local v8, "isConnected":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isPositiveDiagnose()Z

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    .line 38
    .local v14, "isPositive":Z
    move v14, v12

    if-nez v12, :cond_1

    const-string v12, "WIFI"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 42
    .local v11, "isIgnoreTrafic":Z
    :cond_1
    :goto_0
    move/from16 v12, p2

    .line 43
    .local v12, "contentSize":I
    const-string v15, ""

    .line 45
    .local v15, "contentPeek":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v9, "message":Ljava/lang/StringBuilder;
    move-object v9, v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v14

    .end local v14    # "isPositive":Z
    .local v16, "isPositive":Z
    const-string v14, " upload"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v13, "MdapTraffic"

    cmp-long v14, v4, v6

    if-eqz v14, :cond_2

    .line 49
    const-string v14, " on the new day"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v14

    invoke-virtual {v14, v2, v4, v5}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putLongCommit(Ljava/lang/String;J)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v14

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "uploadDayKey":Ljava/lang/String;
    .local v17, "uploadDayKey":Ljava/lang/String;
    invoke-virtual {v14, v3, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putIntCommit(Ljava/lang/String;I)V

    .line 56
    invoke-static {v8, v11, v3, v1}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController;->a(ZZLjava/lang/String;I)V

    move-wide/from16 v18, v4

    goto :goto_1

    .line 60
    .end local v17    # "uploadDayKey":Ljava/lang/String;
    .restart local v2    # "uploadDayKey":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "uploadDayKey":Ljava/lang/String;
    .restart local v17    # "uploadDayKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v14

    invoke-virtual {v14, v3, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 62
    .local v2, "todayTrafic":I
    move v2, v14

    add-int/2addr v14, v1

    .line 63
    .local v14, "totalTrafic":I
    move-wide/from16 v18, v4

    .end local v4    # "curDay":J
    .local v18, "curDay":J
    const-string v4, ", todayByte: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const/high16 v4, 0x200000

    if-le v2, v4, :cond_4

    .line 68
    if-eqz v11, :cond_3

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "checkAndUpdateConsume, do not check by positive."

    invoke-interface {v4, v13, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_3
    new-instance v4, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " upload trafic limited ! todayByte: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_4
    invoke-static {v8, v11, v3, v14}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController;->a(ZZLjava/lang/String;I)V

    .line 82
    .end local v2    # "todayTrafic":I
    .end local v14    # "totalTrafic":I
    :goto_1
    const-string v2, ", contentPeek: #"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, ", contentSize: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", traficByte: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ", network: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, ", connected: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, ", positive: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    .end local v16    # "isPositive":Z
    .local v2, "isPositive":Z
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v13, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static a(ZZLjava/lang/String;I)V
    .locals 3
    .param p0, "isConnected"    # Z
    .param p1, "isIgnored"    # Z
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "byteSize"    # I

    .line 96
    const-string v0, "MdapTraffic"

    if-eqz p0, :cond_1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "doUpdateConsume, do not update by positive."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putIntCommit(Ljava/lang/String;I)V

    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "doUpdateConsume, do not update by disconnected."

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

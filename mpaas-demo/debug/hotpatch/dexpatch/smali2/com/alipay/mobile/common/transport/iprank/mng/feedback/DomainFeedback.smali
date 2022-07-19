.class public Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;
.super Ljava/lang/Object;
.source "DomainFeedback.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/feedback/IFeedback;


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

.field public mContext:Landroid/content/Context;

.field public storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOtherProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    return v1

    .line 144
    :cond_2
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    return v1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    const-string v0, "IPR_DomainFeedback"

    const-string/jumbo v2, "network is unavailable,need\'t update db"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_5
    :goto_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    if-eqz v0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    .line 51
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    return-object v0

    .line 51
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public feedback(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 16
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .param p4, "rtt"    # I

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    const-string v11, "IPR_DomainFeedback"

    .line 68
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "feedback domain=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ip=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] isSuccess=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] rtt=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez v12, :cond_1

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 81
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getNetType(Landroid/content/Context;)I

    move-result v5

    .line 82
    .local v5, "netType":I
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->b:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->getLbsIdGently()J

    move-result-wide v6

    .line 84
    .local v6, "tmpLbsId":J
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpRankManager()Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;

    move-result-object v2

    .line 85
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->isIpRankModelInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 91
    iget-object v8, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v2, v11

    move v11, v5

    move v3, v13

    move-wide v12, v6

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpRankModel(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-result-object v0

    const/4 v4, 0x0

    .line 92
    .local v4, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v4, v0

    if-nez v0, :cond_2

    .line 93
    const-string v0, "ipRankModel is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 98
    :cond_2
    if-eqz p3, :cond_3

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 101
    .local v8, "time":J
    iput v3, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 102
    iget v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 103
    iput-wide v8, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 104
    iput-wide v8, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    .line 105
    iget v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    .line 106
    .end local v8    # "time":J
    goto :goto_0

    .line 107
    :cond_3
    const/16 v0, 0x270f

    iput v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 108
    iget v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 112
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->updateIp2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 114
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->storageBiz:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    invoke-virtual {v0, v14}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->reloadIpInfoToCache(Ljava/lang/String;)V

    .line 118
    .end local v4    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    return-void

    .line 121
    :cond_4
    move-object v2, v11

    move v3, v13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "domain:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ip: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t from iprank,need\'t feedback"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v5    # "netType":I
    .end local v6    # "tmpLbsId":J
    return-void

    .line 123
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v11

    move v3, v13

    .line 124
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

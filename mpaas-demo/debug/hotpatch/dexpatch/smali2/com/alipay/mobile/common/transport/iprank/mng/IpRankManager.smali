.class public Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;
.super Ljava/lang/Object;
.source "IpRankManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_IpRankManager"


# instance fields
.field public ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    .line 32
    return-void
.end method


# virtual methods
.method public clearIprank()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->clearIprank()V

    .line 190
    return-void
.end method

.method public deleteFromIpRank()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getTableSize()I

    move-result v0

    .line 52
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "before deleteFromIpRank,the size is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPR_IpRankManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 55
    .local v3, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v3, v1

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_MAX_SIZE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 56
    .local v1, "maxSize":I
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_DELETE_THRESHOLD:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "threshold":Ljava/lang/String;
    if-gt v0, v1, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    const-string v5, "deleteFromIpRank,the table is too large,will delete some"

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->deleteFromIpRank(D)V

    .line 64
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getTableSize()I

    move-result v0

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "after deleteFromIpRank,the size is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-gt v0, v1, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    nop

    .line 70
    const-string v5, "deleteFromIpRank,the table is still very large,will delete strongly"

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->deleteStrongly()V

    .line 73
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getTableSize()I

    move-result v0

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "after delete strongly,the size is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-gt v0, v1, :cond_2

    .line 76
    return-void

    .line 80
    :cond_2
    const-string v5, "deleteFromIpRank,have to delete finally... "

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sub-int v5, v0, v1

    .line 82
    .local v5, "tmpNum":I
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->deleteFinally(I)V

    .line 85
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getTableSize()I

    move-result v0

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "after delete finally,the size is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public getAllIpRankModels(JI)Ljava/util/ArrayList;
    .locals 1
    .param p1, "lbs_id"    # J
    .param p3, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getAllIpRankModels(JI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGivenNumIpRankModels(IJI)Ljava/util/ArrayList;
    .locals 1
    .param p1, "num"    # I
    .param p2, "lbs_id"    # J
    .param p4, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getGivenNumIpRankModels(IJI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIpNum(JI)I
    .locals 2
    .param p1, "lbs_id"    # J
    .param p3, "netType"    # I

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->getAllIpRankModels(JI)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    .local v1, "ips":Ljava/util/ArrayList;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    return v0

    .line 171
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getIpRankModel(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "lbs_id"    # J
    .param p5, "netType"    # I

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getIpRankModel(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-result-object v0

    return-object v0
.end method

.method public getIpRankModels(Ljava/lang/String;JI)Ljava/util/ArrayList;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "lbs_id"    # J
    .param p4, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getIpRankModels(Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTableSize()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->getTableSize()I

    move-result v0

    return v0
.end method

.method public isIpRankModelInDB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)Z
    .locals 1
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->isIpRankModelInDB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)Z

    move-result v0

    return v0
.end method

.method public isIpRankModelInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "lbs_id"    # J

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->isIpRankModelInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public putIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 1
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->putIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 40
    return-void
.end method

.method public removeIpsByHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->removeIpsByHost(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public removeipsNotinLocaldns(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "lbsId"    # J
    .param p4, "netType"    # I
    .param p5, "ipParams"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->removeipsNotinLocaldns(Ljava/lang/String;JILjava/lang/String;)V

    .line 194
    return-void
.end method

.method public updateIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 1
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpRankManager;->ipRankDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->updateIpRankModel(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V

    .line 95
    return-void
.end method

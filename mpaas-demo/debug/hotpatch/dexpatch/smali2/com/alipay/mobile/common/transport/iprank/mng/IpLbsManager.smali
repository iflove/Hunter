.class public Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;
.super Ljava/lang/Object;
.source "IpLbsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_IpLbsManager"


# instance fields
.field public ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized getLbsIdAnyway(Ljava/lang/String;)J
    .locals 12
    .param p1, "location"    # Ljava/lang/String;

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "IPR_IpLbsManager"

    const-string v3, "getLbsId ,location is null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-wide v1

    .line 45
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->getLbsModelsFromTable()Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "models":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 47
    .local v3, "modelsSize":I
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    .line 50
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    if-ge v4, v3, :cond_3

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;

    .line 52
    .local v5, "ipLbsModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;
    move-object v5, v7

    iget-object v7, v7, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;->latlng:Ljava/lang/String;

    .line 53
    .local v6, "loc":Ljava/lang/String;
    move-object v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 56
    invoke-static {p1, v6}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getDistance(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 57
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    cmpg-double v11, v7, v9

    if-gez v11, :cond_2

    .line 58
    iget v7, v5, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;->id:I

    int-to-long v7, v7

    .line 59
    .local v7, "lbs_id":J
    const-string v9, "IPR_IpLbsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "curLoc: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ,already in table,LBS_id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-wide v7

    .line 50
    .end local v5    # "ipLbsModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;
    .end local v6    # "loc":Ljava/lang/String;
    .end local v7    # "lbs_id":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v4    # "i":I
    :cond_3
    :try_start_2
    const-string v5, "IPR_IpLbsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "curLoc: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,insert into table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    invoke-virtual {v5, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->insert2LBS(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .local v4, "_id":J
    monitor-exit p0

    return-wide v1

    .line 67
    .end local v0    # "models":Ljava/util/ArrayList;
    .end local v3    # "modelsSize":I
    .end local v4    # "_id":J
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "IPR_IpLbsManager"

    const-string v4, "getLbsId exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    monitor-exit p0

    return-wide v1

    .line 39
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local p1    # "location":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTableSize()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->getTableSize()I

    move-result v0

    return v0
.end method

.method public insert2LBS(Ljava/lang/String;)J
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "IPR_IpLbsManager"

    const-string v1, "insert2LBS,latlng is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-wide/16 v0, -0x1

    return-wide v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->ipLbsDao:Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->insert2LBS(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

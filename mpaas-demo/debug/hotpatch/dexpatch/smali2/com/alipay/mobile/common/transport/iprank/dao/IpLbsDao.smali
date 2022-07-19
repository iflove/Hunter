.class public Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;
.super Ljava/lang/Object;
.source "IpLbsDao.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized getLbsModelsFromTable()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v3, "list":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v0, v4

    .line 74
    const-string/jumbo v4, "select _id,latlng from lbs"

    .line 75
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v1, v5

    .line 76
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    .line 77
    :try_start_1
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 78
    .local v5, "_id":I
    const-string v6, "latlng"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "latlng":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;

    invoke-direct {v7, v5, v6}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;-><init>(ILjava/lang/String;)V

    .line 80
    .local v7, "model":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    nop

    .end local v5    # "_id":I
    .end local v6    # "latlng":Ljava/lang/String;
    .end local v7    # "model":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpLbsModel;
    goto :goto_0

    .line 87
    .end local v3    # "list":Ljava/util/ArrayList;
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 83
    :catch_0
    move-exception v3

    goto :goto_1

    .line 82
    .restart local v3    # "list":Ljava/util/ArrayList;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_0
    nop

    .line 87
    if-eqz v1, :cond_1

    .line 88
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;
    :cond_1
    monitor-exit p0

    return-object v3

    .line 87
    .end local v3    # "list":Ljava/util/ArrayList;
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 83
    :catch_1
    move-exception v3

    .line 84
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "IPR_IpLbsDao"

    const-string v5, "getLatlngFromLBS exception"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    :cond_2
    monitor-exit p0

    return-object v2

    .line 87
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_3

    .line 88
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTableSize()I
    .locals 6

    const/4 v0, 0x0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 100
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 102
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    .line 103
    const-string/jumbo v3, "select count(*) from lbs"

    .line 104
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 105
    move-object v1, v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 108
    :cond_0
    nop

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return v2

    .line 109
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 110
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "IPR_IpLbsDao"

    const-string v5, "getTableSize"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local v3    # "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2
    const/4 v3, -0x1

    return v3

    .line 112
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public declared-synchronized insert2LBS(Ljava/lang/String;)J
    .locals 7
    .param p1, "latlng"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->isCloseLbsDbInsert(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "IPR_IpLbsDao"

    const-string v2, "close insert lbs into db, mock 0;0"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "0;0"

    move-object p1, v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 46
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 47
    .local v3, "values":Landroid/content/ContentValues;
    move-object v3, v1

    const-string v4, "latlng"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "lbs"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 50
    .local v1, "raw_id":J
    const-string v4, "IPR_IpLbsDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert2LBS,latlng: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-wide v1

    .line 56
    .end local v1    # "raw_id":J
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpLbsDao"

    const-string v3, "insert2LBS exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    const-wide/16 v2, -0x1

    monitor-exit p0

    return-wide v2

    .line 56
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpLbsDao;
    .end local p1    # "latlng":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

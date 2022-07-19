.class public Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
.super Ljava/lang/Object;
.source "IpRankDao.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    .line 29
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "lbs_id"    # J

    monitor-enter p0

    .line 610
    :try_start_0
    const-string v0, "IPR_IpRankDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeIpRankModel,host=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ip=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] netType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] lbs_id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 617
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 618
    const-string v1, "delete from ip_rank where domain = ? and ip = ? and netType = ? and lbs_id = ?"

    .line 619
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 620
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "removeIpRankModel exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 625
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 612
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 609
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    .end local p3    # "netType":I
    .end local p4    # "lbs_id":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearIprank()V
    .locals 5

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 639
    const-string v1, "delete from ip_rank"

    .line 640
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    const-string v2, "IPR_IpRankDao"

    const-string v3, "clearIprank success"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearIprank ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 646
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFinally(I)V
    .locals 5
    .param p1, "count"    # I

    monitor-enter p0

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 464
    const-string v1, "delete from ip_rank where _id in (select _id from ip_rank order by failCount desc limit 0,?)"

    .line 465
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v1    # "sql":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 471
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 470
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "IPR_IpRankDao"

    const-string v3, "deleteFinally"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 471
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 474
    :cond_0
    monitor-exit p0

    return-void

    .line 470
    :goto_0
    if-eqz v0, :cond_1

    .line 471
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "count":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteFromIpRank(D)V
    .locals 5
    .param p1, "threshold"    # D

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 426
    const-string v1, "delete from ip_rank where (failCount+0.1)/(successCount+0.1) > ?"

    .line 427
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "putIpRankModel2DB"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 431
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "threshold":D
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteStrongly()V
    .locals 4

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 445
    const-string v1, "delete from ip_rank where _id in (select _id from ip_rank where _id in (select _id from ip_rank  where _id in (select _id from ip_rank order by feedbackSuccTime asc limit 0,40) order by feedbackSuccCount asc limit 0,30) order by failCount desc limit 0,20)"

    .line 446
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    const-string v3, "deleteStrongly"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 450
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 443
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllIpRankModels(JI)Ljava/util/ArrayList;
    .locals 27
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

    move-object/from16 v1, p0

    monitor-enter p0

    .line 194
    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    move-object v4, v3

    .line 196
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    .line 199
    .local v5, "ipRankModelList":Ljava/util/ArrayList;
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v4, v0

    .line 200
    const-string/jumbo v0, "select domain,ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where lbs_id = ? and netType = ?"

    .line 201
    .local v0, "sql":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 202
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v7, v3

    .line 220
    .local v7, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v2, v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 221
    const-string v6, "IPR_IpRankDao"

    const-string v8, "getAllIpRankModels,result size is 0,return null"

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    if-eqz v2, :cond_0

    .line 252
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 225
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    const-string v6, "domain"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "domain":Ljava/lang/String;
    const-string v6, "ip"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "ip":Ljava/lang/String;
    const-string/jumbo v6, "time"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 230
    .local v13, "time":J
    const-string/jumbo v6, "ttl"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 232
    .local v15, "ttl":J
    const-string/jumbo v6, "rtt"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 233
    .local v18, "rtt":I
    const-string/jumbo v6, "successCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 234
    .local v19, "successCount":I
    const-string v6, "failCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 235
    .local v20, "failCount":I
    const-string v6, "feedbackSuccCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 236
    .local v21, "feedbackSuccCount":I
    const-string v6, "feedbackSuccTime"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 237
    .local v22, "feedbackSuccTime":J
    const-string v6, "lastSuccTime"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 238
    .local v24, "lastSuccTime":J
    const-string v6, "grade"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v26

    .line 240
    .local v26, "grade":F
    new-instance v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-object v8, v6

    move-wide/from16 v9, p1

    move/from16 v17, p3

    invoke-direct/range {v8 .. v26}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;-><init>(JLjava/lang/String;Ljava/lang/String;JJIIIIIJJF)V

    move-object v7, v6

    .line 244
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 246
    .end local v11    # "domain":Ljava/lang/String;
    .end local v12    # "ip":Ljava/lang/String;
    .end local v13    # "time":J
    .end local v15    # "ttl":J
    .end local v18    # "rtt":I
    .end local v19    # "successCount":I
    .end local v20    # "failCount":I
    .end local v21    # "feedbackSuccCount":I
    .end local v22    # "feedbackSuccTime":J
    .end local v24    # "lastSuccTime":J
    .end local v26    # "grade":F
    :cond_2
    nop

    .line 251
    if-eqz v2, :cond_3

    .line 252
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    :cond_3
    monitor-exit p0

    return-object v5

    .line 251
    .end local v0    # "sql":Ljava/lang/String;
    .end local v7    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "IPR_IpRankDao"

    const-string v7, "getIpRankModel exception"

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    if-eqz v2, :cond_4

    .line 252
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 249
    :cond_4
    monitor-exit p0

    return-object v3

    .line 251
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_5

    .line 252
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 193
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "ipRankModelList":Ljava/util/ArrayList;
    .end local p1    # "lbs_id":J
    .end local p3    # "netType":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGivenNumIpRankModels(IJI)Ljava/util/ArrayList;
    .locals 27
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

    move-object/from16 v1, p0

    monitor-enter p0

    .line 269
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v4, v0

    .line 271
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    .line 274
    .local v5, "ipRankModelList":Ljava/util/ArrayList;
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v3, v0

    .line 275
    const-string/jumbo v0, "select domain,ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank  where lbs_id = ? and netType = ? order by lastSuccTime desc limit 0,?"

    .line 276
    .local v0, "sql":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 277
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v7, v2

    .line 295
    .local v7, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v4, v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 296
    const-string v6, "IPR_IpRankDao"

    const-string v8, "getAllIpRankModels,result size is 0,return null"

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v4, :cond_0

    .line 327
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 300
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const-string v6, "domain"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "domain":Ljava/lang/String;
    const-string v6, "ip"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 304
    .local v12, "ip":Ljava/lang/String;
    const-string/jumbo v6, "time"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 305
    .local v13, "time":J
    const-string/jumbo v6, "ttl"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 307
    .local v15, "ttl":J
    const-string/jumbo v6, "rtt"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 308
    .local v18, "rtt":I
    const-string/jumbo v6, "successCount"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 309
    .local v19, "successCount":I
    const-string v6, "failCount"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 310
    .local v20, "failCount":I
    const-string v6, "feedbackSuccCount"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 311
    .local v21, "feedbackSuccCount":I
    const-string v6, "feedbackSuccTime"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 312
    .local v22, "feedbackSuccTime":J
    const-string v6, "lastSuccTime"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 313
    .local v24, "lastSuccTime":J
    const-string v6, "grade"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v26

    .line 315
    .local v26, "grade":F
    new-instance v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-object v8, v6

    move-wide/from16 v9, p2

    move/from16 v17, p4

    invoke-direct/range {v8 .. v26}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;-><init>(JLjava/lang/String;Ljava/lang/String;JJIIIIIJJF)V

    move-object v7, v6

    .line 319
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 321
    .end local v11    # "domain":Ljava/lang/String;
    .end local v12    # "ip":Ljava/lang/String;
    .end local v13    # "time":J
    .end local v15    # "ttl":J
    .end local v18    # "rtt":I
    .end local v19    # "successCount":I
    .end local v20    # "failCount":I
    .end local v21    # "feedbackSuccCount":I
    .end local v22    # "feedbackSuccTime":J
    .end local v24    # "lastSuccTime":J
    .end local v26    # "grade":F
    :cond_2
    nop

    .line 326
    if-eqz v4, :cond_3

    .line 327
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 321
    :cond_3
    monitor-exit p0

    return-object v5

    .line 326
    .end local v0    # "sql":Ljava/lang/String;
    .end local v7    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "IPR_IpRankDao"

    const-string v7, "getIpRankModel exception"

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    if-eqz v4, :cond_4

    .line 327
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 324
    :cond_4
    monitor-exit p0

    return-object v2

    .line 326
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v4, :cond_5

    .line 327
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "ipRankModelList":Ljava/util/ArrayList;
    .end local p1    # "num":I
    .end local p2    # "lbs_id":J
    .end local p4    # "netType":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIpRankModel(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .locals 26
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "lbs_id"    # J
    .param p5, "netType"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 126
    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    move-object v4, v3

    .line 131
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v4, v0

    .line 132
    const-string/jumbo v0, "select ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where domain = ?  and ip = ? and lbs_id = ? and netType = ?"

    .line 133
    .local v0, "sql":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    .line 134
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 133
    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 136
    const/4 v5, 0x0

    .line 149
    .local v5, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 150
    const-string v6, "IPR_IpRankDao"

    const-string v7, "getIpRankModel,result size is 0,return null"

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v2, :cond_0

    .line 177
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 154
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    const-string/jumbo v6, "time"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 157
    .local v12, "time":J
    const-string/jumbo v6, "ttl"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 159
    .local v14, "ttl":J
    const-string/jumbo v6, "rtt"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 160
    .local v17, "rtt":I
    const-string/jumbo v6, "successCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 161
    .local v18, "successCount":I
    const-string v6, "failCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 162
    .local v19, "failCount":I
    const-string v6, "feedbackSuccCount"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 163
    .local v20, "feedbackSuccCount":I
    const-string v6, "feedbackSuccTime"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 164
    .local v21, "feedbackSuccTime":J
    const-string v6, "lastSuccTime"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 165
    .local v23, "lastSuccTime":J
    const-string v6, "grade"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    .line 167
    .local v25, "grade":F
    new-instance v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    move-object v7, v6

    move-wide/from16 v8, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v16, p5

    invoke-direct/range {v7 .. v25}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;-><init>(JLjava/lang/String;Ljava/lang/String;JJIIIIIJJF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 171
    .end local v12    # "time":J
    .end local v14    # "ttl":J
    .end local v17    # "rtt":I
    .end local v18    # "successCount":I
    .end local v19    # "failCount":I
    .end local v20    # "feedbackSuccCount":I
    .end local v21    # "feedbackSuccTime":J
    .end local v23    # "lastSuccTime":J
    .end local v25    # "grade":F
    :cond_2
    nop

    .line 176
    if-eqz v2, :cond_3

    .line 177
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    :cond_3
    monitor-exit p0

    return-object v5

    .line 176
    .end local v0    # "sql":Ljava/lang/String;
    .end local v5    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "IPR_IpRankDao"

    const-string v6, "getIpRankModel exception"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    if-eqz v2, :cond_4

    .line 177
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    :cond_4
    monitor-exit p0

    return-object v3

    .line 176
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_5

    .line 177
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 125
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    .end local p3    # "lbs_id":J
    .end local p5    # "netType":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIpRankModels(Ljava/lang/String;JI)Ljava/util/ArrayList;
    .locals 26
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "_lbs_id"    # J
    .param p4, "_netType"    # I
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

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    monitor-enter p0

    .line 42
    :try_start_0
    const-string v0, "IPR_IpRankDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIpRankModels from DB,host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 43
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    move-object/from16 v2, v21

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v3, v0

    .line 47
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "ipRankModelList":Ljava/util/ArrayList;
    iget-object v4, v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 50
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    const-string/jumbo v2, "select ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where domain = ?  and lbs_id = ? and netType = ?"

    .line 51
    .local v2, "sql":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    .line 52
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 51
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    move-object v3, v5

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gtz v5, :cond_1

    .line 109
    if-eqz v3, :cond_0

    .line 110
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 72
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_0
    monitor-exit p0

    return-object v21

    .line 75
    :cond_1
    :goto_0
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    move-object/from16 v5, p1

    .line 79
    .local v5, "domain":Ljava/lang/String;
    const-string v6, "ip"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "ip":Ljava/lang/String;
    const-string/jumbo v7, "time"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 81
    .local v7, "time":J
    const-string/jumbo v9, "ttl"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 83
    .local v9, "ttl":J
    const-string/jumbo v12, "rtt"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 84
    .local v12, "rtt":I
    const-string/jumbo v13, "successCount"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 85
    .local v13, "successCount":I
    const-string v14, "failCount"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 86
    .local v14, "failCount":I
    const-string v15, "feedbackSuccCount"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 87
    .local v15, "feedbackSuccCount":I
    move-object/from16 v22, v2

    .end local v2    # "sql":Ljava/lang/String;
    .local v22, "sql":Ljava/lang/String;
    const-string v2, "feedbackSuccTime"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 89
    .local v16, "feedbackSuccTime":J
    const-string v2, "lastSuccTime"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 90
    .local v18, "lastSuccTime":J
    const-string v2, "grade"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    .line 92
    .local v20, "grade":F
    new-instance v23, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v2, v23

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v24, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v25, "cursor":Landroid/database/Cursor;
    move-wide/from16 v3, p2

    move/from16 v11, p4

    :try_start_6
    invoke-direct/range {v2 .. v20}, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;-><init>(JLjava/lang/String;Ljava/lang/String;JJIIIIIJJF)V

    move-object/from16 v2, v23

    .line 96
    .local v2, "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    move-object/from16 v11, p1

    move-object/from16 v2, v22

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    .end local v2    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    goto/16 :goto_0

    .line 109
    .end local v0    # "ipRankModelList":Ljava/util/ArrayList;
    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "ip":Ljava/lang/String;
    .end local v7    # "time":J
    .end local v9    # "ttl":J
    .end local v12    # "rtt":I
    .end local v13    # "successCount":I
    .end local v14    # "failCount":I
    .end local v15    # "feedbackSuccCount":I
    .end local v16    # "feedbackSuccTime":J
    .end local v18    # "lastSuccTime":J
    .end local v20    # "grade":F
    .end local v22    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_1

    .line 104
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "ipRankModelList":Ljava/util/ArrayList;
    .local v2, "sql":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    .line 109
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22    # "sql":Ljava/lang/String;
    .restart local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_3

    .line 110
    :try_start_7
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 104
    :cond_3
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0    # "ipRankModelList":Ljava/util/ArrayList;
    .end local v22    # "sql":Ljava/lang/String;
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 105
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 109
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_2

    .line 105
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 109
    .end local v24    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 105
    :catch_3
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_8
    const-string v4, "IPR_IpRankDao"

    const-string v5, "getIpRankModels exception"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 107
    :cond_4
    monitor-exit p0

    return-object v21

    .line 109
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_5

    .line 110
    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 41
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "_lbs_id":J
    .end local p4    # "_netType":I
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTableSize()I
    .locals 6

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 486
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    .line 487
    const-string/jumbo v3, "select count(*) from ip_rank"

    .line 488
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 489
    move-object v1, v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 490
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v4

    goto :goto_0

    .line 497
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 493
    :catch_0
    move-exception v3

    goto :goto_1

    .line 492
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    nop

    .line 497
    if-eqz v1, :cond_1

    .line 498
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 492
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_1
    monitor-exit p0

    return v2

    .line 497
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 493
    :catch_1
    move-exception v3

    .line 494
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "IPR_IpRankDao"

    const-string v5, "getTableSize"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    if-eqz v1, :cond_2

    .line 498
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 495
    :cond_2
    const/4 v4, -0x1

    monitor-exit p0

    return v4

    .line 497
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_3

    .line 498
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 482
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "size":I
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIpInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "lbs_id"    # J

    monitor-enter p0

    .line 530
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "IPR_IpRankDao"

    const-string v2, "isIpInDB : host is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 532
    monitor-exit p0

    return v1

    .line 530
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_0
    const/4 v0, 0x0

    .line 536
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 538
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    .line 539
    const-string/jumbo v3, "select ip from ip_rank where domain = ? and ip = ? and netType = ? and lbs_id = ?"

    .line 540
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v6, 0x2

    .line 541
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 540
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 544
    move-object v2, v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v4, :cond_2

    .line 558
    if-eqz v2, :cond_1

    .line 559
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    :cond_1
    monitor-exit p0

    return v1

    .line 546
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_4

    .line 558
    if-eqz v2, :cond_3

    .line 559
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 547
    :cond_3
    monitor-exit p0

    return v5

    .line 548
    :cond_4
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-le v4, v5, :cond_6

    .line 550
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a(Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 558
    if-eqz v2, :cond_5

    .line 559
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 551
    :cond_5
    monitor-exit p0

    return v1

    .line 558
    :cond_6
    if-eqz v2, :cond_7

    .line 559
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 553
    :cond_7
    monitor-exit p0

    return v1

    .line 558
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 554
    :catch_0
    move-exception v3

    .line 555
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_8
    const-string v4, "IPR_IpRankDao"

    const-string v5, "isIpInDB exception"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 558
    if-eqz v2, :cond_8

    .line 559
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 556
    :cond_8
    monitor-exit p0

    return v1

    .line 558
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_9

    .line 559
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 529
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    .end local p3    # "netType":I
    .end local p4    # "lbs_id":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isIpRankModelInDB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)Z
    .locals 6
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    iget v3, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    iget-wide v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->isIpInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 514
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isIpRankModelInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "lbs_id"    # J

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->isIpInDB(Ljava/lang/String;Ljava/lang/String;IJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 522
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    .end local p3    # "netType":I
    .end local p4    # "lbs_id":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putIpRankModel2DB(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 7
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 388
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 390
    .local v3, "values":Landroid/content/ContentValues;
    move-object v3, v1

    const-string v4, "lbs_id"

    iget-wide v5, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    const-string v1, "domain"

    iget-object v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "ip"

    iget-object v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, "time"

    iget-wide v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    const-string/jumbo v1, "ttl"

    iget-wide v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string/jumbo v1, "netType"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string/jumbo v1, "rtt"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string/jumbo v1, "successCount"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v1, "failCount"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v1, "feedbackSuccCount"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v1, "feedbackSuccTime"

    iget-wide v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v1, "lastSuccTime"

    iget-wide v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v1, "grade"

    iget v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 405
    const-string v1, "ip_rank"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 406
    const-string v1, "IPR_IpRankDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "putIpRankModel2DB success,domain: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,ip: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "putIpRankModel2DB"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 410
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIpsByHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 569
    monitor-exit p0

    return-void

    .line 568
    :cond_0
    const/4 v0, 0x0

    .line 574
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 575
    const-string v1, "delete from ip_rank where domain = ?"

    .line 576
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "removeIpsByHost exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 581
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "host":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    monitor-enter p0

    .line 591
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 597
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 598
    const-string v1, "delete from ip_rank where domain = ? and ip = ?"

    .line 599
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "removeSingleIp exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 604
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 592
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 590
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeipsNotinLocaldns(Ljava/lang/String;JILjava/lang/String;)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "lbsId"    # J
    .param p4, "netType"    # I
    .param p5, "ipParams"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete from ip_rank where domain = ? and lbs_id = ? and netType = ? and ip not in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "removeipsNotinLocaldns success"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeipsNotinLocaldns ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 666
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 656
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "lbsId":J
    .end local p4    # "netType":I
    .end local p5    # "ipParams":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIpRankModel(Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;)V
    .locals 12
    .param p1, "ipRankModel"    # Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 341
    :try_start_0
    iget-wide v1, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    .line 342
    .local v1, "lbs_id":J
    iget-object v3, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 343
    .local v3, "domain":Ljava/lang/String;
    iget-object v4, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    .line 344
    .local v4, "ip":Ljava/lang/String;
    iget v5, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    .line 346
    .local v5, "netType":I
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    .line 347
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    .line 349
    .local v7, "values":Landroid/content/ContentValues;
    move-object v7, v6

    const-string/jumbo v8, "time"

    iget-wide v9, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string/jumbo v6, "ttl"

    iget-wide v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    const-string/jumbo v6, "rtt"

    iget v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v6, "successCount"

    iget v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v6, "failCount"

    iget v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v6, "feedbackSuccCount"

    iget v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v6, "feedbackSuccTime"

    iget-wide v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string v6, "lastSuccTime"

    iget-wide v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v6, "grade"

    iget v8, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 362
    const-string v6, "domain = ? and ip = ? and netType = ? and lbs_id = ?"

    .line 363
    .local v6, "whereClause":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 364
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 366
    .local v8, "whereArgs":[Ljava/lang/String;
    const-string v9, "ip_rank"

    invoke-virtual {v0, v9, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    const-string v9, "IPR_IpRankDao"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateIpRankModel success,domain: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ,ip: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .end local v1    # "lbs_id":J
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "ip":Ljava/lang/String;
    .end local v5    # "netType":I
    .end local v6    # "whereClause":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IPR_IpRankDao"

    const-string/jumbo v3, "updateIpRankModel"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 372
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDao;
    .end local p1    # "ipRankModel":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

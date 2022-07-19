.class public Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
.super Ljava/lang/Object;
.source "HttpdnsDBService.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    .line 37
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAmdcHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    const-string/jumbo v1, "mugw.alipay.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    const-string/jumbo v1, "mdgw.alipay.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map$Entry;)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "entry"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)Z"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    return v1

    .line 165
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->isHostInDBIngoreNetType(Ljava/lang/String;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeIpInfoFromDB(Ljava/lang/String;)V

    move v0, v1

    .local v0, "tempNetType":I
    goto :goto_0

    .line 166
    .end local v0    # "tempNetType":I
    :cond_1
    move v0, v1

    .line 173
    .restart local v0    # "tempNetType":I
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 175
    const/4 v2, 0x1

    .local v2, "j":I
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    const/4 v5, 0x4

    const-string v6, "HTTP_DNS_HttpdnsDBService"

    if-gt v2, v5, :cond_3

    .line 176
    move v0, v2

    .line 177
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v5

    .line 178
    .local v5, "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_2

    .line 179
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v4, "values":Landroid/content/ContentValues;
    move-object v4, v8

    const-string v9, "domain"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "ip"

    aget-object v9, v5, v7

    iget-object v9, v9, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v8, "ipType"

    aget-object v9, v5, v7

    iget v9, v9, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string/jumbo v8, "port"

    aget-object v9, v5, v7

    iget v9, v9, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->port:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string/jumbo v8, "time"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string/jumbo v8, "ttl"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string/jumbo v8, "netType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string/jumbo v8, "ttd"

    const/16 v9, 0x15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v8, "httpdns"

    invoke-virtual {p1, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "process hostName = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",netType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 175
    .end local v5    # "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v7    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 193
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    const/4 v1, 0x1

    return v1

    .line 195
    :catchall_0
    move-exception v2

    .line 196
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processAmdc ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    .end local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    nop

    .line 200
    return v1

    .line 198
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearHttpdnsOriginal()V
    .locals 5

    monitor-enter p0

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 258
    move-object v0, v1

    const-string v2, "delete from httpdns"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-void

    .line 259
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :catchall_0
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearHttpdnsOriginal ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    .end local v1    # "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 263
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 262
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 263
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 254
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllIPFromDB(I)Ljava/util/Map;
    .locals 24
    .param p1, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 402
    :try_start_0
    const-string v0, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllIPFromDB ,netType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 406
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v0, "result":Ljava/util/Map;
    iget-object v6, v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v4, v6

    .line 409
    :try_start_2
    const-string/jumbo v6, "select domain,ip,ipType,port,time,ttl,cname,ttd from httpdns where netType = ?"

    .line 411
    .local v6, "sql":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v4, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v3, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 420
    :goto_0
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v11, :cond_2

    .line 421
    :try_start_4
    const-string v11, "domain"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "domain":Ljava/lang/String;
    const-string v12, "ip"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "ip":Ljava/lang/String;
    const-string v13, "ipType"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 424
    .local v13, "ipType":I
    const-string/jumbo v14, "port"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 425
    .local v14, "port":I
    const-string/jumbo v15, "time"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 426
    .local v17, "time":J
    const-string/jumbo v15, "ttl"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 427
    .local v19, "ttl":J
    const-string v15, "cname"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 428
    .local v15, "cname":Ljava/lang/String;
    const-string/jumbo v5, "ttd"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 430
    .local v5, "ttd":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 431
    new-instance v10, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v10}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 432
    .local v8, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v8, v10

    move-object/from16 v23, v8

    move-wide/from16 v7, v17

    .end local v8    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .end local v17    # "time":J
    .local v7, "time":J
    .local v23, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    invoke-virtual {v10, v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 433
    move-object/from16 v17, v3

    move-object v10, v4

    move-object/from16 v18, v6

    move-wide/from16 v3, v19

    move-object/from16 v6, v23

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v19    # "ttl":J
    .end local v23    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .local v3, "ttl":J
    .local v6, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v17, "cursor":Landroid/database/Cursor;
    .local v18, "sql":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v6, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 434
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 435
    invoke-virtual {v6, v15}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setCname(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtd(I)V

    .line 437
    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object v8, v6

    move-object v4, v10

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v7, 0x1

    const/4 v10, 0x0

    .end local v6    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    goto/16 :goto_0

    .line 440
    .end local v7    # "time":J
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "sql":Ljava/lang/String;
    .local v3, "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v6, "sql":Ljava/lang/String;
    .local v17, "time":J
    .restart local v19    # "ttl":J
    :cond_0
    move-object v10, v4

    move-wide/from16 v7, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-wide/from16 v3, v19

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "sql":Ljava/lang/String;
    .end local v19    # "ttl":J
    .local v3, "ttl":J
    .restart local v7    # "time":J
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v17, "cursor":Landroid/database/Cursor;
    .restart local v18    # "sql":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-direct {v6, v12, v13, v14}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;II)V

    .line 442
    .local v6, "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    move/from16 v19, v13

    .end local v13    # "ipType":I
    .local v19, "ipType":I
    new-instance v13, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v13}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 443
    .local v9, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v9, v13

    invoke-virtual {v13, v12}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v9, v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 445
    invoke-virtual {v9, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 446
    move-wide/from16 v22, v3

    const/4 v13, 0x1

    .end local v3    # "ttl":J
    .local v22, "ttl":J
    new-array v3, v13, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v9, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 447
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 448
    invoke-virtual {v9, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtd(I)V

    .line 451
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 452
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 454
    invoke-static {v3, v9}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->mergerHttpdnsIp(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v3

    move-object v9, v3

    .line 456
    :cond_1
    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 457
    move-object v8, v6

    move-object v4, v10

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v7, 0x1

    const/4 v10, 0x0

    .end local v6    # "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v9    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    goto/16 :goto_0

    .line 461
    .end local v0    # "result":Ljava/util/Map;
    .end local v5    # "ttd":I
    .end local v7    # "time":J
    .end local v11    # "domain":Ljava/lang/String;
    .end local v12    # "ip":Ljava/lang/String;
    .end local v14    # "port":I
    .end local v15    # "cname":Ljava/lang/String;
    .end local v18    # "sql":Ljava/lang/String;
    .end local v19    # "ipType":I
    .end local v22    # "ttl":J
    :catchall_0
    move-exception v0

    move-object v4, v10

    move-object/from16 v3, v17

    goto :goto_1

    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v10, v4

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 460
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "result":Ljava/util/Map;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v6, "sql":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v3

    move-object v10, v4

    move-object/from16 v18, v6

    .line 464
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "sql":Ljava/lang/String;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "sql":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 465
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 468
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :cond_3
    if-eqz v10, :cond_4

    .line 469
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 460
    :cond_4
    monitor-exit p0

    return-object v0

    .line 461
    .end local v0    # "result":Ljava/util/Map;
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v18    # "sql":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object v10, v4

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3
    move-exception v0

    move-object v10, v4

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    .line 462
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_7
    const-string v5, "HTTP_DNS_HttpdnsDBService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAllIPFromDB ex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 464
    .end local v0    # "ex":Ljava/lang/Throwable;
    if-eqz v3, :cond_5

    .line 465
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_5
    if-eqz v4, :cond_6

    .line 469
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 473
    :cond_6
    monitor-exit p0

    const/4 v5, 0x0

    return-object v5

    .line 464
    :catchall_5
    move-exception v0

    if-eqz v3, :cond_7

    .line 465
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_7
    if-eqz v4, :cond_8

    .line 469
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 470
    :cond_8
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 401
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "netType":I
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertIpinfo2DB(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;I)V
    .locals 9
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "ipInfo"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .param p3, "netType"    # I

    monitor-enter p0

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "HTTP_DNS_HttpdnsDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertIpinfo2DB,hostName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,ipInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->isHostInDB(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 61
    .local v2, "isHostInDB":Z
    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeIpInfoFromDB(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v2    # "isHostInDB":Z
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 65
    .restart local v2    # "isHostInDB":Z
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 66
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 67
    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v3

    .line 68
    .local v4, "values":Landroid/content/ContentValues;
    move-object v4, v1

    const-string v5, "domain"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "time"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string/jumbo v1, "ttl"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string/jumbo v1, "netType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v1, "cname"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "ttd"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "httpdns"

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    nop

    .end local v4    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 76
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v1

    .line 78
    .local v1, "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v4, 0x0

    move-object v5, v3

    .local v4, "i":I
    :goto_1
    array-length v6, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v4, v6, :cond_2

    .line 79
    :try_start_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v5, "values":Landroid/content/ContentValues;
    move-object v5, v6

    const-string v7, "domain"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v6, "ip"

    aget-object v7, v1, v4

    iget-object v7, v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "ipType"

    aget-object v7, v1, v4

    iget v7, v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string/jumbo v6, "port"

    aget-object v7, v1, v4

    iget v7, v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->port:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string/jumbo v6, "time"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string/jumbo v6, "ttl"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string/jumbo v6, "netType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string/jumbo v6, "ttd"

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v6, "httpdns"

    invoke-virtual {v0, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    nop

    .end local v5    # "values":Landroid/content/ContentValues;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v2    # "isHostInDB":Z
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 95
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :catchall_1
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    :try_start_7
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertIpinfo2DB ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 94
    .end local v1    # "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 95
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    return-void

    .line 98
    :cond_3
    monitor-exit p0

    return-void

    .line 94
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    .line 95
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 54
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "hostName":Ljava/lang/String;
    .end local p2    # "ipInfo":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .end local p3    # "netType":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isHostInDB(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netType"    # I

    const-string v0, "HTTP_DNS_HttpdnsDBService"

    const/4 v1, 0x0

    .line 277
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 279
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const-string v4, "isHostInDB : host is null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v3

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 284
    const-string/jumbo v4, "select ttl from httpdns where domain = ? and netType = ? "

    .line 285
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 286
    move-object v2, v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_2

    .line 295
    if-eqz v2, :cond_1

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_1
    return v3

    .line 295
    :cond_2
    if-eqz v2, :cond_3

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_3
    return v7

    .line 291
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 292
    .local v4, "ex":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isHostInDB ex : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    if-eqz v2, :cond_4

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_4
    return v3

    .line 295
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_5
    throw v0
.end method

.method public isHostInDBIngoreNetType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    const-string v0, "HTTP_DNS_HttpdnsDBService"

    const/4 v1, 0x0

    .line 305
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 307
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    const-string v4, "isHostInDBIngoreNetType : host is null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return v3

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 312
    const-string/jumbo v4, "select ttl from httpdns where domain = ?"

    .line 313
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    move-object v2, v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_2

    .line 323
    if-eqz v2, :cond_1

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_1
    return v3

    .line 323
    :cond_2
    if-eqz v2, :cond_3

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_3
    return v5

    .line 319
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 320
    .local v4, "ex":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isHostInDBIngoreNetType ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    if-eqz v2, :cond_4

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_4
    return v3

    .line 323
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_5
    throw v0
.end method

.method public declared-synchronized queryIpInfoFromDB(Ljava/lang/String;I)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 22
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "mNetType"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 478
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    move-object v4, v3

    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v5, v0

    .line 481
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v5, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_0

    .line 482
    :try_start_1
    const-string v0, "HTTP_DNS_HttpdnsDBService"

    const-string/jumbo v6, "queryIpInfpFromDB : domain is null"

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    monitor-exit p0

    return-object v3

    .line 536
    :catchall_0
    move-exception v0

    move/from16 v8, p2

    goto/16 :goto_1

    .line 485
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v0, "result":Ljava/util/Map;
    iget-object v6, v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v4, v6

    .line 488
    :try_start_3
    const-string/jumbo v6, "select ip,ipType,port,time,ttl,cname,ttd from httpdns where domain = ? and netType = ?"

    .line 490
    .local v6, "sql":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v5, v7

    move-object v7, v3

    .line 499
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v9, :cond_3

    .line 500
    :try_start_4
    const-string v9, "ip"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 501
    .local v9, "ip":Ljava/lang/String;
    const-string v11, "ipType"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 502
    .local v11, "ipType":I
    const-string/jumbo v12, "port"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 503
    .local v12, "port":I
    const-string/jumbo v13, "time"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 504
    .local v13, "time":J
    const-string/jumbo v15, "ttl"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 505
    .local v17, "ttl":J
    const-string v15, "cname"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 506
    .local v15, "cname":Ljava/lang/String;
    const-string/jumbo v3, "ttd"

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 508
    .local v3, "ttd":I
    new-instance v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 509
    .local v7, "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v7, v8

    invoke-virtual {v8, v13, v14}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 510
    move/from16 v20, v11

    move-wide/from16 v10, v17

    .end local v11    # "ipType":I
    .end local v17    # "ttl":J
    .local v10, "ttl":J
    .local v20, "ipType":I
    invoke-virtual {v7, v10, v11}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 511
    move/from16 v8, p2

    :try_start_5
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 512
    invoke-virtual {v7, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtd(I)V

    .line 514
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v18, :cond_1

    .line 515
    :try_start_6
    invoke-virtual {v7, v15}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setCname(Ljava/lang/String;)V

    .line 516
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_0

    .line 536
    .end local v0    # "result":Ljava/util/Map;
    .end local v3    # "ttd":I
    .end local v6    # "sql":Ljava/lang/String;
    .end local v7    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .end local v9    # "ip":Ljava/lang/String;
    .end local v10    # "ttl":J
    .end local v12    # "port":I
    .end local v13    # "time":J
    .end local v15    # "cname":Ljava/lang/String;
    .end local v20    # "ipType":I
    :catchall_1
    move-exception v0

    goto/16 :goto_1

    .line 519
    .restart local v0    # "result":Ljava/util/Map;
    .restart local v3    # "ttd":I
    .restart local v6    # "sql":Ljava/lang/String;
    .restart local v7    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .restart local v9    # "ip":Ljava/lang/String;
    .restart local v10    # "ttl":J
    .restart local v12    # "port":I
    .restart local v13    # "time":J
    .restart local v15    # "cname":Ljava/lang/String;
    .restart local v20    # "ipType":I
    :cond_1
    move/from16 v18, v3

    .end local v3    # "ttd":I
    .local v18, "ttd":I
    :try_start_7
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v21, v4

    move/from16 v4, v20

    .end local v20    # "ipType":I
    .local v4, "ipType":I
    .local v21, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    invoke-direct {v3, v9, v4, v12}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;II)V

    .line 520
    .local v3, "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    invoke-virtual {v7, v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 521
    move/from16 v20, v4

    move-object/from16 v17, v6

    const/4 v4, 0x1

    .end local v4    # "ipType":I
    .end local v6    # "sql":Ljava/lang/String;
    .local v17, "sql":Ljava/lang/String;
    .restart local v20    # "ipType":I
    new-array v6, v4, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    const/16 v19, 0x0

    aput-object v3, v6, v19

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 523
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 524
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 525
    invoke-static {v6, v7}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->mergerHttpdnsIp(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v6

    move-object v7, v6

    .line 527
    :cond_2
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 529
    move-object/from16 v6, v17

    move-object/from16 v4, v21

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .end local v3    # "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v7    # "httpdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    goto/16 :goto_0

    .line 536
    .end local v0    # "result":Ljava/util/Map;
    .end local v9    # "ip":Ljava/lang/String;
    .end local v10    # "ttl":J
    .end local v12    # "port":I
    .end local v13    # "time":J
    .end local v15    # "cname":Ljava/lang/String;
    .end local v17    # "sql":Ljava/lang/String;
    .end local v18    # "ttd":I
    .end local v20    # "ipType":I
    :catchall_2
    move-exception v0

    move-object/from16 v4, v21

    goto :goto_1

    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v21, v4

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 535
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "result":Ljava/util/Map;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "sql":Ljava/lang/String;
    :cond_3
    move/from16 v8, p2

    move-object/from16 v21, v4

    move-object/from16 v17, v6

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "sql":Ljava/lang/String;
    .restart local v17    # "sql":Ljava/lang/String;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 539
    if-eqz v5, :cond_4

    .line 540
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 535
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :cond_4
    monitor-exit p0

    return-object v3

    .line 536
    .end local v0    # "result":Ljava/util/Map;
    .end local v17    # "sql":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v4, v21

    goto :goto_1

    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_6
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v21, v4

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_7
    move-exception v0

    move/from16 v8, p2

    .line 537
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_b
    const-string v3, "HTTP_DNS_HttpdnsDBService"

    const-string/jumbo v6, "queryIpInfpFromDB ex:"

    invoke-static {v3, v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 539
    .end local v0    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    .line 540
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 548
    :cond_5
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 539
    :catchall_8
    move-exception v0

    if-eqz v5, :cond_6

    .line 540
    :try_start_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_6
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 477
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local p1    # "domain":Ljava/lang/String;
    .end local p2    # "mNetType":I
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIpInfoFromDB(Ljava/lang/String;)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "HTTP_DNS_HttpdnsDBService"

    const-string/jumbo v2, "removeIpInfoFromDB : host is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 339
    const-string v1, "delete from httpdns where domain = ?"

    .line 340
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v1

    .line 344
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeIpinfoFromDB ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 345
    :catchall_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 333
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    .end local p1    # "host":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIpInfoFromDB(Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netType"    # I

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 357
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "HTTP_DNS_HttpdnsDBService"

    const-string/jumbo v2, "removeIpInfoFromDB : host is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 362
    const-string v1, "delete from httpdns where domain = ? and netType = ? "

    .line 363
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v1

    .line 367
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeIpinfoFromDB ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 368
    :catchall_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 356
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "netType":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSingleIpInfoFromDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "netType"    # I

    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 381
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 382
    monitor-exit p0

    return-void

    .line 384
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 385
    const-string v1, "delete from httpdns where domain = ? and ip = ? and netType = ? "

    .line 386
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeSingleIpInfoFromDB,host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",remove success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeSingleIpInfoFromDB ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 391
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "ip":Ljava/lang/String;
    .end local p3    # "netType":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeIp2DB(Ljava/util/Map;I)V
    .locals 10
    .param p1, "result"    # Ljava/util/Map;
    .param p2, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-direct {p0, v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map$Entry;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->isHostInDB(Ljava/lang/String;I)Z

    move-result v6

    .line 119
    if-eqz v6, :cond_1

    .line 120
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeIpInfoFromDB(Ljava/lang/String;I)V

    .line 123
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v3, "values":Landroid/content/ContentValues;
    move-object v3, v6

    const-string v7, "domain"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v6, "time"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string/jumbo v6, "ttl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string/jumbo v6, "netType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v6, "cname"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v6, "ttd"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v6, "httpdns"

    invoke-virtual {v0, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 132
    nop

    .end local v3    # "values":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 133
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v3

    .line 134
    .local v3, "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 135
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v4, "values":Landroid/content/ContentValues;
    move-object v4, v7

    const-string v8, "domain"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v7, "ip"

    aget-object v8, v3, v6

    iget-object v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v7, "ipType"

    aget-object v8, v3, v6

    iget v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v7, "port"

    aget-object v8, v3, v6

    iget v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->port:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string/jumbo v7, "time"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string/jumbo v7, "ttl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string/jumbo v7, "netType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string/jumbo v7, "ttd"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v7, "httpdns"

    invoke-virtual {v0, v7, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    nop

    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 147
    .end local v3    # "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v6    # "i":I
    :cond_3
    :goto_2
    const-string v6, "HTTP_DNS_HttpdnsDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "storeIp2DB hostName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v5    # "entry":Ljava/util/Map$Entry;
    goto/16 :goto_0

    .line 149
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 152
    :cond_4
    if-eqz v0, :cond_5

    .line 153
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-void

    .line 149
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :catchall_1
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "storeIp2DB ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    .end local v1    # "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 153
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-void

    .line 156
    :cond_5
    monitor-exit p0

    return-void

    .line 152
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_6

    .line 153
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 107
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "result":Ljava/util/Map;
    .end local p2    # "netType":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIp2DB(Ljava/util/Map;I)V
    .locals 10
    .param p1, "result"    # Ljava/util/Map;
    .param p2, "netType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 207
    const/4 v0, 0x0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 212
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->isHostInDB(Ljava/lang/String;I)Z

    move-result v6

    .line 213
    if-eqz v6, :cond_0

    .line 214
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->removeIpInfoFromDB(Ljava/lang/String;I)V

    .line 217
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;->b:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    .line 218
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v3, "values":Landroid/content/ContentValues;
    move-object v3, v6

    const-string v7, "domain"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v6, "time"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string/jumbo v6, "ttl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string/jumbo v6, "netType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v6, "cname"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getCname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v6, "ttd"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v6, "httpdns"

    invoke-virtual {v0, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 227
    nop

    .end local v3    # "values":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 228
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v3

    .line 229
    .local v3, "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 230
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v4, "values":Landroid/content/ContentValues;
    move-object v4, v7

    const-string v8, "domain"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v7, "ip"

    aget-object v8, v3, v6

    iget-object v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "ipType"

    aget-object v8, v3, v6

    iget v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string/jumbo v7, "port"

    aget-object v8, v3, v6

    iget v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->port:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string/jumbo v7, "time"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string/jumbo v7, "ttl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string/jumbo v7, "netType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string/jumbo v7, "ttd"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v7, "httpdns"

    invoke-virtual {v0, v7, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 229
    nop

    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 242
    .end local v3    # "ipEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v6    # "i":I
    :cond_2
    :goto_2
    const-string v6, "HTTP_DNS_HttpdnsDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateIp2DB hostName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v5    # "entry":Ljava/util/Map$Entry;
    goto/16 :goto_0

    .line 244
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 247
    :cond_3
    if-eqz v0, :cond_4

    .line 248
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBService;
    :catchall_1
    move-exception v1

    .line 245
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    const-string v2, "HTTP_DNS_HttpdnsDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateIp2DB ex :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 247
    .end local v1    # "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 248
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-void

    .line 251
    :cond_4
    monitor-exit p0

    return-void

    .line 247
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    .line 248
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 206
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "result":Ljava/util/Map;
    .end local p2    # "netType":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

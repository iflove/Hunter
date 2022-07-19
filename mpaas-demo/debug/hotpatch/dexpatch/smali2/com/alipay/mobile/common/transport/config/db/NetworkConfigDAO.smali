.class public Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
.super Ljava/lang/Object;
.source "NetworkConfigDAO.java"


# static fields
.field static networkConfigDAORef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    .locals 3

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->networkConfigDAORef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->networkConfigDAORef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    return-object v0

    .line 30
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->networkConfigDAORef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->networkConfigDAORef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    return-object v0

    .line 32
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;-><init>()V

    .line 33
    .local v1, "networkConfigDAO":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->networkConfigDAORef:Ljava/lang/ref/SoftReference;

    .line 34
    monitor-exit v0

    return-object v1

    .line 36
    .end local v1    # "networkConfigDAO":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "closeable"    # Landroid/database/Cursor;

    monitor-enter p0

    .line 184
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 186
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "NetworkConfigDAO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    .end local p1    # "closeable":Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 191
    .restart local p1    # "closeable":Landroid/database/Cursor;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqlLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter p0

    .line 174
    if-eqz p1, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "NetworkConfigDAO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    .end local p1    # "sqlLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 181
    .restart local p1    # "sqlLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized countConfigByKey(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "countCursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 139
    .local v1, "whereSwitchKey":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 140
    const-string v3, "SELECT id  FROM nw_conf_mng_table WHERE switch_key = ? "

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 141
    move-object v0, v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 142
    .local v2, "count":I
    const-string v3, "NetworkConfigDAO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "countConfigByKey. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 143
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_0
    monitor-exit p0

    return v2

    .line 144
    .end local v1    # "whereSwitchKey":[Ljava/lang/String;
    .end local v2    # "count":I
    :catchall_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "NetworkConfigDAO"

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "countConfigByKey fail. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 151
    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 147
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V

    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    .end local v0    # "countCursor":Landroid/database/Cursor;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteConfig(Ljava/lang/String;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, " switch_key = ? "

    .line 158
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 159
    .local v2, "whereArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 160
    move-object v0, v3

    const-string/jumbo v4, "nw_conf_mng_table"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, "delete":I
    const-string v4, "NetworkConfigDAO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteConfig. update finish. rows: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_0
    monitor-exit p0

    return v3

    .line 163
    .end local v1    # "whereClause":Ljava/lang/String;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "delete":I
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "NetworkConfigDAO"

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteConfig fail. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 167
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 166
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 50
    .local v1, "whereSwitchKey":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 51
    const-string v3, "SELECT *  FROM nw_conf_mng_table WHERE switch_key = ? "

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 53
    move-object v0, v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 54
    const-string v2, "NetworkConfigDAO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConfig. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 55
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 58
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    const-string/jumbo v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "value":Ljava/lang/String;
    const-string v3, "NetworkConfigDAO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getConfig. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    nop

    .line 68
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :cond_2
    monitor-exit p0

    return-object v2

    .line 64
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v2, ""

    .line 68
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    :cond_4
    monitor-exit p0

    return-object v2

    .line 65
    .end local v1    # "whereSwitchKey":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string v2, "NetworkConfigDAO"

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getConfig. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V

    .line 72
    :cond_5
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    .line 68
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/Cursor;)V

    :cond_6
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 46
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertConfigByKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 87
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 88
    .local v3, "contentValues":Landroid/content/ContentValues;
    move-object v3, v1

    const-string/jumbo v4, "switch_key"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "value"

    invoke-virtual {v3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    .local v4, "gmt":J
    const-string v1, "gmt_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "gmt_created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string/jumbo v1, "nw_conf_mng_table"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 95
    const-string v1, "NetworkConfigDAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "insertConfigByKey finish. key:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 97
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "gmt":J
    :catchall_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "NetworkConfigDAO"

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertConfigByKey fail. key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 101
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 100
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 101
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isExistsConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->countConfigByKey(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized saveOrUpdateConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->isExistsConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->updateConfigByKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 79
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->insertConfigByKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 75
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateConfigByKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "switch_key = ?"

    .line 111
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 113
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v0, v5

    .line 115
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    .line 116
    .local v6, "contentValues":Landroid/content/ContentValues;
    move-object v6, v5

    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v5, "gmt_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string/jumbo v5, "nw_conf_mng_table"

    invoke-virtual {v0, v5, v6, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 119
    .local v5, "rows":I
    const-string v7, "NetworkConfigDAO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateConfigByKey. update finish. rows: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-lez v5, :cond_0

    const/4 v1, 0x1

    .line 124
    :cond_0
    if-eqz v0, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;
    :cond_1
    monitor-exit p0

    return v1

    .line 121
    .end local v2    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "rows":I
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "NetworkConfigDAO"

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateConfigByKey fail. key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 125
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    :cond_2
    monitor-exit p0

    return v1

    .line 124
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

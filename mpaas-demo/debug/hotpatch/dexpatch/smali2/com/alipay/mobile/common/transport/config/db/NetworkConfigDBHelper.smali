.class public Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NetworkConfigDBHelper.java"


# static fields
.field public static final TB_NAME:Ljava/lang/String; = "nw_conf_mng_table"

.field private static a:Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    const-string v0, "DROP TABLE IF EXISTS nw_conf_mng_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE TABLE `nw_conf_mng_table` ( `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,  `switch_key` VARCHAR(500) NOT NULL UNIQUE ,  `value` TEXT ,  `gmt_modified` bigint NOT NULL ,  `gmt_created` bigint NOT NULL );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->a:Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 31
    monitor-exit v0

    return-object v1

    .line 34
    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->a:Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    const-string/jumbo v2, "nw_conf_mng.db"

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    sput-object v1, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->a:Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    const-string v0, "NetworkConfigDBHelper"

    const-string/jumbo v1, "onCreate."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 68
    if-ne p2, p3, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUpgrade from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkConfigDBHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

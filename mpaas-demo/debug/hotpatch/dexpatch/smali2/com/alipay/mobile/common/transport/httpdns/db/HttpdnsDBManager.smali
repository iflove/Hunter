.class public Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HttpdnsDBManager.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    const-string v0, "DROP TABLE IF EXISTS httpdns"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "create table httpdns (_id integer primary key autoincrement,domain varchar(32),ip varchar(50),ipType integer,port integer,time bigint,ttl bigint,netType integer,cname varchar(64),ttd integer)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->a:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    const-string v2, "httpdns.db"

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->a:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;

    .line 37
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->a:Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    const-string v0, "HTTP_DNS_DBManager"

    const-string/jumbo v1, "onCreate."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUpgrade from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_DNS_DBManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eq p3, p2, :cond_0

    .line 66
    :try_start_0
    const-string v0, "drop table if exists httpdns_original"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "drop table if exists httpdns"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUpgrade exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void

    .line 72
    :cond_0
    :goto_0
    return-void
.end method

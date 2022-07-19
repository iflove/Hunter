.class public Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IpRankDBHelper.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    const-string v0, "drop table if exists lbs"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "create table lbs(_id integer primary key autoincrement,latlng varchar(32))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    const-string v0, "DROP TABLE IF EXISTS ip_rank"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE ip_rank (_id integer primary key autoincrement,lbs_id integer,domain varchar(32),ip varchar(50),time bigint,ttl bigint,netType integer,rtt integer,successCount integer,failCount integer,feedbackSuccCount integer,feedbackSuccTime bigint,lastSuccTime bigint,grade float)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    const-string v2, "iprank.db"

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;

    .line 32
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->a:Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
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

    .line 41
    const-string v0, "IPR_IPRDBHelper"

    const-string/jumbo v1, "onCreate."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/iprank/dao/IpRankDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUpgrade from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPR_IPRDBHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

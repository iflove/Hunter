.class public Lcom/alipay/mobile/common/transport/httpdns/db/HttpdnsDBSql;
.super Ljava/lang/Object;
.source "HttpdnsDBSql.java"


# static fields
.field public static final CREATE_HTTPDNS:Ljava/lang/String; = "create table httpdns (_id integer primary key autoincrement,domain varchar(32),ip varchar(50),ipType integer,port integer,time bigint,ttl bigint,netType integer,cname varchar(64),ttd integer)"

.field public static final Httpdns_tableName:Ljava/lang/String; = "httpdns"

.field public static final ISHOSTINDB_INGORE_NETTYPE:Ljava/lang/String; = "select ttl from httpdns where domain = ?"

.field public static final REMOVEIPINFOFROMDB_INGORE_NETTYPE:Ljava/lang/String; = "delete from httpdns where domain = ?"

.field public static final clearHttpdns:Ljava/lang/String; = "delete from httpdns"

.field public static final dropOldTable:Ljava/lang/String; = "drop table if exists httpdns_original"

.field public static final dropTable:Ljava/lang/String; = "drop table if exists httpdns"

.field public static final getAllIPFromDB:Ljava/lang/String; = "select domain,ip,ipType,port,time,ttl,cname,ttd from httpdns where netType = ?"

.field public static final isHostInDB:Ljava/lang/String; = "select ttl from httpdns where domain = ? and netType = ? "

.field public static final queryIpInfoFromDB:Ljava/lang/String; = "select ip,ipType,port,time,ttl,cname,ttd from httpdns where domain = ? and netType = ?"

.field public static final removeIpInfoFromDB:Ljava/lang/String; = "delete from httpdns where domain = ? and netType = ? "

.field public static final removeSingleIpInfoFromDB:Ljava/lang/String; = "delete from httpdns where domain = ? and ip = ? and netType = ? "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

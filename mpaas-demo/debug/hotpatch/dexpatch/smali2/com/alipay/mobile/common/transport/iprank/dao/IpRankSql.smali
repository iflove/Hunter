.class public Lcom/alipay/mobile/common/transport/iprank/dao/IpRankSql;
.super Ljava/lang/Object;
.source "IpRankSql.java"


# static fields
.field public static final CLEAR_IPRANK:Ljava/lang/String; = "delete from ip_rank"

.field public static final CREATE_IP_RANK:Ljava/lang/String; = "CREATE TABLE ip_rank (_id integer primary key autoincrement,lbs_id integer,domain varchar(32),ip varchar(50),time bigint,ttl bigint,netType integer,rtt integer,successCount integer,failCount integer,feedbackSuccCount integer,feedbackSuccTime bigint,lastSuccTime bigint,grade float)"

.field public static final CREATE_LBS_TABLE:Ljava/lang/String; = "create table lbs(_id integer primary key autoincrement,latlng varchar(32))"

.field public static final CREATE_LOCATION:Ljava/lang/String; = "create table location(_id integer primary key autoincrement,bssid varchar(20),cellbs varchar(20))"

.field public static final DELETE_FINALLY:Ljava/lang/String; = "delete from ip_rank where _id in (select _id from ip_rank order by failCount desc limit 0,?)"

.field public static final DELETE_FROM_IPRANK:Ljava/lang/String; = "delete from ip_rank where (failCount+0.1)/(successCount+0.1) > ?"

.field public static final DELETE_SECOND:Ljava/lang/String; = "delete from ip_rank where _id in (select _id from ip_rank where _id in (select _id from ip_rank  where _id in (select _id from ip_rank order by feedbackSuccTime asc limit 0,40) order by feedbackSuccCount asc limit 0,30) order by failCount desc limit 0,20)"

.field public static final GET_ALL_IPRANK_MODELS:Ljava/lang/String; = "select domain,ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where lbs_id = ? and netType = ?"

.field public static final GET_IPRANK_MODEL:Ljava/lang/String; = "select ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where domain = ?  and ip = ? and lbs_id = ? and netType = ?"

.field public static final GET_IPRANK_MODELS:Ljava/lang/String; = "select ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank where domain = ?  and lbs_id = ? and netType = ?"

.field public static final GET_LBSMODELS_FROM_TABLE:Ljava/lang/String; = "select _id,latlng from lbs"

.field public static final GET_LBS_ID:Ljava/lang/String; = "select _id from lbs where latlng = ?"

.field public static final GET_LBS_TABLE_SIZE:Ljava/lang/String; = "select count(*) from lbs"

.field public static final GET_TABLE_SIZE:Ljava/lang/String; = "select count(*) from ip_rank"

.field public static final Get_GiVEN_NUM_IPRANK_MODELS:Ljava/lang/String; = "select domain,ip,time,ttl,rtt,successCount,failCount,feedbackSuccCount,feedbackSuccTime,lastSuccTime,grade from ip_rank  where lbs_id = ? and netType = ? order by lastSuccTime desc limit 0,?"

.field public static final IP_RANK_TABLE:Ljava/lang/String; = "ip_rank"

.field public static final LBS_TABLE:Ljava/lang/String; = "lbs"

.field public static final REMOVEIPSFROMDB:Ljava/lang/String; = "delete from ip_rank where domain = ?"

.field public static final REMOVEIPS_NOTIN_LOCALDNS:Ljava/lang/String; = "delete from ip_rank where domain = ? and lbs_id = ? and netType = ? and ip not in "

.field public static final REMOVE_IPMODEL_FROMDB:Ljava/lang/String; = "delete from ip_rank where domain = ? and ip = ? and netType = ? and lbs_id = ?"

.field public static final REMOVE_SINGLE_IP_FROMDB:Ljava/lang/String; = "delete from ip_rank where domain = ? and ip = ?"

.field public static final isIpInDB:Ljava/lang/String; = "select ip from ip_rank where domain = ? and ip = ? and netType = ? and lbs_id = ?"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

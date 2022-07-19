.class public Lcom/alipay/mobile/common/transport/config/db/SqlConstants;
.super Ljava/lang/Object;
.source "SqlConstants.java"


# static fields
.field public static final COUNT_BY_KEY_SQL:Ljava/lang/String; = "SELECT id  FROM nw_conf_mng_table WHERE switch_key = ? "

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE `nw_conf_mng_table` ( `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,  `switch_key` VARCHAR(500) NOT NULL UNIQUE ,  `value` TEXT ,  `gmt_modified` bigint NOT NULL ,  `gmt_created` bigint NOT NULL );"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS nw_conf_mng_table"

.field public static final QUERY_BY_KEY_SQL:Ljava/lang/String; = "SELECT *  FROM nw_conf_mng_table WHERE switch_key = ? "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

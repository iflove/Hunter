.class public Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;
.super Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
.source "H5DevDBOpenHelper.java"


# direct methods
.method constructor <init>()V
    .locals 4

    .line 15
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nebula_app_dev.db"

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "H5DBHelper_dev"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    const-string/jumbo v0, "nebula_app_dev.db"

    return-object v0
.end method

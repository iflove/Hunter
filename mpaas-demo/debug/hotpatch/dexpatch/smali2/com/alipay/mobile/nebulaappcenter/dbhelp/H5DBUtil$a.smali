.class Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$a;
.super Ljava/lang/Object;
.source "H5DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$a;->a:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$a;->a:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-object v0
.end method

.class public Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;
.super Ljava/lang/Object;
.source "LbsInfoManagerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtLbsInfo()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, ""

    return-object v0
.end method

.method public getKeyLBSInfo()Ljava/lang/String;
    .locals 1

    .line 10
    const-string v0, ""

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocationtime()Ljava/lang/Long;
    .locals 2

    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

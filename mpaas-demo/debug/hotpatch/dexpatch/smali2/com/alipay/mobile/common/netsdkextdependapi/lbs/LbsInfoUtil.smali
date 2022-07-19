.class public Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;
.super Ljava/lang/Object;
.source "LbsInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    return-object v0
.end method

.method public static getExtLbsInfo()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;->getExtLbsInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyLBSInfo()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;->getKeyLBSInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLatitude()D
    .locals 2

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocationtime()Ljava/lang/Long;
    .locals 1

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;->getLocationtime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLongitude()D
    .locals 2

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

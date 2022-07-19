.class public final Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "DeviceInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;
    .locals 1

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManagerFactory;->getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManagerFactory;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManagerFactory;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;

    return-object v0
.end method

.method public static final getClientId()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLatitude()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;->getLatitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLongitude()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoManager;->getLongitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

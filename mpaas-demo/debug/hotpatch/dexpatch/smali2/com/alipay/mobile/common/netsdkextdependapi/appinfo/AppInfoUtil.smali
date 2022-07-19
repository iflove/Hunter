.class public final Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;
.super Ljava/lang/Object;
.source "AppInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerFactory;->getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerFactory;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerFactory;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    return-object v0
.end method

.method public static final getProductId()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getProductVersion()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getReleaseType()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getTrackerID()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->getTrackerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDebuggable()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public static final isReleaseTypeDev()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->isReleaseTypeDev()Z

    move-result v0

    return v0
.end method

.method public static final isReleaseTypeRC()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManager;->isReleaseTypeRC()Z

    move-result v0

    return v0
.end method

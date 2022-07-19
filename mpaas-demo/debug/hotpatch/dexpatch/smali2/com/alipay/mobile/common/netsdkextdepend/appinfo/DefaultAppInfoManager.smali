.class public Lcom/alipay/mobile/common/netsdkextdepend/appinfo/DefaultAppInfoManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerAdapter;
.source "DefaultAppInfoManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackerID()Ljava/lang/String;
    .locals 2

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "actionToken"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public isDebuggable()Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public isReleaseTypeDev()Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdepend/appinfo/DefaultAppInfoManager;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isReleaseTypeRC()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdepend/appinfo/DefaultAppInfoManager;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

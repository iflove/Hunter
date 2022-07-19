.class public Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;
.super Ljava/lang/Object;
.source "H5CdpAdvertisementController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5CdpAdvertisement"

.field private static enable:Ljava/lang/Boolean;

.field private static innerSiteData:F

.field private static outerSiteData:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->innerSiteData:F

    .line 17
    sput v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->outerSiteData:F

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAdvertisement(Landroid/content/Intent;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 21
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v0

    .line 22
    .local v0, "hashSet":Ljava/util/HashSet;
    const-string v1, "adId"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "adId":Ljava/lang/String;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    .line 24
    .local v2, "disClaimerProvider":Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enableShow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    const-string v3, "LOCAL_H5Page"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    const-string v1, "disclaimer"

    .line 34
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 35
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 37
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-le v3, v4, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 39
    const-string v3, "dataFlow"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "close"

    const-string v6, "H5CdpAdvertisement"

    if-eqz v3, :cond_4

    .line 40
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->showDataFlowTip(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "and show dataFlow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 44
    :cond_4
    const-string v3, "disclaimer"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 45
    invoke-interface {v2, p1, v4}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "and show disclaimer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_5
    return-void

    .line 25
    :cond_6
    :goto_0
    return-void
.end method

.method private static enableShow()Z
    .locals 7

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 54
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 55
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 59
    :cond_0
    const-string v0, "h5_dataFlowConfig"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 64
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 65
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "enable"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "yes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    .line 71
    :goto_0
    const-string v3, "innerSite"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 72
    .local v3, "innerSite":F
    const-string/jumbo v4, "outerSite"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 73
    .local v4, "outerSite":F
    const/high16 v5, 0x44800000    # 1024.0f

    mul-float v6, v3, v5

    mul-float v6, v6, v5

    sput v6, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->innerSiteData:F

    .line 74
    mul-float v6, v4, v5

    mul-float v6, v6, v5

    sput v6, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->outerSiteData:F

    .line 76
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "innerSite":F
    .end local v4    # "outerSite":F
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static showDataFlowTip(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 80
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    .line 81
    .local v0, "dataExceededProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 82
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x1

    sget v3, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->innerSiteData:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->showWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)V

    return-void

    .line 89
    :cond_1
    const/4 v1, 0x2

    sget v3, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->outerSiteData:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->showWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)V

    .line 91
    return-void

    .line 83
    :cond_2
    :goto_0
    return-void
.end method

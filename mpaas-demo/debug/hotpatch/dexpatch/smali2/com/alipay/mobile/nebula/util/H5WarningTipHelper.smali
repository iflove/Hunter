.class public Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;
.super Ljava/lang/Object;
.source "H5WarningTipHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5WarningTipHelper"


# instance fields
.field private dataExceededProvider:Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

.field private enableShowDataTip:Z

.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private hasShowDataTip:Z

.field private innerSiteData:F

.field private isAliDomains:Z

.field private mobileDataUsage:F

.field private outerSiteData:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->mobileDataUsage:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->isAliDomains:Z

    .line 22
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    .line 23
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->hasShowDataTip:Z

    return-void
.end method


# virtual methods
.method public initDataExceededConfig(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 9
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->isAliDomains:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->hasShowDataTip:Z

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->mobileDataUsage:F

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 33
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 34
    .local v3, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "fromLiveChannel"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "YES"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "H5WarningTipHelper"

    if-eqz v1, :cond_2

    .line 41
    const-string/jumbo v0, "showDataFlow disable by fromLiveChannel"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 44
    :cond_2
    const-string v1, "h5_dataFlowConfig"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 45
    .local v5, "value":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    return-void

    .line 48
    :cond_3
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 49
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "enable"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 50
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    .line 56
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 57
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    nop

    .line 58
    const-string/jumbo v6, "tinyAppEnable"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "no"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    .line 60
    return-void

    .line 62
    :cond_5
    const-string/jumbo v6, "whiteList"

    invoke-static {v1, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    move-object v7, v2

    .line 63
    .local v7, "whiteListArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v7, v6

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 64
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v2, "domainSuffix":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 66
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    .line 67
    return-void

    .line 70
    .end local v2    # "domainSuffix":Ljava/lang/String;
    :cond_6
    const-string v0, "innerSite"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 71
    .local v0, "innerSite":F
    const-string/jumbo v2, "outerSite"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 72
    .local v2, "outerSite":F
    const/high16 v6, 0x44800000    # 1024.0f

    mul-float v8, v0, v6

    mul-float v8, v8, v6

    iput v8, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->innerSiteData:F

    .line 73
    mul-float v8, v2, v6

    mul-float v8, v8, v6

    iput v8, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->outerSiteData:F

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "h5_dataFlowConfig enable\uff1a"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->isAliDomains:Z

    .line 76
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    iput-object v4, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->dataExceededProvider:Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    .line 77
    return-void

    .line 53
    .end local v0    # "innerSite":F
    .end local v2    # "outerSite":F
    .end local v7    # "whiteListArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    return-void

    .line 35
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    :goto_0
    return-void
.end method

.method public showWarningTip(J)V
    .locals 7
    .param p1, "size"    # J

    .line 80
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->enableShowDataTip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->dataExceededProvider:Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->hasShowDataTip:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->mobileDataUsage:F

    long-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->mobileDataUsage:F

    .line 84
    iget-boolean v2, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->isAliDomains:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget v5, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->innerSiteData:F

    cmpl-float v6, v5, v3

    if-eqz v6, :cond_1

    cmpl-float v6, v1, v5

    if-lez v6, :cond_1

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->showWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)V

    .line 86
    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->hasShowDataTip:Z

    return-void

    .line 87
    :cond_1
    if-nez v2, :cond_2

    iget v2, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->outerSiteData:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->showWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)V

    .line 89
    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->hasShowDataTip:Z

    .line 91
    :cond_2
    return-void

    .line 81
    :cond_3
    :goto_0
    return-void
.end method

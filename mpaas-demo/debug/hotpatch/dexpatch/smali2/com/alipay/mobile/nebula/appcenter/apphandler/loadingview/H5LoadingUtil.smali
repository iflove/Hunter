.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;
.super Ljava/lang/Object;
.source "H5LoadingUtil.java"


# static fields
.field private static final defaultTime:I = 0x1e

.field private static h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

.field private static h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field private static h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

.field private static h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppTimeout(Ljava/lang/String;)I
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 74
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "h5_preparetimelimit"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 77
    .local v1, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "-1"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 82
    .end local v1    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    .locals 1

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    return-object v0
.end method

.method public static getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .locals 1

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    return-object v0
.end method

.method public static getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    .locals 1

    .line 34
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    return-object v0
.end method

.method public static getH5StartAppInfo()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    return-object v0
.end method

.method private static getMainDegradeAppTimeout(Ljava/lang/String;)I
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 86
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 87
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "h5_downgradePreparetimelimit"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 90
    .local v1, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "-1"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 95
    .end local v1    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I
    .locals 5

    .line 100
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getMainDegradeAppTimeout(Ljava/lang/String;)I

    move-result v0

    .line 101
    if-ltz v0, :cond_1

    .line 102
    iget-object v1, p3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getInstallVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz p3, :cond_1

    .line 104
    iget-object v2, p3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 105
    const-string v3, "downgradeVersion"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v3, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 107
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    return v0

    .line 113
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getAppTimeout(Ljava/lang/String;)I

    move-result p0

    .line 114
    if-lez p0, :cond_2

    .line 115
    return p0

    .line 118
    :cond_2
    const-class p0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 119
    const-string v0, "force"

    const-string/jumbo v1, "try"

    if-eqz p0, :cond_6

    .line 120
    const-string v2, "expireTime"

    invoke-interface {p0, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 122
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 123
    const-string/jumbo v2, "switch"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 126
    nop

    .line 128
    if-eqz p3, :cond_6

    .line 129
    iget p3, p3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 130
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {p0, p3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 131
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 132
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 133
    move-object v2, v0

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo p3, "synctry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 135
    const-string/jumbo v2, "tryup"

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 137
    const-string/jumbo v2, "tryoff"

    .line 140
    :cond_5
    :goto_0
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 142
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 150
    :cond_6
    if-eqz p2, :cond_8

    .line 151
    const-string/jumbo p0, "nbprepareTime"

    invoke-static {p2, p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 153
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 155
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 156
    goto :goto_1

    .line 158
    :cond_7
    move-object v0, v1

    .line 160
    :goto_1
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 162
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 167
    :cond_8
    const/16 p0, 0x1e

    return p0
.end method

.method public static setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V
    .locals 0
    .param p0, "h5LoadingActivity"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .line 66
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .line 67
    return-void
.end method

.method public static setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 57
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 58
    return-void
.end method

.method public static setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V
    .locals 0
    .param p0, "h5LoadingTypeListen"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .line 39
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .line 40
    return-void
.end method

.method public static setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 48
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 49
    return-void
.end method

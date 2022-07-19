.class public Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;
.super Ljava/lang/Object;
.source "H5TinyAppLogUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TinyAppLogHelper"

.field public static final TINY_APP_STANDARD_CATEGORY:Ljava/lang/String; = "category"

.field public static final TINY_APP_STANDARD_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TINY_APP_STANDARD_EXTRA:Ljava/lang/String; = "autoExtra"

.field public static final TINY_APP_STANDARD_EXTRA_APPID:Ljava/lang/String; = "appId"

.field public static final TINY_APP_STANDARD_EXTRA_APPVERSION:Ljava/lang/String; = "appVersion"

.field public static final TINY_APP_STANDARD_EXTRA_APPXVERSION:Ljava/lang/String; = "appxVersion"

.field public static final TINY_APP_STANDARD_EXTRA_CLIENTVERSION:Ljava/lang/String; = "clientVersion"

.field public static final TINY_APP_STANDARD_EXTRA_PLATFORM:Ljava/lang/String; = "platform"

.field public static final TINY_APP_STANDARD_EXTRA_SYSTEMINFO:Ljava/lang/String; = "systemInfo"

.field public static final TINY_APP_STANDARD_EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TINY_APP_STANDARD_EXTRA_URL:Ljava/lang/String; = "url"

.field public static final TINY_APP_STANDARD_EXTRA_USERID:Ljava/lang/String; = "userId"

.field public static final TINY_APP_STANDARD_LOG:Ljava/lang/String; = "tinyAppStandardLog"

.field public static final TINY_APP_STANDARD_LOGID:Ljava/lang/String; = "logId"

.field public static final TINY_APP_STANDARD_MESSAGE:Ljava/lang/String; = "message"

.field public static final TINY_APP_STANDARD_OUTPUT:Ljava/lang/String; = "output"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendExtraInfo(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .line 75
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v3, "clientVersion"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "platform"

    const-string v3, "Android"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "pageParams":Landroid/os/Bundle;
    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v3, "url"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v3, "appVersion"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCurrentAvailableAppxVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appxVersion"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 88
    .local v3, "systemInfo":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 89
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object v1, v4

    if-eqz v4, :cond_0

    .line 90
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v4, "density":F
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 92
    .local v5, "width":I
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v7, "pixelRatio"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "windowWidth"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "screenWidth"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "screenHeight"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p0, p1, v4, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;->getHeight(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;FLandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "windowHeight"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v4    # "density":F
    .end local v5    # "width":I
    :cond_0
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "brand"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "apiLevel"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "model"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;->getInternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "storage"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v4, "systemInfo"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v0    # "pageParams":Landroid/os/Bundle;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "systemInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    if-eqz p2, :cond_2

    .line 106
    const-string v0, "autoExtra"

    invoke-virtual {p2, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2
    return-object p2
.end method

.method public static buildBasicLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "logId"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 66
    .local v1, "obj":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "category"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "logId"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v0, "output"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "description"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v1
.end method

.method public static buildStandardLogInfo(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "eventParams"    # Lcom/alibaba/fastjson/JSONObject;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "standardLog":Ljava/lang/String;
    :try_start_0
    const-string v1, "category"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logId"

    .line 53
    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "output"

    .line 54
    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    .line 55
    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "message"

    .line 56
    invoke-static {p2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;->buildBasicLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 57
    .local v1, "fullLog":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;->appendExtraInfo(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 60
    .end local v1    # "fullLog":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppLogHelper"

    const-string v3, "getCreateScenario"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static checkMsgIsValid(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 112
    const-string v0, "category"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "category":Ljava/lang/String;
    const/4 v1, 0x0

    .line 114
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v1, "log format is error, category is empty."

    goto :goto_0

    .line 116
    :cond_0
    const-string v2, "logId"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v1, "log format is error, logId is empty."

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v2, "output"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string v1, "log format is error, output is empty."

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v2, "warn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "description"

    if-eqz v2, :cond_3

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const-string v1, "log format is error, warn log needs description key."

    goto :goto_0

    .line 122
    :cond_3
    const-string v2, "error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "message"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 123
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    :cond_4
    const-string v1, "log format is error, error log needs description and message keys."

    .line 126
    :cond_5
    :goto_0
    return-object v1
.end method

.method public static getHeight(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;FLandroid/util/DisplayMetrics;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "density"    # F
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 130
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget v1, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppLogUtil;->getTitleAndStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p2

    .line 130
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, "height":I
    :goto_0
    const/4 v2, 0x1

    .line 133
    .local v2, "getHeightFromWebView":Z
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v4, 0x0

    move-object v5, v4

    .line 135
    .local v5, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v5, v3

    if-nez v3, :cond_1

    .line 136
    return v1

    .line 138
    :cond_1
    const-string v3, "h5_getWebViewHeight"

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v4, "getHeightWebview":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const/4 v2, 0x0

    .line 144
    :cond_2
    if-eqz v2, :cond_4

    .line 145
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 146
    .local v0, "heightOfWebView":I
    move v0, v3

    if-lez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    move v1, v3

    .line 148
    .end local v0    # "heightOfWebView":I
    :cond_4
    return v1
.end method

.method public static getInternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 173
    return-object v1

    .line 176
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 177
    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 178
    .local v3, "statFs":Landroid/os/StatFs;
    move-object v3, v2

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 179
    .local v4, "blockSizeLong":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    .line 180
    mul-long v6, v6, v4

    .line 181
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulacore/util/format/TinyAppFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 182
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "statFs":Landroid/os/StatFs;
    .end local v4    # "blockSizeLong":J
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppLogHelper"

    const-string v3, "getInternalMemorySize..."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static getTitleAndStatusBarHeight(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 153
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 154
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 155
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 156
    .local v1, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    float-to-int v2, v2

    add-int/2addr v2, v1

    return v2

    .line 159
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "statusBarHeight":I
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTitleAndStatusBarHeight...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5TinyAppLogHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    return v1
.end method

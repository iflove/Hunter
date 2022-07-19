.class public Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "MPChooseCityPlugin.java"


# static fields
.field public static final ACTION_LOCATION_COMPLETE:Ljava/lang/String; = "com.mpaas.internal.location.complete"

.field public static final GET_CITIES:Ljava/lang/String; = "getCities"

.field public static final LOCATED_CITY_AD_CODE:Ljava/lang/String; = "locatedCityAdCode"

.field public static final LOCATED_CITY_ID:Ljava/lang/String; = "locatedCityId"

.field public static final LOCATED_CITY_NAME:Ljava/lang/String; = "locatedCityName"

.field public static final SET_LOCATED_CITY:Ljava/lang/String; = "setLocatedCity"

.field private static final TAG:Ljava/lang/String; = "MPChooseCityPlugin"


# instance fields
.field private bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private isRegistered:Z

.field private lastSavedCityId:Ljava/lang/String;

.field private locationChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->isRegistered:Z

    .line 43
    new-instance v0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;-><init>(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->locationChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->lastSavedCityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->lastSavedCityId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 82
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v1, "getCities"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "setLocatedCity"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 84
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v6, v5

    .line 85
    .local v6, "activity":Landroid/app/Activity;
    move-object v6, v1

    if-nez v1, :cond_0

    .line 86
    return v2

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->isRegistered:Z

    if-nez v1, :cond_1

    .line 90
    invoke-static {v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v5

    .line 92
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v7, "com.mpaas.internal.location.complete"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v7, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->locationChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    iput-boolean v4, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->isRegistered:Z

    goto :goto_0

    .line 89
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_1
    move-object v2, v5

    .line 96
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 98
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 99
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string/jumbo v7, "needHotCity"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 101
    .local v1, "showHotCities":Ljava/lang/Boolean;
    new-instance v7, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;

    invoke-direct {v7}, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;-><init>()V

    move-object v8, v5

    .line 102
    .local v8, "request":Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;
    move-object v8, v7

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v7, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->a:Z

    .line 103
    const-string v7, "currentCity"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v8, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->b:Z

    .line 104
    const-string v7, "customHotCities"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v5

    :goto_2
    iput-object v7, v8, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->c:Ljava/lang/String;

    .line 105
    const-string v7, "customCities"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    iput-object v5, v8, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->d:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v8, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->e:Z

    .line 107
    new-instance v3, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;-><init>(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v6, v8, v3}, Lcom/mpaas/tinyapi/ApiExecutor;->a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestModel;Lcom/mpaas/tinyapi/ResponseCallback;)V

    .line 128
    return v4

    .line 130
    .end local v1    # "showHotCities":Ljava/lang/Boolean;
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "request":Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 132
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v3, v5

    .line 133
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v2

    const-string v6, "com.mpaas.internal.setLocatedCity"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "locatedCityId"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "cityId":Ljava/lang/String;
    const-string v7, "locatedCityName"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "cityName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ""

    if-nez v9, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 140
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->lastSavedCityId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 141
    const/16 v2, 0xd

    invoke-interface {p2, v2, v10}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 142
    return v4

    .line 144
    :cond_7
    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "locatedCityAdCode"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 148
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 149
    .local v5, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v2

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {p2, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 151
    return v4

    .line 137
    .end local v5    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    :goto_3
    const/16 v2, 0xc

    invoke-interface {p2, v2, v10}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 138
    return v4

    .line 153
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "cityId":Ljava/lang/String;
    .end local v8    # "cityName":Ljava/lang/String;
    :cond_9
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 64
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 65
    const-string v0, "getCities"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "setLocatedCity"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 73
    iget-boolean v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->locationChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    iput-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->isRegistered:Z

    .line 78
    :cond_0
    return-void
.end method

.class public Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5UCPlugin.java"


# static fields
.field private static final APPEND_UC_CORE_PERFORMANCE_DATA:Ljava/lang/String; = "appendUCCorePerformanceData"

.field private static final ARGUMENT_ERROR:I = 0x66

.field private static final CLEAR_SW:Ljava/lang/String; = "clearServiceWorker"

.field private static final FLUSH_UC_LOG:Ljava/lang/String; = "flushUcLog"

.field private static final PUSH_SW_MESSAGE:Ljava/lang/String; = "pushSWMessage"

.field private static final SET_SERVICEWORKER_ID:Ljava/lang/String; = "setServiceWorkerID"

.field private static final TAG:Ljava/lang/String; = "H5UCPlugin"

.field private static final USER_ID_ERROR:I = 0x67


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private appendUcCorePerformanceData(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 133
    new-instance v0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;-><init>(Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    const-string v1, "H5UCPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method private enableFlushUcLog()Z
    .locals 12

    .line 183
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 185
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 186
    const-string v2, "h5_canUseFlushUcLog"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    return v1

    .line 191
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "phoneInfo":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 194
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 195
    .local v5, "enable":Z
    if-nez v5, :cond_1

    .line 196
    return v6

    .line 199
    :cond_1
    const/4 v7, 0x0

    const-string v8, "device"

    invoke-static {v4, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 200
    .local v7, "deviceList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 205
    .local v8, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 206
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 207
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, "configValue":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 209
    return v6

    .line 206
    .end local v10    # "configValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 201
    .end local v8    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "i":I
    :cond_4
    :goto_1
    return v1

    .line 214
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "phoneInfo":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "enable":Z
    .end local v7    # "deviceList":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    return v1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "action":Ljava/lang/String;
    const-string v2, "setServiceWorkerID"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "H5UCPlugin"

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 65
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "id":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v6

    .line 69
    .local v6, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v6, v5}, Lcom/alipay/mobile/h5container/api/H5Session;->setServiceWorkerID(Ljava/lang/String;)V

    .line 71
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 73
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success setServiceWorkerID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_2
    return v4

    .line 77
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const-string v2, "pushSWMessage"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    if-eqz v0, :cond_6

    .line 79
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v2

    .line 80
    .local v2, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v2, :cond_6

    .line 81
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "serviceWorkerId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "success getServiceWorkerID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v3, "hashMap":Ljava/util/HashMap;
    const-string v6, "appId"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v6, "message"

    const-string v7, "testdata"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "messageId"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v6

    .line 89
    .local v6, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v6, :cond_4

    .line 90
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    .line 92
    :cond_4
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 93
    .end local v3    # "hashMap":Ljava/util/HashMap;
    .end local v6    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    goto :goto_0

    .line 94
    :cond_5
    const-string v3, "2"

    const-string v6, "ServiceWorkerID is null,please invoke setServiceWorkerID"

    invoke-interface {p2, v3, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v5    # "serviceWorkerId":Ljava/lang/String;
    :cond_6
    :goto_0
    return v4

    .line 100
    :cond_7
    const-string v2, "clearServiceWorker"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "host"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "host":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    .line 103
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v3, :cond_8

    .line 104
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->clearServiceWorker(Ljava/lang/String;)V

    .line 106
    :cond_8
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 107
    return v4

    .line 108
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_9
    const-string v2, "flushUcLog"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 109
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v3, :cond_a

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;->enableFlushUcLog()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    const-string v2, "IO"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;-><init>(Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    :cond_a
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 124
    return v4

    .line 125
    :cond_b
    const-string v2, "appendUCCorePerformanceData"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;->appendUcCorePerformanceData(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 127
    return v4

    .line 129
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v2

    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 49
    const-string v0, "setServiceWorkerID"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v0, "pushSWMessage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v0, "clearServiceWorker"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v0, "flushUcLog"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v0, "appendUCCorePerformanceData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 54
    return-void
.end method

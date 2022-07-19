.class public Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ShareDataPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ShareDataPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 18
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 18
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 18
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 96
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    const-string v1, "keys"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    .line 99
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    .line 100
    if-nez v1, :cond_0

    .line 101
    const-string p0, "H5ShareDataPlugin"

    const-string p1, " not set H5CacheProvider can not use shareDate"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 107
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 108
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 109
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 112
    check-cast v4, Ljava/lang/String;

    .line 113
    invoke-interface {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 118
    const-string v1, "data"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 120
    return-void
.end method

.method private static c(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 61
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "data"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 62
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 67
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    .line 68
    .local v1, "shareData":Lcom/alipay/mobile/nebula/provider/H5CacheProvider;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "H5ShareDataPlugin"

    const-string v4, " not set H5CacheProvider can not use shareDate"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    const-string v4, "writeToFile"

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .local v4, "key":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 80
    const/4 v6, 0x1

    invoke-interface {v1, v4, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_0

    :cond_3
    return-void

    .line 84
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .restart local v4    # "key":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 87
    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 92
    :cond_6
    return-void

    .line 63
    .end local v1    # "shareData":Lcom/alipay/mobile/nebula/provider/H5CacheProvider;
    :cond_7
    :goto_2
    return-void
.end method

.method private static d(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 124
    const-string v1, "keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 126
    .local v0, "keys":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    move-object v3, v2

    .line 127
    .local v3, "shareData":Lcom/alipay/mobile/h5container/api/H5Data;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "H5ShareDataPlugin"

    const-string v2, " not set H5CacheProvider can not use shareDate"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 133
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 135
    .local v1, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 136
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 137
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 140
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3, v5}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "size":I
    .end local v4    # "index":I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v1, "getSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "URGENT"

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "setSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "removeSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 24
    const-string v0, "setSharedData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v0, "getSharedData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v0, "removeSharedData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 27
    return-void
.end method

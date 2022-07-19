.class public Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebSocketConnectPlugin.java"


# static fields
.field public static final CONNECT_SOCKET:Ljava/lang/String; = "connectSocket"

.field public static final TAG:Ljava/lang/String; = "WS_H5WebSocketPlugin"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 66
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "WS_H5WebSocketPlugin"

    const-string v1, "appId is empty."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->startConnectSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 73
    return-void
.end method

.method public static getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # [Ljava/lang/String;

    .line 234
    move-object v0, p2

    .line 235
    .local v0, "ret":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 237
    .local v2, "arr":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 238
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 239
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    .end local v2    # "arr":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 51
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string v1, "connectSocket"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x0

    return v1

    .line 56
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "WS_H5WebSocketPlugin"

    const-string v3, "connectSocket unknow error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 46
    const-string v0, "connectSocket"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 228
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b(Ljava/lang/String;)Z

    .line 229
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b(Ljava/lang/String;)Z

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRelease. Removed web socket session , appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WS_H5WebSocketPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public startConnectSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 16

    .line 76
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "connect fail : %s "

    move-object/from16 v4, p0

    iput-object v1, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    .line 77
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->c(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v6

    .line 79
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v0, v8

    const-string v9, "enter connectSocket, appId: %s"

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "WS_H5WebSocketPlugin"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v10, 0x2

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_0

    .line 82
    const-string/jumbo v0, "over each tiny app max socket count"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "exceed each tiny app max socket count"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 84
    return-void

    .line 90
    :cond_0
    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v0

    .line 95
    :goto_0
    if-eqz v0, :cond_4

    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    if-eqz v11, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string/jumbo v0, "the already appid has a websocket"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_2
    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v7}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 105
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b(Ljava/lang/String;)Z

    .line 110
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 111
    const-string/jumbo v0, "url"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 112
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string/jumbo v0, "url is null"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->URL_IS_NULL_MSG:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V

    .line 115
    return-void

    .line 118
    :cond_5
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v12, v0, v8

    const-string/jumbo v13, "url is %s"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v12, v0, v8

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    return-void

    .line 129
    :cond_6
    goto :goto_2

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :goto_2
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v12, v0, v8

    aput-object v1, v0, v7

    const-string/jumbo v13, "send request ok, url is : %s ,appid: %s"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "data"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 144
    invoke-static {v12, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 148
    :cond_7
    invoke-static {v12}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 152
    :try_start_1
    new-instance v13, Ljava/net/URI;

    invoke-direct {v13, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 157
    nop

    .line 159
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 160
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->d(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "User-Agent"

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v0, "referer"

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    const-string/jumbo v14, "protocols"

    invoke-static {v11, v14, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v11, ""

    if-eqz v0, :cond_a

    .line 166
    nop

    .line 167
    array-length v14, v0

    .line 168
    move-object v7, v11

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_9

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v15

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 170
    add-int/lit8 v8, v14, -0x1

    if-eq v15, v8, :cond_8

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 174
    :cond_9
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "protocols: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_a
    new-array v0, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v0, v7

    const v7, 0xea60

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const-string v7, "connectSocket, url= %s, timeout = %d"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;

    invoke-direct {v7, v2, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;-><init>(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Z)V

    .line 185
    :try_start_2
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;-><init>()V

    .line 186
    const-string/jumbo v8, "ws.biz-unique-id"

    invoke-virtual {v0, v8, v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    new-instance v8, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-direct {v8, v13, v3, v7, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallback;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    goto :goto_4

    .line 188
    :catchall_1
    move-exception v0

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "New constructor can\'t find, will use the original constructor\u3002"

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v8, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-direct {v8, v13, v3, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallback;)V

    .line 193
    :goto_4
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;-><init>()V

    .line 194
    iput-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    .line 197
    :try_start_3
    const-string/jumbo v3, "ws://"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 198
    const-string/jumbo v3, "url is %s ,user ws connect"

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v13, v7

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->connect()V

    goto :goto_5

    .line 200
    :cond_b
    const-string/jumbo v3, "wss://"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 201
    const-string/jumbo v3, "url is %s ,user wss connect"

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v13, v7

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->connectWithSSL()V

    .line 209
    :goto_5
    if-eqz v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 210
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v10, :cond_d

    .line 211
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;)V

    .line 212
    invoke-static {v2, v11}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;)V

    .line 216
    invoke-static {v2, v11}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 222
    :cond_d
    return-void

    .line 204
    :cond_e
    const-string/jumbo v0, "url error: %s not ws:// or wss://"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v12, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->URL_NOT_WS_OR_WSS:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 206
    return-void

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v1, v3

    const-string/jumbo v3, "url %s exception "

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 223
    return-void

    .line 153
    :catchall_3
    move-exception v0

    .line 154
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V

    .line 156
    return-void
.end method

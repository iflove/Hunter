.class public Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebSocketSendMsgPlugin.java"


# static fields
.field public static final SEND_SOCKET_MESSAGE:Ljava/lang/String; = "sendSocketMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 50
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;->sendSocketMessage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 52
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "sendSocketMessage"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x0

    return v1

    .line 42
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v3, "sendSocketMessage unknow error. "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 32
    const-string/jumbo v0, "sendSocketMessage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public sendSocketMessage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 55
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "enter sendSocketMessage, appId: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "WS_H5WebSocketSendMsgPlugin"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    .local v5, "socketTaskID":Ljava/lang/String;
    move-object v6, v4

    .line 58
    .local v6, "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v1

    .end local v6    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .local v1, "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    goto :goto_0

    .line 61
    .end local v1    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .restart local v6    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v1

    .line 63
    .end local v6    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .restart local v1    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :goto_0
    if-nez v1, :cond_1

    .line 64
    const-string/jumbo v0, "sendSocketMessage error , not exist WebsocketSession"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V

    .line 66
    return-void

    .line 69
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    const-string/jumbo v0, "sendSocketMessage error , no websocket connection is established"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;)V

    .line 72
    return-void

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v7, v4

    .line 76
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    const-string v8, "data"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v4

    .line 77
    .local v8, "data":Ljava/lang/String;
    move-object v8, v6

    if-nez v6, :cond_3

    .line 78
    const-string v0, "Cannot send \'null\' data to a WebSocket"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p3, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 80
    return-void

    .line 84
    :cond_3
    :try_start_0
    const-string v6, "isBuffer"

    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 85
    .local v4, "isBuffer":Ljava/lang/Boolean;
    move-object v4, v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 88
    :cond_4
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x2

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 89
    .local v6, "byteBufferData":Ljava/nio/ByteBuffer;
    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v9, v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->send(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 86
    .end local v6    # "byteBufferData":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_1
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v6, v8}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->send(Ljava/lang/String;)V

    .line 91
    :goto_2
    const-string v6, ""

    invoke-static {p3, v6}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v4    # "isBuffer":Ljava/lang/Boolean;
    return-void

    .line 92
    :catchall_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Throwable;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const-string/jumbo v2, "sendSocketMessage error : %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 96
    .end local v4    # "e":Ljava/lang/Throwable;
    return-void
.end method

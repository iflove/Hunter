.class public Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebSocketClosePlugin.java"


# static fields
.field public static final CLOSE_SOCKET:Ljava/lang/String; = "closeSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 46
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;->closeSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 48
    return-void
.end method


# virtual methods
.method public closeSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WS_H5WebSocketClosePlugin"

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "closeSocket...appId is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v3, "enter closeSocket, appId: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 59
    .local v3, "socketTaskID":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v0

    .line 61
    .local v0, "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 63
    .end local v0    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    move-result-object v0

    .line 65
    .restart local v0    # "oldWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :goto_0
    const-string v2, "No websocket connection is established"

    if-nez v0, :cond_2

    .line 66
    const-string v4, "closeSocket error , not exist WebsocketSession"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p3, v2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_2
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    if-nez v4, :cond_3

    .line 72
    const-string v4, "closeSocket ok , no websocket connection is established"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p3, v2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 74
    return-void

    .line 77
    :cond_3
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/16 v2, 0x3e8

    const-string v4, "code"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 78
    .local v1, "code":I
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "reason"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "reason":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v4, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->close(ILjava/lang/String;)V

    .line 82
    invoke-static {p3, v5}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 33
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "closeSocket"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const/4 v1, 0x0

    return v1

    .line 38
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "WS_H5WebSocketClosePlugin"

    const-string v3, "closeSocket unknow error. "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 28
    const-string v0, "closeSocket"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 29
    return-void
.end method

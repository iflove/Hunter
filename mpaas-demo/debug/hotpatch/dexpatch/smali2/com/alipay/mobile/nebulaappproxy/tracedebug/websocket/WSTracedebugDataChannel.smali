.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;
.super Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;
.source "WSTracedebugDataChannel.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    .line 36
    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    .local v2, "arr":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .end local v2    # "arr":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    const/16 v1, 0x64

    const-string/jumbo v2, "test close!"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->close(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->d:Z

    .line 50
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 51
    .local v3, "paramJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v4, v2

    .line 52
    .local v4, "dataJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    const/4 v1, 0x1

    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 62
    .local v5, "uri":Ljava/net/URI;
    nop

    .line 63
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v6

    move-object v7, v2

    .line 64
    .local v7, "headers":Ljava/util/Map;
    move-object v7, v6

    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSUtils;->d(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "User-Agent"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v6, "referer"

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v6, "protocols"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v2, "protocolsArray":[Ljava/lang/String;
    move-object v2, v6

    if-eqz v6, :cond_3

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v6, "protocols":Ljava/lang/StringBuilder;
    array-length v8, v2

    .line 71
    .local v8, "protocolsLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 72
    aget-object v10, v2, v9

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v10, v8, -0x1

    if-eq v9, v10, :cond_1

    .line 74
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 77
    .end local v9    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Sec-WebSocket-Protocol"

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "protocols: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v6    # "protocols":Ljava/lang/StringBuilder;
    .end local v8    # "protocolsLength":I
    :cond_3
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    const v9, 0xea60

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "connectSocket, url= %s, timeout = %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_1
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;

    invoke-direct {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;-><init>()V

    .line 84
    .local v6, "webSocketContext":Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;
    new-instance v8, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-direct {v8, v5, v7, p0, v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallback;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketContext;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v6    # "webSocketContext":Lcom/alipay/android/phone/mobilesdk/socketcraft/api/BasicWebSocketContext;
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v6

    .line 86
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "New constructor can\'t find, will use the original constructor\u3002"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v8, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-direct {v8, v5, v7, p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallback;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    .line 90
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "ws://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v8, "url is %s ,user ws connect"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->connect()V

    return-void

    .line 93
    :cond_4
    const-string/jumbo v6, "wss://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v8, "url is %s ,user wss connect"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->connectWithSSL()V

    return-void

    .line 97
    :cond_5
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v8, "url error: %s not ws:// or wss://"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    return-void

    .line 100
    :catchall_1
    move-exception v6

    .line 101
    .restart local v6    # "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string/jumbo v0, "url %s exception "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v6    # "e":Ljava/lang/Throwable;
    return-void

    .line 59
    .end local v2    # "protocolsArray":[Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v7    # "headers":Ljava/util/Map;
    :catchall_2
    move-exception v5

    .line 60
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "connect fail : %s "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->d:Z

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "send"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->c:Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/DefaultWebSocketClient;->send(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onSocketClose()V
    .locals 3

    .line 140
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSocketClose"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->d:Z

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 143
    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectClosed(Ljava/lang/String;)V

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public onSocketError(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSocketError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 169
    const/4 v2, 0x1

    const-string v3, ""

    invoke-interface {v1, v3, v2, p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectError(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public onSocketMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSocketMessage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 161
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->recv(Ljava/lang/String;)V

    .line 162
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public onSocketMessage(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 149
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSocketMessage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->onSocketMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "create string by buffer error. exception : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-void
.end method

.method public onSocketOpen()V
    .locals 3

    .line 131
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSocketOpen"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 133
    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectSuccess(Ljava/lang/String;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/websocket/WSTracedebugDataChannel;->d:Z

    .line 136
    return-void
.end method

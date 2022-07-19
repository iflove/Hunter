.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;
.super Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;
.source "WebSocketDataChannel.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/h5container/api/H5Event;

.field private e:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;

.field private f:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;

.field private g:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;

.field private h:Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->c:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->f:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->g:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    const-string v1, "close...h5Event is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 175
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 176
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v0, "reason"

    invoke-virtual {v2, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "fromRemoteDebug"

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v3

    move-object v4, v1

    .line 184
    .local v4, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object v4, v3

    const-string v5, "closeSocket"

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 187
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->g:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->h:Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    invoke-virtual {v3, v0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketClosePlugin;->closeSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 188
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 189
    return-void
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    .line 49
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    move-object v2, v1

    .line 54
    .local v2, "alreadyConnect":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect...already connecting."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    const-string v1, "connect...h5Event is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 65
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "fromRemoteDebug"

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 75
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    .line 80
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object v1, v4

    const-string v5, "connectSocket"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 83
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->c:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "tmpAppId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    :cond_2
    move-object v5, v4

    .line 93
    .local v5, "appId":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;

    invoke-direct {v6, p0, v5}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->h:Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    .line 142
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;

    invoke-virtual {v7, v0, v1, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketConnectPlugin;->startConnectSocket(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    const-string/jumbo v1, "send...h5Event is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 153
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "fromRemoteDebug"

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v3

    .line 160
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object v1, v3

    const-string/jumbo v4, "sendSocketMessage"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 163
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "send..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->f:Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->h:Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    invoke-virtual {v3, v0, v1, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/ws/H5WebSocketSendMsgPlugin;->sendSocketMessage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

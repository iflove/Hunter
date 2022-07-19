.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "WebSocketDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 1
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 101
    const-string/jumbo v0, "socketOpen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectSuccess(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    const-string/jumbo v0, "socketClose"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectClosed(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1
    const-string/jumbo v0, "socketError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 111
    if-nez p2, :cond_2

    return-void

    .line 114
    :cond_2
    const-string v0, "error"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    .local v0, "error":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const v3, 0x1869f

    .line 116
    :goto_0
    const-string v4, "errorMessage"

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->onConnectError(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    .end local v0    # "error":Ljava/lang/Integer;
    return-void

    .line 118
    :cond_4
    const-string/jumbo v0, "socketMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 120
    if-nez p2, :cond_5

    return-void

    .line 122
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 123
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    move-object v1, v2

    .line 127
    .local v1, "recvedMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v1    # "recvedMessage":Ljava/lang/String;
    .local v0, "recvedMessage":Ljava/lang/String;
    const-string v1, "isBuffer"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 129
    .local v2, "isBuffer":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->recv([B)V

    return-void

    .line 132
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel$1;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;->recv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0    # "recvedMessage":Ljava/lang/String;
    .end local v2    # "isBuffer":Ljava/lang/Boolean;
    return-void

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "socketMessage...e="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    return-void
.end method

.class public Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallbackAdapter;
.source "H5WebSocketCallback.java"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "socketTaskID"    # Ljava/lang/String;
    .param p3, "isMultipleSocket"    # Z

    .line 25
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/api/WebSocketCallbackAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 27
    iput-boolean p3, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public onSocketClose()V
    .locals 6

    .line 51
    const-string v0, "WS_H5WebSocketCallback"

    const-string v1, "enter onSocketClose. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 54
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 55
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    const-string/jumbo v5, "socketTaskID"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "data"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v4, "onSocketTaskClose"

    invoke-interface {v2, v4, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 58
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v2, "socketClose"

    invoke-interface {v0, v2, v1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 61
    return-void
.end method

.method public onSocketError(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enter onSocketError. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WS_H5WebSocketCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->getResultEnumByWsMsg(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    move-result-object v0

    .line 103
    .local v0, "resultEnumByWsMsg":Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 104
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->getErrCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/nebulaappproxy/ws/WSResultEnum;

    if-ne v0, v4, :cond_0

    .line 107
    const-string v4, "errorMessage"

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    const-string/jumbo v5, "socketTaskID"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v5, "onSocketTaskError"

    invoke-interface {v4, v5, v3, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v5, "socketError"

    invoke-interface {v4, v5, v3, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 116
    return-void
.end method

.method public onSocketMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 87
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "isBuffer"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v1

    .line 90
    .local v4, "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    const-string/jumbo v3, "socketTaskID"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v3, "onSocketTaskMessage"

    invoke-interface {v0, v3, v4, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v3, "socketMessage"

    invoke-interface {v0, v3, v4, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 97
    return-void
.end method

.method public onSocketMessage(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "data"

    .line 65
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 67
    .local v1, "hashMap":Lcom/alibaba/fastjson/JSONObject;
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "isBuffer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 71
    .local v5, "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v3

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "socketTaskID"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v3, "onSocketTaskMessage"

    invoke-interface {v0, v3, v5, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v3, "socketMessage"

    invoke-interface {v0, v3, v5, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v5    # "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "create string by buffer error. exception : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "WS_H5WebSocketCallback"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-void
.end method

.method public onSocketOpen()V
    .locals 6

    .line 37
    const-string v0, "WS_H5WebSocketCallback"

    const-string v1, "enter onSocketOpen. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 40
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 41
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->c:Ljava/lang/String;

    const-string/jumbo v5, "socketTaskID"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "data"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v4, "onSocketTaskOpen"

    invoke-interface {v2, v4, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 44
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WebSocketCallback;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v2, "socketOpen"

    invoke-interface {v0, v2, v1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 47
    return-void
.end method

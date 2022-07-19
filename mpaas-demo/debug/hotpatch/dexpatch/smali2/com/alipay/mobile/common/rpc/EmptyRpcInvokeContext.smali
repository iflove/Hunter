.class public Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;
.super Ljava/lang/Object;
.source "EmptyRpcInvokeContext.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvokeContext;


# static fields
.field private static a:Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;
    .locals 2

    .line 21
    sget-object v0, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    if-eqz v0, :cond_0

    .line 22
    return-object v0

    .line 24
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    if-eqz v1, :cond_1

    .line 26
    monitor-exit v0

    return-object v1

    .line 28
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    invoke-direct {v1}, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;->a:Lcom/alipay/mobile/common/rpc/EmptyRpcInvokeContext;

    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 66
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "addRequestHeader"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public addRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 2
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    .line 149
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "addRpcInterceptor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public clearRequestHeaders()V
    .locals 2

    .line 71
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "clearRequestHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGwUrl()Ljava/lang/String;
    .locals 1

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "getRequestHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseAllHeaders()[Lorg/apache/http/Header;
    .locals 2

    .line 60
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "getResponseAllHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "getResponseHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getShortLinkIPList()Ljava/lang/String;
    .locals 2

    .line 195
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setShortLinkIPList"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, ""

    return-object v0
.end method

.method public isAllowBgLogin()Z
    .locals 2

    .line 132
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "isAllowBgLogin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowNonNet()Z
    .locals 2

    .line 143
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "isAllowNonNet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public removeRequestHeaders(Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;

    .line 76
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "removeRequestHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public removeRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)Z
    .locals 2
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    .line 154
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "rpcInterceptor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBgLogin(Z)V
    .locals 2
    .param p1, "allowBgLogin"    # Z

    .line 127
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setAllowBgLogin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setAllowNonNet(Z)V
    .locals 2
    .param p1, "allowNonNet"    # Z

    .line 138
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "allowNonNet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setAllowRetry(Z)V
    .locals 2
    .param p1, "allowRetry"    # Z

    .line 112
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setAllowRetry"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 97
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setAppId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .line 92
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setAppKey"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 2
    .param p1, "bgRpc"    # Z

    .line 107
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setBgRpc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setBizLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizLog"    # Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setCompress(Z)V
    .locals 2
    .param p1, "compress"    # Z

    .line 87
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setCompress"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setDisableEncrypt(Z)V
    .locals 2
    .param p1, "disableEncrypt"    # Z

    .line 170
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "disableEncrypt"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setEnableEncrypt(Z)V
    .locals 2
    .param p1, "enableEncrypt"    # Z

    .line 175
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setEnableEncrypt"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .locals 0
    .param p1, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    return-void
.end method

.method public setGetMethod(Z)V
    .locals 2
    .param p1, "getMethod"    # Z

    .line 165
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "getMethod"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 44
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setGwUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setNeedSignature(Z)V
    .locals 2
    .param p1, "needSignature"    # Z

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setNeedSignature] needSignature = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyRpcInvokeContext"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 2
    .param p1, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setRequestHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 2
    .param p1, "resetCookie"    # Z

    .line 102
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setResetCookie"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setRpcLoggerLevel(I)V
    .locals 2
    .param p1, "loggerLevel"    # I

    .line 180
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setRpcLoggerLevel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setRpcV2(Z)V
    .locals 2
    .param p1, "isRpcV2"    # Z

    .line 122
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setRpcV2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setShortLinkIPList(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortLinkIPList"    # Ljava/lang/String;

    .line 190
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setShortLinkIPList"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setShortLinkOnly(Z)V
    .locals 2
    .param p1, "shortLinkOnly"    # Z

    .line 185
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setShortLinkOnly"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setSwitchUserLoginRpc(Z)V
    .locals 2
    .param p1, "isSwitchUserLoginRpc"    # Z

    .line 160
    const-string v0, "EmptyRpcInvokeContext"

    const-string v1, "isSwitchUserLoginRpc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .param p1, "timeoutMs"    # J

    .line 39
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setTimeout"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setUrgent(Z)V
    .locals 2
    .param p1, "isUrgent"    # Z

    .line 117
    const-string v0, "EmptyRpcInvokeContext"

    const-string/jumbo v1, "setUrgent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setUseMultiplexLink(Z)V
    .locals 2
    .param p1, "useMultiplexLink"    # Z

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setUseMultiplexLink] useMultiplexLink = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyRpcInvokeContext"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.class public Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
.super Ljava/lang/Object;
.source "InnerRpcInvokeContext.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvokeContext;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field public allowBgLogin:Z

.field public allowNonNet:Z

.field public allowRetry:Ljava/lang/Boolean;

.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public bgRpc:Ljava/lang/Boolean;

.field public bizLog:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public compress:Ljava/lang/Boolean;

.field public disableEnctypt:Z

.field public enableEncrypt:Z

.field public gwUrl:Ljava/lang/String;

.field public isGetMethod:Z

.field public isRpcV2:Z

.field public isUrgent:Z

.field public loggerLevel:I

.field public needSignature:Ljava/lang/Boolean;

.field public requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resetCookie:Ljava/lang/Boolean;

.field public responseAllHeaders:[Lorg/apache/http/Header;

.field public responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rpcInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public shortOnly:Z

.field public switchUserLoginRpc:Z

.field public timeout:J

.field public useMultiplexLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HeaderMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HeaderMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isUrgent:Z

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isRpcV2:Z

    .line 62
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowBgLogin:Z

    .line 65
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    .line 68
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->switchUserLoginRpc:Z

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isGetMethod:Z

    .line 74
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->disableEnctypt:Z

    .line 77
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->enableEncrypt:Z

    .line 80
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->shortOnly:Z

    .line 82
    const-string v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->a:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->useMultiplexLink:Z

    .line 89
    sget-object v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appId:Ljava/lang/String;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->loggerLevel:I

    .line 99
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->needSignature:Ljava/lang/Boolean;

    .line 102
    iput-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bizLog:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RpcInvokeContext"

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "addRequestHeader. key is empty."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    if-nez p2, :cond_1

    .line 150
    const-string v0, "addRequestHeader. value is null."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addRequestHeader. Find duplicate key : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , ignore them."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public addRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 2
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->b:Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 244
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public clearRequestHeaders()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
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

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getGwUrl()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
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

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseAllHeaders()[Lorg/apache/http/Header;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseAllHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
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

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getRpcInterceptorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    return-object v0
.end method

.method public getShortLinkIPList()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowBgLogin()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowBgLogin:Z

    return v0
.end method

.method public isAllowNonNet()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    return v0
.end method

.method public removeRequestHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public removeRpcInterceptor(Lcom/alipay/mobile/common/rpc/RpcInterceptor;)Z
    .locals 2
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->b:Ljava/util/List;

    if-eq v0, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 252
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowBgLogin(Z)V
    .locals 0
    .param p1, "allowBgLogin"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowBgLogin:Z

    .line 224
    return-void
.end method

.method public setAllowNonNet(Z)V
    .locals 0
    .param p1, "allowNonNet"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    .line 234
    return-void
.end method

.method public setAllowRetry(Z)V
    .locals 1
    .param p1, "allowRetry"    # Z

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appId:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 1
    .param p1, "bgRpc"    # Z

    .line 203
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 204
    return-void
.end method

.method public setBizLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizLog"    # Ljava/lang/String;

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "RpcInvokeContext"

    const-string v1, "[setBizLog] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bizLog:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setCompress(Z)V
    .locals 1
    .param p1, "compress"    # Z

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 184
    return-void
.end method

.method public setDisableEncrypt(Z)V
    .locals 0
    .param p1, "disableEncrypt"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->disableEnctypt:Z

    .line 270
    return-void
.end method

.method public setEnableEncrypt(Z)V
    .locals 0
    .param p1, "enableEncrypt"    # Z

    .line 274
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->enableEncrypt:Z

    .line 275
    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .locals 1
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

    .line 318
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    return-void

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method public setGetMethod(Z)V
    .locals 0
    .param p1, "getMethod"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isGetMethod:Z

    .line 265
    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGwUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpcInvokeContext"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setNeedSignature(Z)V
    .locals 1
    .param p1, "needSignature"    # Z

    .line 299
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->needSignature:Ljava/lang/Boolean;

    .line 300
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 5
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

    .line 126
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .local v1, "entry":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setRequestHeaders. Find duplicate key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , ignore them."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RpcInvokeContext"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 136
    :cond_2
    return-void

    .line 127
    :cond_3
    :goto_1
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 1
    .param p1, "resetCookie"    # Z

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 199
    return-void
.end method

.method public setRpcLoggerLevel(I)V
    .locals 0
    .param p1, "loggerLevel"    # I

    .line 279
    iput p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->loggerLevel:I

    .line 280
    return-void
.end method

.method public setRpcV2(Z)V
    .locals 0
    .param p1, "isRpcV2"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isRpcV2:Z

    .line 219
    return-void
.end method

.method public setShortLinkIPList(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortLinkIPList"    # Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->a:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setShortLinkOnly(Z)V
    .locals 0
    .param p1, "shortLinkOnly"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->shortOnly:Z

    .line 285
    return-void
.end method

.method public setSwitchUserLoginRpc(Z)V
    .locals 0
    .param p1, "isSwitchUserLoginRpc"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->switchUserLoginRpc:Z

    .line 260
    return-void
.end method

.method public setTimeout(J)V
    .locals 5
    .param p1, "timeoutMs"    # J

    .line 107
    const-string/jumbo v0, "setTimeout,timeoutMs: "

    const-string v1, "RpcInvokeContext"

    const-wide/16 v2, 0xbb8

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " too small,reset to 3s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-wide/16 p1, 0xbb8

    .line 111
    :cond_0
    const-wide/32 v2, 0x493e0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " too big,reset to 300s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-wide/32 p1, 0x493e0

    .line 115
    :cond_1
    iput-wide p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    .line 116
    return-void
.end method

.method public setUrgent(Z)V
    .locals 0
    .param p1, "isUrgent"    # Z

    .line 213
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isUrgent:Z

    .line 214
    return-void
.end method

.method public setUseMultiplexLink(Z)V
    .locals 0
    .param p1, "useMultiplexLink"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->useMultiplexLink:Z

    .line 305
    return-void
.end method

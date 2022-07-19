.class public Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;
.super Ljava/lang/Object;
.source "WalletPreRpcProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private e:Landroid/os/Bundle;

.field private f:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreAll()V
    .locals 1

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    return-void
.end method

.method public clearPreState(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5Key"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public enableUsePreRpc(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-string v0, "WalletPreRpcProvider"

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    const-string/jumbo v2, "preRpc"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 87
    .local v2, "preRpcStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "preRpcStr is null return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 93
    .end local v2    # "preRpcStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "urldecoder exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "md5Key"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getResult(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p1, "md5Key"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    move-object v3, v2

    .line 46
    .local v3, "rpcResultJo":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "WalletPreRpcProvider"

    const-string v2, "getResult has prerpc"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    monitor-exit v0

    return-object v3

    .line 50
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "WalletPreRpcProvider"

    const-string v4, "get Result no prerpc"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    monitor-exit v0

    return-object v2

    .line 58
    .end local v3    # "rpcResultJo":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleResultPool(Ljava/lang/String;I)V
    .locals 6
    .param p1, "md5Key"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 150
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v2, 0x0

    move-object v3, v2

    .line 152
    .local v3, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "WalletPreRpcProvider"

    const-string v4, "handleResultPool resultPool put response error"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 155
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v4, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    nop

    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 158
    :cond_0
    const-string v1, "WalletPreRpcProvider"

    const-string v2, "handleResultPool h5BridgeContext sendBridgeResult error"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 162
    .end local v3    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleResultPool(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "md5Key"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/alibaba/fastjson/JSONObject;

    .line 135
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v2, 0x0

    .line 137
    .local v2, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "WalletPreRpcProvider"

    const-string v3, "handleResultPool resultPool put response"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_0
    const-string v1, "WalletPreRpcProvider"

    const-string v3, "handleResultPool h5BridgeContext sendBridgeResult"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v2, p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 143
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 145
    .end local v2    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preRpc()V
    .locals 7

    const-string v0, "WalletPreRpcProvider"

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "preRpcStr":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    const-string/jumbo v4, "preRpc"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 105
    move-object v3, v2

    goto :goto_0

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "urldecoder exception"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string/jumbo v2, "preRpcStr is null return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 111
    .local v3, "preRpcJo":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v4

    if-nez v4, :cond_1

    .line 112
    const-string/jumbo v2, "preRpcJo is null return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_1
    const-string/jumbo v4, "operationType"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    const-string/jumbo v2, "operationType is null return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "md5Key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in WalletPreRpcProvider preRpcStr is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", md5 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->c:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;

    invoke-direct {v0, p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->f:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;

    .line 124
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->f:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    const-string v0, "H5_PRERPC_SEND"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    const-string v5, "appId"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    .line 128
    const-string v5, "appVersion"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    .line 129
    const-string/jumbo v5, "publicId"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    .line 130
    const-string/jumbo v5, "url"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 131
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->e:Landroid/os/Bundle;

    .line 40
    return-void
.end method

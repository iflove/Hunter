.class public Lcom/mpaas/nebula/provider/WalletPreRpcProvider;
.super Ljava/lang/Object;
.source "WalletPreRpcProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WalletPreRpcProvider"

.field private static contextPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            ">;"
        }
    .end annotation
.end field

.field private static preFlagPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static resultPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static syncFlag:Ljava/lang/Object;


# instance fields
.field private rpcRequest:Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;

.field private startParams:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->syncFlag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreAll()V
    .locals 1

    .line 77
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    return-void
.end method

.method public clearPreState(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5Key"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public enableUsePreRpc(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 85
    const-string v0, "WalletPreRpcProvider"

    :try_start_0
    iget-object v1, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    const-string v2, "preRpc"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "preRpcStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "preRpcStr is null return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 92
    .end local v1    # "preRpcStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "urldecoder exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "md5Key"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getResult(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p1, "md5Key"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->syncFlag:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 45
    .local v1, "rpcResultJo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 46
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "getResult has prerpc"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    monitor-exit v0

    return-object v1

    .line 49
    :cond_0
    sget-object v2, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "get Result no prerpc"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    sget-object v2, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 57
    .end local v1    # "rpcResultJo":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleResultPool(Ljava/lang/String;I)V
    .locals 5
    .param p1, "md5Key"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 153
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->syncFlag:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 155
    .local v1, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    if-nez v1, :cond_0

    .line 156
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "handleResultPool resultPool put response error"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 158
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v3, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    nop

    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 161
    :cond_0
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "handleResultPool h5BridgeContext sendBridgeResult error"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 165
    .end local v1    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :goto_0
    monitor-exit v0

    .line 166
    return-void

    .line 165
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

    .line 138
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->syncFlag:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->contextPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 140
    .local v1, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    if-nez v1, :cond_0

    .line 141
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "handleResultPool resultPool put response"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->resultPool:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_0
    const-string v2, "WalletPreRpcProvider"

    const-string v3, "handleResultPool h5BridgeContext sendBridgeResult"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v1, p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 146
    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->clearPreState(Ljava/lang/String;)V

    .line 148
    .end local v1    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :goto_0
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preRpc()V
    .locals 11

    .line 98
    const-string v0, "WalletPreRpcProvider"

    const/4 v1, 0x0

    .line 100
    .local v1, "preRpcStr":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    const-string v3, "preRpc"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "urldecoder exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "preRpcStr is null return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 108
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "preRpcJo":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_1

    .line 110
    const-string v3, "preRpcJo is null return"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_1
    const-string v3, "operationType"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "operationType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    const-string v4, "operationType is null return"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "md5Key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in WalletPreRpcProvider preRpcStr is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", md5 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->preFlagPool:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;

    invoke-direct {v0, p0, v2, v10}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;-><init>(Lcom/mpaas/nebula/provider/WalletPreRpcProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->rpcRequest:Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;

    .line 122
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v5, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->rpcRequest:Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 125
    .local v0, "walletLogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_3

    .line 126
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    .line 128
    const-string v8, "appId"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    .line 129
    const-string v7, "appVersion"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    .line 130
    const-string v7, "publicId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    .line 131
    const-string v7, "url"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 127
    const-string v4, "appId=%s^version=%s^publicId=%s^url=%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 126
    const-string v5, "H5_PRERPC_SEND"

    move-object v4, v0

    move-object v6, v1

    invoke-interface/range {v4 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 38
    iput-object p1, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->startParams:Landroid/os/Bundle;

    .line 39
    return-void
.end method

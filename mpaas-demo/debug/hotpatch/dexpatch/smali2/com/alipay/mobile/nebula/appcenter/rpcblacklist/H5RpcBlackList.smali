.class public Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
.super Ljava/lang/Object;
.source "H5RpcBlackList.java"


# static fields
.field private static instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;


# instance fields
.field private blackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    .line 26
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5RpcUpdateResponse"    # Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;

    monitor-enter p0

    .line 31
    if-nez p1, :cond_0

    .line 32
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "h5RpcUpdateResponse":Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 44
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 38
    if-nez p1, :cond_0

    .line 39
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 37
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
.super Ljava/lang/Object;
.source "NewH5WSSessionManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final a()Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    .locals 2

    .line 13
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    if-nez v1, :cond_1

    .line 18
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    .line 20
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;

    return-object v0

    .line 20
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 43
    .local v1, "sessions":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 46
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 41
    .end local v1    # "sessions":Ljava/util/Map;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "socketTaskID"    # Ljava/lang/String;

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    move-object v2, v1

    .line 35
    .local v2, "sessions":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 33
    .end local v2    # "sessions":Ljava/util/Map;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "socketTaskID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "socketTaskID"    # Ljava/lang/String;
    .param p3, "webSocketSession"    # Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 26
    .local v1, "sessions":Ljava/util/Map;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 24
    .end local v1    # "sessions":Ljava/util/Map;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "socketTaskID":Ljava/lang/String;
    .end local p3    # "webSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "socketTaskID"    # Ljava/lang/String;
    .param p3, "isCloseSocket"    # Z

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    move-object v2, v1

    .line 51
    .local v2, "sessions":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v1, "defaultWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 56
    :cond_0
    if-eqz p3, :cond_1

    .line 57
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a()V

    .line 59
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .end local v1    # "defaultWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :cond_2
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 49
    .end local v2    # "sessions":Ljava/util/Map;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "socketTaskID":Ljava/lang/String;
    .end local p3    # "isCloseSocket":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    move-object v2, v1

    .line 68
    .local v2, "sessions":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    .line 71
    .local v1, "webSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a()V

    .line 74
    .end local v1    # "webSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/NewH5WSSessionManager;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 78
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 66
    .end local v2    # "sessions":Ljava/util/Map;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

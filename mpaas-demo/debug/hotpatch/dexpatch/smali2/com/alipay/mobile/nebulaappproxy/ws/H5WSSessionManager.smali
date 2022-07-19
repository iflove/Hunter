.class public Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;
.super Ljava/lang/Object;
.source "H5WSSessionManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final a()Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 21
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    .line 25
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->a:Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;

    return-object v0

    .line 25
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "webSocketSession"    # Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "webSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 39
    .local v1, "defaultWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 37
    .end local v1    # "defaultWebSocketSession":Lcom/alipay/mobile/nebulaappproxy/ws/WebSocketSession;
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ws/H5WSSessionManager;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

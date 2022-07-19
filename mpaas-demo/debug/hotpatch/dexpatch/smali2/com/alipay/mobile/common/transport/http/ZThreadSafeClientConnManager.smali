.class public Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ZThreadSafeClientConnManager.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->addClientConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 39
    return-void
.end method

.method private static a(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 10
    .param p0, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    const-string v0, "ZThreadSafeClientConnManager"

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getConnection"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 81
    .local v4, "getConnectionMethod":Ljava/lang/reflect/Method;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 82
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 84
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    move-object v3, v2

    .line 85
    .local v3, "socket":Ljava/net/Socket;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "[recordSocketInfo] socket is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 91
    :cond_0
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    move-object v5, v2

    .line 92
    .local v5, "remoteSocketAddress":Ljava/net/SocketAddress;
    move-object v5, v1

    if-nez v1, :cond_1

    .line 93
    const-string v1, "[recordSocketInfo] remoteSocketAddress is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_1
    instance-of v1, v5, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[recordSocketInfo] remoteSocketAddress it\'s not InetSocketAddress, remoteSocketAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_2
    move-object v1, v5

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 103
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    move-object v6, v2

    .line 104
    .local v6, "inetAddress":Ljava/net/InetAddress;
    move-object v6, v1

    if-nez v1, :cond_3

    .line 105
    const-string v1, "[recordSocketInfo] inetAddress is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 109
    :cond_3
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "remoteHostAddress":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v7

    .line 112
    .local v7, "remotePort":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v2, "targetHost":Ljava/lang/String;
    move-object v2, v8

    invoke-static {v8}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->setTargetHost(Ljava/lang/String;)V

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "requestConnection target host=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "remoteHostAddress":Ljava/lang/String;
    .end local v2    # "targetHost":Ljava/lang/String;
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "getConnectionMethod":Ljava/lang/reflect/Method;
    .end local v5    # "remoteSocketAddress":Ljava/net/SocketAddress;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "remotePort":I
    return-void

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    .local v1, "iox":Ljava/lang/Throwable;
    const-string v2, "Problem tagging socket."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v1    # "iox":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;
    .param p1, "x1"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 26
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;->a(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 44
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 129
    invoke-super {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->finalize()V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->removeClientConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 132
    return-void
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 53
    .local v0, "poolRequest":Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager$1;-><init>(Lcom/alipay/mobile/common/transport/http/ZThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .line 123
    invoke-super {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->removeClientConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 125
    return-void
.end method

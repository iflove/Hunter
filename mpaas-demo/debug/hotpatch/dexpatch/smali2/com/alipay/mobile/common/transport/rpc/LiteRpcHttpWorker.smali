.class public Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;
.super Ljava/lang/Object;
.source "LiteRpcHttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/HttpException;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field protected mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field protected mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-wide/16 v0, 0xa0

    sput-wide v0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->b:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 71
    return-void
.end method

.method private a()Lcom/alipay/mobile/common/transport/Response;
    .locals 8

    .line 87
    const-string v0, "Rpc task finished. cost time = "

    const-string v1, "HttpWorker"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 89
    .local v2, "startTime":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->b()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v4
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v4

    .line 120
    :catchall_0
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "Throwable"

    invoke-direct {p0, v6, v5, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v6, "NullPointerException"

    invoke-direct {p0, v6, v5, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v4

    .line 117
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "IOException"

    const/4 v6, 0x6

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :catch_2
    move-exception v4

    .line 115
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_4
    const-string v5, "UnknownHostException"

    const/16 v6, 0x9

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :catch_3
    move-exception v4

    .line 113
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_5
    const-string v6, "ClientProtocolException"

    invoke-direct {p0, v6, v5, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :catch_4
    move-exception v4

    .line 111
    .local v4, "e":Lorg/apache/http/conn/HttpHostConnectException;
    :try_start_6
    const-string v5, "HttpHostConnectException"

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    .end local v4    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :catch_5
    move-exception v4

    .line 109
    .local v4, "e":Lorg/apache/http/NoHttpResponseException;
    :try_start_7
    const-string v5, "NoHttpResponseException"

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    .end local v4    # "e":Lorg/apache/http/NoHttpResponseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :catch_6
    move-exception v4

    .line 107
    .local v4, "e":Ljava/net/SocketTimeoutException;
    :try_start_8
    const-string v5, "SocketTimeoutException"

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_7
    move-exception v5

    .line 105
    .local v5, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_9
    const-string v6, "ConnectTimeoutException"

    invoke-direct {p0, v6, v4, v5}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 123
    .end local v5    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :catch_8
    move-exception v5

    .line 103
    .local v5, "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    :try_start_a
    const-string v6, "ConnectionPoolTimeoutException"

    invoke-direct {p0, v6, v4, v5}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 123
    .end local v5    # "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :catch_9
    move-exception v4

    .line 101
    .local v4, "e":Ljava/security/GeneralSecurityException;
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :catch_a
    move-exception v4

    .line 99
    .local v4, "e":Ljavax/net/ssl/SSLException;
    :try_start_c
    const-string v5, "SSLException"

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 123
    .end local v4    # "e":Ljavax/net/ssl/SSLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :catch_b
    move-exception v4

    .line 97
    .local v4, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :try_start_d
    const-string v5, "SSLPeerUnverifiedException"

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 123
    .end local v4    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :catch_c
    move-exception v4

    .line 95
    .local v4, "e":Ljavax/net/ssl/SSLHandshakeException;
    :try_start_e
    const-string v5, "SSLHandshakeException"

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 123
    .end local v4    # "e":Ljavax/net/ssl/SSLHandshakeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catch_d
    move-exception v4

    .line 93
    .local v4, "e":Ljava/net/URISyntaxException;
    :try_start_f
    const-string v5, "URISyntaxException"

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 123
    .end local v4    # "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    goto :goto_1

    .line 90
    :catch_e
    move-exception v4

    .line 91
    .local v4, "e":Lcom/alipay/mobile/common/transport/http/HttpException;
    :try_start_10
    const-string v5, "HttpException"

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 123
    .end local v4    # "e":Lcom/alipay/mobile/common/transport/http/HttpException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 123
    :catchall_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private a(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processException, exception name = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] code=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] e=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0, p3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "msg":Ljava/lang/String;
    instance-of v1, p3, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v1, :cond_0

    .line 139
    move-object v1, p3

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    .line 140
    .local v2, "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result p2

    .line 141
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 145
    .end local v2    # "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const/16 v1, 0xd

    if-eq p2, v1, :cond_1

    .line 147
    const/16 p2, 0xd

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .local v1, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a:Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 154
    throw v1
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 196
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->enableExtensions(Ljava/net/HttpURLConnection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[enableExtensions] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private b()Lcom/alipay/mobile/common/transport/Response;
    .locals 7

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "By Http/Https to request. operationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  method=POST url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 160
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    .line 166
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 168
    move-object v0, v2

    const/16 v3, 0x2328

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 169
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 171
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->c(Ljava/net/HttpURLConnection;)V

    .line 173
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a(Ljava/net/HttpURLConnection;)V

    .line 176
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 177
    .local v3, "headers":Ljava/util/ArrayList;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/Header;

    .line 178
    .local v4, "header":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v4    # "header":Lorg/apache/http/Header;
    goto :goto_0

    .line 180
    :cond_0
    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[doCall] Request headers = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->b(Ljava/net/HttpURLConnection;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->d(Ljava/net/HttpURLConnection;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->e(Ljava/net/HttpURLConnection;)V

    .line 187
    return-object v1

    .line 189
    .end local v3    # "headers":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->e(Ljava/net/HttpURLConnection;)V

    throw v1
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 9
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 205
    .local v2, "rawReqData":[B
    move-object v2, v0

    const-string v3, "HttpWorker"

    if-nez v0, :cond_0

    .line 206
    const-string v0, "[sendRequest] rawReqData is null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    move-object v0, v1

    .line 214
    .local v0, "reqData":[B
    move-object v0, v2

    array-length v4, v2

    int-to-long v4, v4

    sget-wide v6, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 215
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v4, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    .local v1, "zipper":Ljava/io/OutputStream;
    move-object v1, v5

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 218
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 221
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v5

    .line 226
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 229
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    goto :goto_1

    .line 230
    :catchall_1
    move-exception v5

    .line 234
    :goto_1
    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v1    # "zipper":Ljava/io/OutputStream;
    .end local v4    # "arr":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 237
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[sendRequest] The request has been sent. body len = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private static c(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 247
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setUseCaches2False exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private d(Ljava/net/HttpURLConnection;)Lcom/alipay/mobile/common/transport/Response;
    .locals 9

    .line 259
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 260
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[obtainHttpUrlResponse] Accepted rpc response headers. responseCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", responseMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_9

    .line 268
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 270
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 273
    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    .line 274
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 278
    if-eqz v6, :cond_0

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 283
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 287
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v6, v8}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    goto :goto_1

    .line 291
    :cond_1
    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 299
    :cond_3
    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v3}, Lorg/apache/http/entity/InputStreamEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v3}, Lorg/apache/http/entity/InputStreamEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object p1

    .line 305
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    const v4, 0x19000

    :try_start_0
    new-array v4, v4, [B

    .line 308
    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 309
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 311
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 316
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 321
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 322
    new-instance v5, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-direct {v5, v2, v0, v1, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    nop

    .line 327
    if-eqz p1, :cond_6

    .line 328
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 330
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 332
    :cond_6
    :goto_3
    nop

    .line 335
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    goto :goto_5

    .line 336
    :catchall_1
    move-exception p1

    .line 323
    :goto_5
    return-object v5

    .line 317
    :cond_7
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cancel request :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 318
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",cancelMsg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 326
    :catchall_2
    move-exception v0

    .line 327
    if-eqz p1, :cond_8

    .line 328
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    .line 330
    :catchall_3
    move-exception p1

    goto :goto_7

    .line 332
    :cond_8
    :goto_6
    nop

    .line 335
    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 338
    goto :goto_8

    .line 336
    :catchall_4
    move-exception p1

    .line 338
    :goto_8
    throw v0

    .line 264
    :cond_9
    new-instance p1, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1
.end method

.method private static e(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .line 359
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 360
    .local v0, "outputStream":Ljava/io/OutputStream;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    goto :goto_0

    .line 363
    :catchall_0
    move-exception v1

    .line 368
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 369
    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v0, v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    goto :goto_1

    .line 372
    :catchall_1
    move-exception v0

    .line 377
    :goto_1
    if-eqz p0, :cond_2

    .line 378
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 380
    :catchall_2
    move-exception v0

    .line 383
    return-void

    .line 382
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public call()Lcom/alipay/mobile/common/transport/Response;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->a()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->c:Ljava/lang/String;

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->c:Ljava/lang/String;

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;->c:Ljava/lang/String;

    return-object v0

    .line 353
    :cond_1
    const-string v0, ""

    return-object v0
.end method

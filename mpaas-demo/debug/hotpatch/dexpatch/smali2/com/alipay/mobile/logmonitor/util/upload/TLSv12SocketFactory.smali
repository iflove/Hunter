.class public Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSv12SocketFactory.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;


# instance fields
.field private b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 29
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;
    .locals 2

    .line 18
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a:Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a:Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;-><init>()V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a:Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a:Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    return-object v0
.end method

.method private static a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 74
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    .line 75
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object v1, v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "supportedProtocols":[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

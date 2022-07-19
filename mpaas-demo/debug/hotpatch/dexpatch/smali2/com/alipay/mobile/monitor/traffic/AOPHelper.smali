.class public Lcom/alipay/mobile/monitor/traffic/AOPHelper;
.super Ljava/lang/Object;
.source "AOPHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 1

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isTrafficMonitorEnabled()Z

    move-result v0

    return v0
.end method

.method public static getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 11
    .param p0, "urlConnection"    # Ljava/net/URLConnection;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 28
    .local v1, "ex":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 31
    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .local v3, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 33
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "url":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 38
    .local v4, "responseLength":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v2, v6, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v6

    move-wide v4, v6

    .line 41
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v4, v2

    move-wide v9, v4

    goto :goto_1

    .line 41
    :cond_1
    move-wide v9, v4

    .line 46
    .end local v4    # "responseLength":J
    .local v9, "responseLength":J
    :goto_1
    const-wide/16 v4, 0x0

    const-string v8, "UrlConnectionAOP"

    move-wide v6, v9

    invoke-static/range {v3 .. v8}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .end local v3    # "url":Ljava/lang/String;
    .end local v9    # "responseLength":J
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v2

    .line 48
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "AOPHelper"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 56
    return-object v0

    .line 53
    :cond_3
    throw v1
.end method

.method public static getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 11
    .param p0, "socket"    # Ljava/net/Socket;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 67
    .local v1, "ex":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 70
    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .local v3, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .local v2, "host":Ljava/lang/String;
    goto/16 :goto_2

    .line 77
    .end local v2    # "host":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "host":Ljava/lang/String;
    goto :goto_2

    .line 79
    .end local v2    # "host":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "host":Ljava/lang/String;
    goto :goto_2

    .line 81
    .end local v2    # "host":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 84
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    aget-byte v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 86
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "host":Ljava/lang/String;
    goto :goto_2

    .line 91
    .end local v2    # "host":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "unknown_host"

    .line 93
    .restart local v2    # "host":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "SocketAOP"

    invoke-static/range {v5 .. v10}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v2    # "host":Ljava/lang/String;
    goto :goto_3

    .line 97
    :catchall_0
    move-exception v2

    .line 98
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "AOPHelper"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 106
    return-object v0

    .line 103
    :cond_7
    throw v1
.end method

.method public static handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestLength"    # J
    .param p3, "responseLength"    # J
    .param p5, "biz"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->obtain(Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    move-result-object v0

    .line 114
    .local v0, "traffic":Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMpaasTrafficMonitor()Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;->handleTraffic(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleTraffic, url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requestLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", responseLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

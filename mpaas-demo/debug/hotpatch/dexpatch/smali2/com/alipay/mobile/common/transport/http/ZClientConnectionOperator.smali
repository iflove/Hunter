.class public Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "ZClientConnectionOperator.java"


# static fields
.field public static DEFAULT_MIN_CONNECT_COUNT:B = 0x0t

.field public static final MAX_DNS_RETRY_COUNT:I = 0x14

.field private static final a:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private b:B

.field private c:B

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 48
    const/4 v0, 0x4

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->DEFAULT_MIN_CONNECT_COUNT:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 50
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 52
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    .line 63
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->d:Ljava/util/List;

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->d:Ljava/util/List;

    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    .locals 4
    .param p0, "target"    # Lorg/apache/http/HttpHost;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "connectSuccess"    # Z
    .param p3, "rtt"    # I

    .line 499
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V

    .line 504
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v0

    if-eqz p2, :cond_1

    int-to-double v1, p3

    goto :goto_0

    :cond_1
    const-wide v1, 0x40b3880000000000L    # 5000.0

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimate(DB)V

    .line 506
    return-void
.end method

.method private a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 10
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;

    .line 105
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    const-string v1, "T"

    const-string v2, "ORIGHC"

    const/4 v3, 0x0

    const-string v4, "ZClientConnectionOperator. isNetworkAvailable == false "

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "ClientConnectionOperator"

    if-ne v0, v6, :cond_2

    .line 108
    :try_start_0
    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 109
    iput-byte v6, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putDataItem1 exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 115
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    add-int/2addr v1, v7

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    if-lt v1, v5, :cond_0

    .line 129
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 130
    const-string v1, "ZClientConnectionOperator. use cust retry!"

    invoke-static {v8, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->openConnectionCustome(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 132
    iput-byte v7, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    return-void

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZClientConnectionOperator. orig err count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    throw v0

    .line 120
    :cond_1
    invoke-static {v8, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    throw v0

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->openConnectionCustome(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 140
    iput-byte v7, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    return-void

    .line 141
    :catch_2
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    .line 146
    instance-of v9, v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v9, :cond_4

    move-object v9, v0

    check-cast v9, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 147
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/http/HttpException;->isCanRetry()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 148
    :cond_3
    throw v0

    .line 151
    :cond_4
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 157
    iget-byte v4, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    add-int/2addr v4, v7

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    if-lt v4, v5, :cond_5

    .line 162
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 163
    const-string v3, "ZClientConnectionOperator. use origin retry!"

    invoke-static {v8, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 165
    iput-byte v6, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    .line 168
    :try_start_4
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    return-void

    .line 169
    :catch_3
    move-exception v1

    .line 170
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "putDataItem exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/lang/Exception;
    return-void

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZClientConnectionOperator. cust err count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    throw v0

    .line 152
    :cond_6
    invoke-static {v8, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    throw v0
.end method

.method private static a(Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p0, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    .local v1, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v1, v0

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mRadicalStrategy:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "RADICAL"

    const-string v3, "T"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v1    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    :cond_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[recordLogsForPre] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientConnectionOperator"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(JILjava/lang/Throwable;Lorg/apache/http/conn/OperatedClientConnection;)Z
    .locals 9
    .param p0, "tStartDnsTime"    # J
    .param p2, "retryCount"    # I
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 575
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 576
    return v1

    .line 579
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 580
    .local v6, "dnsCost":J
    move-wide v6, v2

    const-string v0, "ClientConnectionOperator"

    cmp-long v8, v2, v4

    if-ltz v8, :cond_3

    const-wide/16 v2, 0x2ee0

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    const/16 v2, 0x14

    if-lt p2, v2, :cond_2

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[isCanRetryDns] Can not redns. retryCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return v1

    .line 591
    :cond_2
    const-string v2, "[isCanRetryDns] Will sleep 1s."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    nop

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[isCanRetryDns] Can redns. Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x1

    return v0

    .line 594
    :catchall_0
    move-exception v2

    .line 595
    .local v2, "es":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[isCanRetryDns] sleep exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return v1

    .line 581
    .end local v2    # "es":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[isCanRetryDns] Can not redns\uff0c dnsCost = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",  Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return v1
.end method

.method private static a(Lorg/apache/http/conn/OperatedClientConnection;)Z
    .locals 4
    .param p0, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 607
    instance-of v0, p0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;

    const/4 v1, 0x0

    const-string v2, "ClientConnectionOperator"

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[isShutdownZ] Not instanceof ZDefaultClientConnection. conn = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return v1

    .line 611
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;->isShutdownZ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    return v1

    .line 614
    :cond_1
    const-string v0, "[isShutdownZ] Connection shutdown by isShutdownZ, don\'t retry!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)[Ljava/net/InetAddress;
    .locals 7
    .param p0, "target"    # Lorg/apache/http/HttpHost;
    .param p1, "httpContext"    # Lorg/apache/http/protocol/HttpContext;

    const-string v0, "ClientConnectionOperator"

    .line 619
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 620
    .local v3, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v3, v1

    const-string v4, "DNS_TIME"

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    move-object v1, v2

    .local v1, "addresses":[Ljava/net/InetAddress;
    goto :goto_0

    .line 620
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_0
    move-object v1, v2

    .line 626
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v5

    .line 627
    .local v2, "dnsClient":Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    move-object v2, v5

    if-eqz v5, :cond_3

    .line 628
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;

    move-result-object v5

    .line 629
    move-object v1, v5

    if-eqz v5, :cond_2

    array-length v5, v1

    if-nez v5, :cond_1

    goto :goto_1

    .line 632
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ZClientConnectionOperator addresses len = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",ips = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 630
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 636
    :cond_3
    const-string v5, "ZClientConnectionOperator dnsClient is null"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 646
    .end local v2    # "dnsClient":Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    :goto_2
    if-eqz v3, :cond_4

    .line 647
    :goto_3
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    goto :goto_4

    .line 646
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ZClientConnectionOperator Exception"

    invoke-static {v0, v5, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    .line 646
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_4

    .line 647
    goto :goto_3

    .line 650
    :cond_4
    :goto_4
    return-object v1

    .line 639
    :catch_1
    move-exception v2

    .line 640
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ZClientConnectionOperator ex:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    nop

    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v3    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .end local p0    # "target":Lorg/apache/http/HttpHost;
    .end local p1    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    .restart local v3    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    .restart local p0    # "target":Lorg/apache/http/HttpHost;
    .restart local p1    # "httpContext":Lorg/apache/http/protocol/HttpContext;
    :goto_5
    if-eqz v3, :cond_5

    .line 647
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    :cond_5
    throw v0
.end method

.method private static a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/conn/OperatedClientConnection;)[Ljava/net/InetAddress;
    .locals 11
    .param p0, "target"    # Lorg/apache/http/HttpHost;
    .param p1, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "hitFastReturnFalse":Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 535
    .local v3, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isFastReturnFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v3, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskRetryedCount:I

    if-nez v1, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 541
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 542
    .local v4, "tStartDnsTime":J
    const/4 v1, 0x0

    .line 544
    .local v1, "retryCount":I
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 545
    :catchall_0
    move-exception v6

    .line 547
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v4, v5, v1, v6, p2}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(JILjava/lang/Throwable;Lorg/apache/http/conn/OperatedClientConnection;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v2

    .line 552
    .local v7, "unknownHostException":Ljava/net/UnknownHostException;
    instance-of v8, v6, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_1

    .line 553
    move-object v7, v6

    check-cast v7, Ljava/net/UnknownHostException;

    goto :goto_1

    .line 555
    :cond_1
    new-instance v8, Ljava/net/UnknownHostException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown host: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, "exceptionWrapper":Ljava/net/UnknownHostException;
    move-object v2, v8

    invoke-virtual {v8, v6}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 557
    move-object v7, v2

    .line 560
    .end local v2    # "exceptionWrapper":Ljava/net/UnknownHostException;
    :goto_1
    if-nez v0, :cond_2

    .line 561
    throw v7

    .line 565
    :cond_2
    const-string v8, "ClientConnectionOperator"

    const-string v9, "[getInetAddresses] Hin fast return failure."

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v8, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v7}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    .local v2, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/transport/http/HttpException;->setCanRetry(Z)V

    .line 568
    throw v2

    .line 542
    .end local v2    # "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1
    .param p0, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 527
    const-string v0, "NET_CONTEXT"

    invoke-interface {p0, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    return-object v0
.end method

.method private static b(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    .locals 4
    .param p0, "target"    # Lorg/apache/http/HttpHost;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "connectSuccess"    # Z
    .param p3, "rtt"    # I

    .line 511
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 512
    .local v1, "alipayDNSHelper":Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->feedback(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 515
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->feedback(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 518
    if-nez p2, :cond_0

    .line 519
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v1    # "alipayDNSHelper":Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
    :cond_0
    return-void

    .line 521
    :catchall_0
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "ClientConnectionOperator"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(JILjava/lang/Throwable;Lorg/apache/http/conn/OperatedClientConnection;)Z
    .locals 1
    .param p0, "tStartDnsTime"    # J
    .param p2, "retryCount"    # I
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 603
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(JILjava/lang/Throwable;Lorg/apache/http/conn/OperatedClientConnection;)Z

    move-result v0

    return v0
.end method

.method private static c(Lorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p0, "httpContext"    # Lorg/apache/http/protocol/HttpContext;

    .line 701
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 702
    return v0

    .line 705
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 706
    .local v2, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 707
    return v0

    .line 710
    :cond_1
    iget v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    if-gtz v1, :cond_2

    .line 711
    return v0

    .line 714
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    sub-long/2addr v3, v5

    .line 716
    .local v3, "timeLeft":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "[isAllowedRetryDuration] timeLeft = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", startExecutionTime = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", allowedRetryDuration = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ClientConnectionOperator"

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-wide/16 v6, 0x1

    cmp-long v1, v3, v6

    if-gez v1, :cond_3

    .line 720
    const-string v1, "[isAllowedRetryDuration] Illegal time left."

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return v0

    .line 724
    :cond_3
    iget v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    int-to-long v6, v1

    cmp-long v1, v3, v6

    if-lez v1, :cond_4

    .line 725
    const-string v1, "[isAllowedRetryDuration] No time left."

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return v0

    .line 728
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "e"    # Ljava/io/IOException;

    .line 189
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string v0, "ClientConnectionOperator"

    const-string v1, "Connection shutdown, don\'t retry!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    throw p2

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    throw p2
.end method

.method public connect(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V
    .locals 35

    .line 353
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    const-string v10, "]"

    const-string v9, "TCP_TIME"

    const-string v8, "Close error socket->"

    const-string v7, "close socket error = "

    const-string v6, ", execute retry connect."

    const-string v5, " exception: "

    const-string v4, "Connect "

    move-object/from16 v16, v9

    const-string v9, ":"

    const-string v13, "ClientConnectionOperator"

    sget-byte v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->DEFAULT_MIN_CONNECT_COUNT:B

    move-object/from16 v17, v4

    array-length v4, v15

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 355
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_19

    .line 357
    move/from16 v18, v4

    array-length v4, v15

    if-lt v0, v4, :cond_0

    .line 358
    const/16 v19, 0x0

    goto :goto_1

    .line 357
    :cond_0
    move/from16 v19, v0

    .line 361
    :goto_1
    aget-object v4, v15, v19

    .line 363
    invoke-interface/range {p8 .. p8}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v15

    .line 364
    invoke-interface {v2, v15, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 367
    nop

    .line 370
    move/from16 v20, v14

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 371
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 374
    :try_start_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 375
    move-object/from16 v23, v4

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v12, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 376
    if-eqz v14, :cond_1

    .line 377
    move-object/from16 v24, v5

    :try_start_4
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v25, v6

    :try_start_5
    const-string v6, "TARGET_HOST"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v26, v7

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 391
    :catchall_0
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v9, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v9, v23

    move-object/from16 v29, v24

    goto/16 :goto_10

    .line 376
    :cond_1
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 379
    :goto_2
    iget v5, v14, Lcom/alipay/mobile/common/transport/context/TransportContext;->tcpCount:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v14, Lcom/alipay/mobile/common/transport/context/TransportContext;->tcpCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 380
    const/16 v27, 0x0

    move-object/from16 v5, v17

    move/from16 v17, v18

    move-object/from16 v6, v23

    move/from16 v18, v4

    move-object/from16 v4, p8

    move-object/from16 v28, v5

    move-object/from16 v29, v24

    move-object v5, v15

    move-object/from16 v30, v25

    move-object v6, v0

    move-object/from16 v31, v26

    const/4 v0, 0x1

    move/from16 v7, v18

    move-object/from16 v32, v8

    move-object/from16 v8, p3

    move-object/from16 v33, v9

    move-object/from16 v12, v16

    move/from16 v9, v27

    move-object v1, v10

    move-object/from16 v10, p5

    :try_start_7
    invoke-interface/range {v4 .. v10}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 384
    if-eq v15, v4, :cond_2

    .line 385
    nop

    .line 386
    :try_start_8
    invoke-interface {v2, v4, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v15, v4

    goto :goto_3

    .line 391
    :catchall_2
    move-exception v0

    move-object/from16 v8, p9

    move-object v7, v1

    move-object v15, v4

    goto/16 :goto_f

    :cond_2
    :goto_3
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    sub-long v4, v4, v21

    .line 392
    if-eqz v14, :cond_3

    .line 393
    :try_start_a
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 463
    :catchall_3
    move-exception v0

    move-object/from16 v8, p9

    move-object v4, v0

    move-object v7, v1

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    :goto_4
    move-object/from16 v12, p7

    goto/16 :goto_1b

    .line 455
    :catch_0
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    move-object/from16 v1, p0

    :goto_5
    move-object/from16 v12, p7

    goto/16 :goto_1f

    .line 449
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    move-object/from16 v1, p0

    goto/16 :goto_22

    .line 435
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    goto/16 :goto_e

    .line 397
    :cond_3
    :goto_6
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ZClientConnectionOperator tcp connect success. host=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 400
    move-object/from16 v6, p4

    move-object v7, v1

    move-object/from16 v1, p0

    :try_start_c
    invoke-virtual {v1, v15, v6, v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 401
    move-object/from16 v8, p9

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 402
    const-string v10, "SSL_TIME"

    if-eqz v14, :cond_4

    .line 403
    :try_start_d
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v9

    invoke-interface {v9, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    .line 463
    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object v6, v12

    move-object/from16 v9, v23

    goto :goto_4

    .line 455
    :catch_3
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto :goto_5

    .line 449
    :catch_4
    move-exception v0

    move-object v11, v0

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    goto/16 :goto_14

    .line 435
    :catch_5
    move-exception v0

    move-object v11, v0

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    move/from16 v14, v20

    move-object/from16 v9, v23

    goto/16 :goto_16

    .line 407
    :cond_4
    :goto_7
    :try_start_e
    iget v9, v14, Lcom/alipay/mobile/common/transport/context/TransportContext;->sslCount:I

    add-int/2addr v9, v0

    iput v9, v14, Lcom/alipay/mobile/common/transport/context/TransportContext;->sslCount:I

    .line 408
    nop

    .line 409
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v9

    .line 410
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object v6, v12

    move-object/from16 v12, p6

    :try_start_f
    invoke-virtual {v12, v0}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v0

    .line 408
    const/4 v12, 0x1

    invoke-interface {v8, v15, v9, v0, v12}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 414
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "ZClientConnectionOperator ssl connect success. host=["

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 415
    long-to-int v5, v4

    move-object/from16 v9, v23

    const/4 v4, 0x1

    :try_start_10
    invoke-static {v3, v9, v4, v5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 417
    if-eqz v14, :cond_5

    .line 418
    :try_start_11
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    goto :goto_8

    .line 463
    :catchall_5
    move-exception v0

    goto/16 :goto_b

    .line 455
    :catch_6
    move-exception v0

    goto/16 :goto_c

    .line 421
    :cond_5
    :goto_8
    if-eq v0, v15, :cond_6

    .line 422
    invoke-interface {v2, v0, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 424
    :cond_6
    move-object/from16 v12, p7

    :try_start_12
    invoke-interface {v12, v0}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 425
    return-void

    .line 417
    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v9, v23

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v6, v12

    move-object/from16 v9, v23

    :goto_9
    move-object/from16 v12, p7

    :goto_a
    if-eqz v14, :cond_7

    .line 418
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    :cond_7
    throw v0

    .line 427
    :cond_8
    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v12, p7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 428
    long-to-int v0, v4

    const/4 v4, 0x1

    invoke-static {v3, v9, v4, v0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V

    .line 430
    :cond_9
    invoke-interface {v12, v15}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 477
    return-void

    .line 463
    :catchall_9
    move-exception v0

    move-object/from16 v8, p9

    move-object v6, v12

    move-object/from16 v9, v23

    goto :goto_b

    .line 455
    :catch_7
    move-exception v0

    move-object/from16 v8, p9

    move-object v6, v12

    move-object/from16 v9, v23

    goto :goto_c

    .line 449
    :catch_8
    move-exception v0

    move-object/from16 v8, p9

    move-object v6, v12

    move-object/from16 v9, v23

    goto :goto_d

    .line 435
    :catch_9
    move-exception v0

    move-object/from16 v8, p9

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v12, p7

    goto/16 :goto_15

    .line 463
    :catchall_a
    move-exception v0

    move-object/from16 v8, p9

    move-object v7, v1

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    :goto_b
    move-object/from16 v12, p7

    goto/16 :goto_1a

    .line 455
    :catch_a
    move-exception v0

    move-object/from16 v8, p9

    move-object v7, v1

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    :goto_c
    move-object/from16 v12, p7

    goto/16 :goto_12

    .line 449
    :catch_b
    move-exception v0

    move-object/from16 v8, p9

    move-object v7, v1

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    :goto_d
    move-object/from16 v12, p7

    goto/16 :goto_13

    .line 435
    :catch_c
    move-exception v0

    move-object/from16 v8, p9

    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v12, p7

    move-object v11, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v6

    move/from16 v14, v20

    :goto_e
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    move-object/from16 v1, p0

    goto/16 :goto_26

    .line 391
    :catchall_b
    move-exception v0

    move-object/from16 v8, p9

    move-object v7, v1

    :goto_f
    move-object v6, v12

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    move-object/from16 v12, p7

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v9, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v9, v23

    :goto_10
    move-object/from16 v8, p9

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v8, p9

    move-object v9, v4

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v21

    .line 392
    if-eqz v14, :cond_a

    .line 393
    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v6, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    throw v0
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .line 463
    :catchall_f
    move-exception v0

    goto/16 :goto_1a

    .line 455
    :catch_d
    move-exception v0

    :goto_12
    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move/from16 v14, v20

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto :goto_17

    .line 449
    :catch_e
    move-exception v0

    :goto_13
    move-object v11, v0

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move/from16 v14, v20

    :goto_14
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto :goto_18

    .line 435
    :catch_f
    move-exception v0

    :goto_15
    move-object v11, v0

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move/from16 v14, v20

    :goto_16
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_19

    .line 455
    :catch_10
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v8, p9

    move-object v9, v4

    move-object v6, v5

    move-object/from16 v18, v10

    move/from16 v14, v20

    move-object/from16 v5, v28

    :goto_17
    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto/16 :goto_1f

    .line 449
    :catch_11
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v8, p9

    move-object v9, v4

    move-object v11, v0

    move-object v6, v5

    move-object/from16 v18, v10

    move/from16 v14, v20

    move-object/from16 v5, v28

    :goto_18
    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto/16 :goto_22

    .line 435
    :catch_12
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v8, p9

    move-object v9, v4

    move-object v11, v0

    move-object v6, v5

    move-object/from16 v18, v10

    move/from16 v14, v20

    move-object/from16 v5, v28

    :goto_19
    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto/16 :goto_26

    .line 463
    :catchall_10
    move-exception v0

    move-object/from16 v12, p7

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v6, v16

    move-object/from16 v28, v17

    move/from16 v17, v18

    move-object/from16 v8, p9

    move-object v9, v4

    :goto_1a
    move-object v4, v0

    .line 464
    :goto_1b
    nop

    .line 466
    const/4 v5, -0x1

    const/4 v10, 0x0

    :try_start_13
    invoke-static {v3, v9, v10, v5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14

    .line 467
    add-int/lit8 v0, v17, -0x1

    move/from16 v14, v20

    if-ne v14, v0, :cond_c

    .line 468
    :try_start_14
    instance-of v0, v4, Ljava/io/IOException;

    if-eqz v0, :cond_b

    .line 469
    move-object v0, v4

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 471
    :cond_b
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, v4}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 473
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    .line 477
    :catchall_11
    move-exception v0

    move-object v12, v0

    move-object v11, v4

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto/16 :goto_2c

    .line 478
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    if-eqz v15, :cond_e

    :try_start_15
    invoke-virtual {v15}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 482
    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    move-object/from16 v15, v32

    :try_start_16
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    move-object/from16 v8, v31

    goto :goto_1d

    .line 485
    :catchall_12
    move-exception v0

    goto :goto_1c

    .line 481
    :cond_d
    move-object/from16 v15, v32

    move-object/from16 v8, v31

    goto :goto_1d

    .line 485
    :catchall_13
    move-exception v0

    move-object/from16 v15, v32

    .line 486
    :goto_1c
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v8, v31

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 481
    :cond_e
    move-object/from16 v8, v31

    move-object/from16 v15, v32

    .line 487
    :goto_1d
    nop

    .line 489
    :goto_1e
    instance-of v0, v4, Ljava/io/IOException;

    if-eqz v0, :cond_f

    .line 490
    check-cast v4, Ljava/io/IOException;

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    move-object v4, v15

    goto/16 :goto_25

    .line 489
    :cond_f
    move-object v4, v15

    const/4 v12, 0x0

    goto/16 :goto_2a

    .line 477
    :catchall_14
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    move-object v12, v0

    move-object/from16 v11, v20

    goto/16 :goto_2c

    .line 455
    :catch_13
    move-exception v0

    move-object/from16 v12, p7

    move/from16 v14, v20

    move-object/from16 v34, v9

    move-object v9, v4

    move-object v4, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v17

    move/from16 v17, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v34

    :goto_1f
    move-object/from16 v20, v15

    move-object v15, v0

    .line 456
    nop

    .line 457
    const/4 v11, -0x1

    const/4 v12, 0x0

    :try_start_17
    invoke-static {v3, v9, v12, v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    .line 458
    add-int/lit8 v0, v17, -0x1

    if-eq v14, v0, :cond_11

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    if-eqz v20, :cond_10

    :try_start_18
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 482
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    goto :goto_20

    .line 485
    :catchall_15
    move-exception v0

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 487
    :cond_10
    :goto_20
    nop

    .line 490
    :goto_21
    check-cast v15, Ljava/io/IOException;

    invoke-virtual {v1, v2, v15}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    goto/16 :goto_25

    .line 459
    :cond_11
    :try_start_19
    new-instance v0, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-virtual {v15}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v15}, Lorg/apache/http/conn/ConnectTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 461
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    .line 477
    :catchall_16
    move-exception v0

    move-object v12, v0

    move-object v11, v15

    move-object/from16 v15, v20

    goto/16 :goto_2c

    .line 449
    :catch_14
    move-exception v0

    move/from16 v14, v20

    move-object/from16 v34, v9

    move-object v9, v4

    move-object v4, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v17

    move/from16 v17, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v34

    move-object v11, v0

    .line 450
    :goto_22
    nop

    .line 451
    const/4 v1, 0x0

    const/4 v12, -0x1

    :try_start_1a
    invoke-static {v3, v9, v1, v12}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 452
    add-int/lit8 v0, v17, -0x1

    if-eq v14, v0, :cond_13

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    if-eqz v15, :cond_12

    :try_start_1b
    invoke-virtual {v15}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 482
    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    goto :goto_23

    .line 485
    :catchall_17
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 487
    :cond_12
    :goto_23
    nop

    .line 490
    :goto_24
    check-cast v11, Ljava/io/IOException;

    move-object/from16 v1, p0

    invoke-virtual {v1, v2, v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    :goto_25
    const/4 v12, 0x0

    goto/16 :goto_2a

    .line 453
    :cond_13
    move-object/from16 v1, p0

    :try_start_1c
    throw v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_18

    .line 477
    :catchall_18
    move-exception v0

    goto/16 :goto_2b

    .line 435
    :catch_15
    move-exception v0

    move/from16 v14, v20

    move-object/from16 v34, v9

    move-object v9, v4

    move-object v4, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v17

    move/from16 v17, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v34

    move-object v11, v0

    .line 436
    :goto_26
    nop

    .line 437
    const/4 v1, 0x0

    const/4 v12, -0x1

    :try_start_1d
    invoke-static {v3, v9, v1, v12}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;ZI)V

    .line 438
    add-int/lit8 v0, v17, -0x1

    if-ne v14, v0, :cond_15

    .line 440
    instance-of v0, v11, Ljava/net/ConnectException;

    if-eqz v0, :cond_14

    .line 441
    move-object v0, v11

    check-cast v0, Ljava/net/ConnectException;

    goto :goto_27

    .line 443
    :cond_14
    new-instance v0, Ljava/net/ConnectException;

    invoke-virtual {v11}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, v11}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 446
    :goto_27
    new-instance v1, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    .line 478
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    if-eqz v15, :cond_16

    :try_start_1e
    invoke-virtual {v15}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 482
    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_19

    goto :goto_28

    .line 485
    :catchall_19
    move-exception v0

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 487
    :cond_16
    :goto_28
    nop

    .line 490
    :goto_29
    check-cast v11, Ljava/io/IOException;

    const/4 v12, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v2, v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    .line 355
    :goto_2a
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v0, v19, 0x1

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v15, p10

    move-object v9, v10

    move-object/from16 v10, v18

    move-object/from16 v34, v8

    move-object v8, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v34

    goto/16 :goto_0

    .line 477
    :catchall_1a
    move-exception v0

    move-object/from16 v1, p0

    :goto_2b
    move-object v12, v0

    .line 478
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    if-eqz v15, :cond_17

    :try_start_1f
    invoke-virtual {v15}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 482
    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1b

    goto :goto_2d

    .line 485
    :catchall_1b
    move-exception v0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 487
    :cond_17
    :goto_2d
    nop

    .line 489
    :goto_2e
    instance-of v0, v11, Ljava/io/IOException;

    if-eqz v0, :cond_18

    .line 490
    check-cast v11, Ljava/io/IOException;

    invoke-virtual {v1, v2, v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    :cond_18
    throw v12

    .line 496
    :cond_19
    return-void
.end method

.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 3

    .line 691
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 692
    :catchall_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ClientConnectionOperator"

    const-string v2, "[createConnection] Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    .end local v0    # "e":Ljava/lang/Throwable;
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 6
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/protocol/HttpContext;)V

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    .line 77
    instance-of v2, v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 78
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpException;->isCanRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    throw v1

    .line 83
    :cond_1
    :goto_1
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c(Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const/16 v2, 0x78

    const-string v3, "ClientConnectionOperator"

    if-ge v0, v2, :cond_2

    .line 93
    :try_start_1
    const-string v2, "[openConnection] Retry the build task after 1s ."

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    nop

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .restart local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 96
    .local v2, "e1":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[openConnection] Maybe thread interrupted. Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    throw v1

    .line 88
    .end local v2    # "e1":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[openConnection] Limit connection, i = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    throw v1

    .line 84
    :cond_3
    throw v1
.end method

.method public openConnectionCustome(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 20
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;

    .line 202
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-eqz v13, :cond_10

    .line 206
    if-eqz v14, :cond_f

    .line 212
    if-eqz p5, :cond_e

    .line 216
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 221
    iget-object v0, v12, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 222
    .local v2, "schm":Lorg/apache/http/conn/scheme/Scheme;
    move-object v7, v0

    .end local v2    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .local v7, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 225
    .local v2, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v15, v0

    .end local v2    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v15, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v0, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 227
    .local v0, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v2, v15

    check-cast v2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .local v2, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    move-object v3, v1

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .local v3, "addresses":[Ljava/net/InetAddress;
    goto :goto_0

    .line 229
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v2    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    :cond_0
    move-object v0, v15

    .line 230
    .restart local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v2, 0x0

    .restart local v2    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    move-object v3, v1

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 234
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v2    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    .local v16, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v17, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v2

    move-object/from16 v11, p4

    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .local v0, "addresses":[Ljava/net/InetAddress;
    goto :goto_1

    .line 237
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    :cond_1
    move-object/from16 v11, p4

    invoke-static {v14, v11, v13}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/conn/OperatedClientConnection;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 241
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move v10, v2

    .line 244
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .local v10, "connRetryCount":I
    .local v18, "addresses":[Ljava/net/InetAddress;
    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v8, v15

    move-object/from16 v9, v16

    move v14, v10

    .end local v10    # "connRetryCount":I
    .local v14, "connRetryCount":I
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    :try_start_0
    invoke-virtual/range {v1 .. v11}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->connect(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 247
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 249
    .local v1, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openConnectionCustome ex=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ClientConnectionOperator"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v12, v13, v1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->assertShutdown(Lorg/apache/http/conn/OperatedClientConnection;Ljava/io/IOException;)V

    .line 256
    const/4 v0, 0x4

    if-ge v14, v0, :cond_c

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 268
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 274
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->isFromLocalDns()Z

    move-result v0

    if-nez v0, :cond_9

    .line 280
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->isFromHttpDns()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    const-string/jumbo v0, "openConnectionCustome ex,remove ips in httpdns,try iprank"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    move-object/from16 v3, v19

    .line 284
    .local v3, "dnsClient":Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->setErrorByHost(Ljava/lang/String;)V

    .line 288
    :cond_2
    const/4 v4, 0x0

    .line 290
    .local v4, "allByNameFromInetAddr":[Ljava/net/InetAddress;
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    .line 291
    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByName(Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    .line 294
    .end local v0    # "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    goto :goto_3

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    .local v0, "e1":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AlipayDNSHelper#getAllByName error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v0    # "e1":Ljava/lang/Throwable;
    :goto_3
    if-eqz v4, :cond_3

    array-length v0, v4

    if-eqz v0, :cond_3

    .line 299
    move-object v0, v4

    .line 300
    .end local v18    # "addresses":[Ljava/net/InetAddress;
    .local v0, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    goto/16 :goto_6

    .line 296
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local v18    # "addresses":[Ljava/net/InetAddress;
    :cond_3
    throw v1

    .line 303
    .end local v3    # "dnsClient":Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    .end local v4    # "allByNameFromInetAddr":[Ljava/net/InetAddress;
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->isFromIpRank()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    const-string/jumbo v0, "openConnectionCustome ex,remove ips in iprank,try localdns"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->removeIpsInIpRank(Ljava/lang/String;)V

    .line 309
    const/4 v3, 0x0

    .line 311
    .local v3, "allByNameByLocalDNS":[Ljava/net/InetAddress;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    .line 314
    goto :goto_4

    .line 312
    :catchall_1
    move-exception v0

    .line 313
    .local v0, "e1":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AlipayDNSHelper#getAllByNameByLocalDNS error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v0    # "e1":Ljava/lang/Throwable;
    :goto_4
    if-eqz v3, :cond_5

    array-length v0, v3

    if-eqz v0, :cond_5

    .line 319
    move-object v0, v3

    .line 320
    .end local v18    # "addresses":[Ljava/net/InetAddress;
    .local v0, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    goto :goto_6

    .line 316
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local v18    # "addresses":[Ljava/net/InetAddress;
    :cond_5
    throw v1

    .line 323
    .end local v3    # "allByNameByLocalDNS":[Ljava/net/InetAddress;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->isFromLocalCacheDns()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a()Ljava/util/List;

    move-result-object v0

    const-string v3, "localCacheDns"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 325
    const-string/jumbo v0, "openConnectionCustome exception,remove ips in local cache,try localdns"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->removeCache(Ljava/lang/String;)V

    .line 330
    const/4 v4, 0x0

    .line 332
    .local v4, "inetAddresses":[Ljava/net/InetAddress;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v0

    .line 335
    goto :goto_5

    .line 333
    :catchall_2
    move-exception v0

    .line 334
    .local v0, "e1":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getGetAllByNameHelper#getAllByName error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0    # "e1":Ljava/lang/Throwable;
    :goto_5
    if-eqz v4, :cond_7

    array-length v0, v4

    if-lez v0, :cond_7

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-object v0, v4

    .line 341
    .end local v18    # "addresses":[Ljava/net/InetAddress;
    .local v0, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 241
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inetAddresses":[Ljava/net/InetAddress;
    .restart local v18    # "addresses":[Ljava/net/InetAddress;
    :goto_6
    add-int/lit8 v10, v14, 0x1

    move-object/from16 v14, p2

    move-object/from16 v11, p4

    .end local v14    # "connRetryCount":I
    .restart local v10    # "connRetryCount":I
    goto/16 :goto_2

    .line 337
    .end local v10    # "connRetryCount":I
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "inetAddresses":[Ljava/net/InetAddress;
    .restart local v14    # "connRetryCount":I
    :cond_7
    throw v1

    .line 344
    .end local v4    # "inetAddresses":[Ljava/net/InetAddress;
    :cond_8
    throw v1

    .line 275
    :cond_9
    const-string v0, "Local dns, Don\'t retry"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    throw v1

    .line 269
    :cond_a
    const-string v0, "Logic ip, Don\'t retry"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    throw v1

    .line 263
    :cond_b
    const-string v0, "Network not available, Don\'t retry"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    throw v1

    .line 257
    :cond_c
    const-string v0, "connRetryCount>=4, Don\'t retry"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    throw v1

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v14    # "connRetryCount":I
    .end local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v16    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v17    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v18    # "addresses":[Ljava/net/InetAddress;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 680
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 681
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    const/4 v1, 0x0

    .line 682
    .local v1, "soTimeout":I
    move v1, v0

    if-lez v0, :cond_0

    .line 683
    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->setSndTimeOut(Ljava/net/Socket;J)Z

    move-result v0

    .line 684
    .local v0, "suc":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSndTimeOut result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClientConnectionOperator"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v0    # "suc":Z
    :cond_0
    return-void
.end method

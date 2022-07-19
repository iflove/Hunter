.class public Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTest;
.super Ljava/lang/Object;
.source "SocketTest.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_socketTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 61
    const/16 v0, 0xa

    return v0
.end method

.method public isActivate()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public speedTest(Ljava/lang/String;I)I
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 28
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    .local v0, "begin":J
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 30
    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x50

    invoke-direct {v3, p1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sub-long/2addr v2, v0

    long-to-int v3, v2

    .line 33
    .local v3, "rtt":I
    return v3

    .line 43
    .end local v0    # "begin":J
    .end local v3    # "rtt":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "IPR_socketTest"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 45
    const/4 v0, -0x1

    return v0

    .line 43
    :goto_0
    throw v0
.end method

.class public Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTestImpl;
.super Ljava/lang/Object;
.source "SocketTestImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 41
    const/16 v0, 0x64

    return v0
.end method

.method public isActivate()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public speedTest(Ljava/lang/String;I)I
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 23
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getSpeeTestImpl()Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    .local v1, "speedTest":Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;->speedTest(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return v0

    .line 27
    .end local v1    # "speedTest":Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "IPR_SocketTestImpl"

    const-string v2, "SocketTestImpl exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

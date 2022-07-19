.class public Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest;
.super Ljava/lang/Object;
.source "PingTest.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest$Ping;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isActivate()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public speedTest(Ljava/lang/String;I)I
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 27
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ping -c1 -s1 -w1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest$Ping;->runcmd(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPR_PingTest"

    const-string v2, "PingTest exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

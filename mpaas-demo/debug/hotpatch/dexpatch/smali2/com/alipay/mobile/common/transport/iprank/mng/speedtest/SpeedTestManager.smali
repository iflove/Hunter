.class public Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;
.super Ljava/lang/Object;
.source "SpeedTestManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/ISpeedtest;


# static fields
.field public static final FAKE_WIFI:I = -0x3e8

.field public static final MAX_OVERTIME_RTT:I = 0x270f

.field public static final SPEEDTEST_ERROR:I = -0x1

.field public static final TIMEOUT:I = 0x1388

.field private static b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTest;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTest;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTestImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/SocketTestImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method private a()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager$1;-><init>(Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    .line 61
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    return-object v0

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public speedTest(Ljava/lang/String;I)I
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a()V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;

    .line 80
    .local v1, "speedTest":Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    move-object v1, v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;->speedTest(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "rtt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " complete,the result: ip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",rtt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "IPR_SpeedTestManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-ltz v2, :cond_0

    .line 86
    return v2

    .line 87
    :cond_0
    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_1

    .line 88
    return v3

    .line 91
    .end local v1    # "speedTest":Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    .end local v2    # "rtt":I
    :cond_1
    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

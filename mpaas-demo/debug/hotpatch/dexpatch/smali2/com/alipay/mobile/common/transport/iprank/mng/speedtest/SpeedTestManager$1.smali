.class Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager$1;
.super Ljava/lang/Object;
.source "SpeedTestManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    .param p2, "rhs"    # Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;

    .line 99
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p2}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 100
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 96
    check-cast p1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;

    check-cast p2, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/SpeedTestManager$1;->compare(Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;)I

    move-result p1

    return p1
.end method

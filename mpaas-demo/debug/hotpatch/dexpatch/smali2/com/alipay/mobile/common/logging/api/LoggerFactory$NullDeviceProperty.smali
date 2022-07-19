.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullDeviceProperty;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/DeviceProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullDeviceProperty"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 1616
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullDeviceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoardPlatform()Ljava/lang/String;
    .locals 1

    .line 1740
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 1716
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1717
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .line 1698
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1699
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayID()Ljava/lang/String;
    .locals 1

    .line 1722
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 1

    .line 1728
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1729
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareName()Ljava/lang/String;
    .locals 1

    .line 1734
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1710
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1711
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 1

    .line 1704
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1705
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCoolpadDevice()Z
    .locals 1

    .line 1674
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1675
    const/4 v0, 0x0

    return v0
.end method

.method public isHuaweiDevice()Z
    .locals 1

    .line 1638
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1639
    const/4 v0, 0x0

    return v0
.end method

.method public isLeEcoDevice()Z
    .locals 1

    .line 1644
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1645
    const/4 v0, 0x0

    return v0
.end method

.method public isLenovoDevice()Z
    .locals 1

    .line 1680
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1681
    const/4 v0, 0x0

    return v0
.end method

.method public isMeizuDevice()Z
    .locals 1

    .line 1686
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1687
    const/4 v0, 0x0

    return v0
.end method

.method public isNubiaDevice()Z
    .locals 1

    .line 1668
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1669
    const/4 v0, 0x0

    return v0
.end method

.method public isOnePlusDevice()Z
    .locals 1

    .line 1662
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method public isOppoDevice()Z
    .locals 1

    .line 1632
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method public isQikuDevice()Z
    .locals 1

    .line 1650
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public isSamsungDevice()Z
    .locals 1

    .line 1692
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public isVivoDevice()Z
    .locals 1

    .line 1626
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public isXiaomiDevice()Z
    .locals 1

    .line 1620
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public isZteDevice()Z
    .locals 1

    .line 1656
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1657
    const/4 v0, 0x0

    return v0
.end method

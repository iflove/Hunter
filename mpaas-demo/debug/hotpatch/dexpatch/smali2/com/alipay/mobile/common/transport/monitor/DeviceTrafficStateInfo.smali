.class public Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;
.super Ljava/lang/Object;
.source "DeviceTrafficStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;
    }
.end annotation


# instance fields
.field public mMobileRxBytes:J

.field public mMobileTxBytes:J

.field public mTotalRxBytes:J

.field public mTotalTxBytes:J

.field public mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mTotalRxBytes:J

    .line 26
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mMobileRxBytes:J

    .line 27
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mTotalTxBytes:J

    .line 28
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mMobileTxBytes:J

    .line 37
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mMobileRxBytes:J

    .line 38
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 40
    const-string v0, "DTStatInfo"

    const-string v1, "TrafficStats for mobile seems not supported"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mMobileTxBytes:J

    .line 43
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mTotalRxBytes:J

    .line 44
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mTotalTxBytes:J

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;->mUpdateTime:J

    .line 51
    return-void
.end method


# virtual methods
.method public getDiff(Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;)Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;
    .locals 2
    .param p1, "stopData"    # Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "DTStatInfo"

    const-string v1, "Can\'t calculate diff"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;

    invoke-direct {v0, p0, p0, p1}, Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo$DeviceTrafficStateInfoDelta;-><init>(Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;)V

    return-object v0
.end method

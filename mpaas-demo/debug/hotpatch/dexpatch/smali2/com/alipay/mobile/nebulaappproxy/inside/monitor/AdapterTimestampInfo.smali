.class public Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterTimestampInfo;
.super Ljava/lang/Object;
.source "AdapterTimestampInfo.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/TimestampInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientCurrentStartupTime()J
    .locals 2

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getClientPreviousStartupTime()J
    .locals 2

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceCurrentRebootExactTime()J
    .locals 2

    .line 8
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceCurrentRebootFuzzyTime()J
    .locals 2

    .line 13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceLatestRebootExactTime()J
    .locals 2

    .line 18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceLatestRebootFuzzyTime()J
    .locals 2

    .line 23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessCurrentLaunchElapsedTime()J
    .locals 2

    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessCurrentLaunchNaturalTime()J
    .locals 2

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessPreviousLaunchTime()J
    .locals 2

    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDeviceRebootRecently()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessLaunchFirstly()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

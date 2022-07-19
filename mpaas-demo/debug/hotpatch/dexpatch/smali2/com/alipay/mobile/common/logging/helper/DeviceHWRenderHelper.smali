.class public Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;
.super Ljava/lang/Object;
.source "DeviceHWRenderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUMaxFreqMHz()I
    .locals 3

    .line 42
    const/4 v0, 0x0

    .local v0, "khz":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getCPUMaxFreqKHz()I

    move-result v1

    .line 43
    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    return v1

    .line 44
    :cond_1
    :goto_0
    return v2
.end method

.method public static getCPUMaxFreqMHzAfterStartup()I
    .locals 2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->isMainProcStartupFinishOrTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getCPUMaxFreqMHz()I

    move-result v0

    return v0

    .line 36
    :cond_0
    const-string v0, "DeviceHWInfo"

    const-string v1, "getCPUMaxFreqMHzAfterStartup, return empty before startup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, -0x1

    return v0
.end method

.method public static getNumCoresOfCPU()I
    .locals 1

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getNumberOfCPUCores()I

    move-result v0

    return v0
.end method

.method public static getNumCoresOfCPUAfterStartup()I
    .locals 2

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->isMainProcStartupFinishOrTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getNumCoresOfCPU()I

    move-result v0

    return v0

    .line 23
    :cond_0
    const-string v0, "DeviceHWInfo"

    const-string v1, "getNumCoresOfCPUAfterStartup, return empty before startup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, -0x1

    return v0
.end method

.method public static getTotalMem(Landroid/content/Context;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 61
    .local v4, "bytes":J
    move-wide v4, v0

    const-wide/16 v6, -0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const-wide/32 v0, 0x100000

    div-long v0, v4, v0

    return-wide v0

    .line 62
    :cond_1
    :goto_0
    return-wide v6
.end method

.method public static getTotalMemAfterStartup(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->isMainProcStartupFinishOrTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/DeviceHWRenderHelper;->getTotalMem(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    .line 54
    :cond_0
    const-string v0, "DeviceHWInfo"

    const-string v1, "getTotalMemAfterStartup, return empty before startup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.class public abstract Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;
.super Ljava/lang/Object;
.source "DevicePerformanceToolset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StaticDeviceInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLaunchTime()J
.end method

.method public abstract getLaunchTimeAvgLast3Times()J
.end method

.method public abstract getLowMemoryThreshold(Landroid/content/Context;)J
.end method

.method public abstract getMaxMemory(Landroid/content/Context;)J
.end method

.method public abstract getNumberOfCPUCores()I
.end method

.method public abstract getTotalMemory(Landroid/content/Context;)J
.end method

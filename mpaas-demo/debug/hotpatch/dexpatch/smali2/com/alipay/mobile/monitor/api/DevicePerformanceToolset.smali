.class public interface abstract Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
.super Ljava/lang/Object;
.source "DevicePerformanceToolset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;,
        Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;,
        Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;,
        Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
    }
.end annotation


# virtual methods
.method public abstract getDynamicCpuChecker()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;
.end method

.method public abstract getDynamicMemoryChecker()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;
.end method

.method public abstract getPerformanceLevel(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
.end method

.method public abstract getStaticDeviceInfo()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;
.end method

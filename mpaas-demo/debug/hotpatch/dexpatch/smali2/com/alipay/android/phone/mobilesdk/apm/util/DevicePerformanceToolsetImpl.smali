.class public Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;
.super Ljava/lang/Object;
.source "DevicePerformanceToolsetImpl.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$b;,
        Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;,
        Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;,
        Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$c;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

.field private static b:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;
    .locals 1

    .line 41
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$c;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .line 27
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->c()I

    move-result v0

    return v0
.end method

.method private static c()I
    .locals 1

    .line 435
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDynamicCpuChecker()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicCpuChecker;
    .locals 1

    .line 80
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;)V

    return-object v0
.end method

.method public getDynamicMemoryChecker()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;
    .locals 1

    .line 72
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->b:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$b;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->b:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;

    .line 75
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->b:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;

    return-object v0
.end method

.method public getPerformanceLevel(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->getStaticDeviceInfo()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    .line 51
    .local v2, "totalMemory":J
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->getStaticDeviceInfo()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;->getNumberOfCPUCores()I

    move-result v4

    .line 52
    .local v4, "numberOfCPUCores":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getPerformanceLevel] totalMemory:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DevicePerformanceToolset"

    invoke-interface {v5, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-wide v5, 0x100000000L

    cmp-long v8, v2, v5

    if-ltz v8, :cond_1

    .line 54
    sget-object v5, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->HIGH:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    sput-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    goto :goto_0

    .line 55
    :cond_1
    const-wide v5, 0xc0000000L

    cmp-long v8, v2, v5

    if-ltz v8, :cond_3

    .line 56
    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    .line 57
    sget-object v5, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->LOW:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    sput-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v5, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->MIDDLE:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    sput-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    goto :goto_0

    .line 61
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v8, v2, v5

    if-ltz v8, :cond_4

    .line 62
    sget-object v5, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->LOW:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    sput-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    goto :goto_0

    .line 64
    :cond_4
    sget-object v5, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;->UNKNOWN:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    sput-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    .line 66
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "getPerformanceLevel, cost:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", level:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->a:Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$LEVEL;

    return-object v5
.end method

.method public getStaticDeviceInfo()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;
    .locals 1

    .line 85
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;

    move-result-object v0

    return-object v0
.end method

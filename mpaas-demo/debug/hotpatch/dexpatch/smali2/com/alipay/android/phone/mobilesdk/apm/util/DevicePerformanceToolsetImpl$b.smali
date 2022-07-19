.class final Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$b;
.super Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;
.source "DevicePerformanceToolsetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    .line 389
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$b;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;

    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$DynamicMemoryChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlipayMemory(Landroid/content/Context;)J
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 408
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 409
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;->b()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 410
    .local v1, "myMempid":[I
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    const/4 v4, 0x0

    .line 411
    .local v4, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    move-object v4, v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    .line 412
    aget-object v2, v4, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    int-to-long v2, v2

    return-wide v2

    .line 414
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "myMempid":[I
    .end local v4    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    :catchall_0
    move-exception v0

    .line 415
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DevicePerformanceToolset"

    const-string v3, "getAlipayMemory got exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public final getAvailableMemory(Landroid/content/Context;)J
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 395
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 396
    .local v0, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 397
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 398
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    .line 399
    .end local v0    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    :catchall_0
    move-exception v0

    .line 400
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DevicePerformanceToolset"

    const-string v3, "getAvailableMemory got exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public final isLowMemory(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 423
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 424
    .local v0, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 425
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 426
    iget-boolean v1, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 427
    .end local v0    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :catchall_0
    move-exception v0

    .line 428
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DevicePerformanceToolset"

    const-string v3, "isLowMemory got exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    const/4 v1, 0x0

    return v1
.end method

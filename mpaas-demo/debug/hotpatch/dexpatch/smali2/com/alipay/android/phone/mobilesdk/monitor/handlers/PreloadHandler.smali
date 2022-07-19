.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;
.super Ljava/lang/Object;
.source "PreloadHandler.java"


# static fields
.field private static final a:J

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a:J

    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->b:J

    return-void
.end method

.method public static a()V
    .locals 7

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 29
    .local v0, "deviceTime":J
    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->b:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    sget-wide v4, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->b:J

    .line 33
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler$1;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method private static a(II)V
    .locals 11
    .param p0, "mainStatus"    # I
    .param p1, "pushStatus"    # I

    const-string v0, "PreloadHandler"

    .line 43
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 44
    .local v3, "ctx":Landroid/content/Context;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.alipay.mobile.quinox.preload.PreloadReceiver"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, "cnMain":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.alipay.pushsdk.BroadcastActionReceiver"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v4, "cnPush":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 50
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move-object v2, v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ", status: "

    const-string v7, "Set component status, name: "

    const/4 v8, 0x1

    if-eq v5, p0, :cond_1

    .line 51
    :try_start_1
    invoke-virtual {v2, v1, p0, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 55
    invoke-virtual {v2, v4, p1, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v1    # "cnMain":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v4    # "cnPush":Landroid/content/ComponentName;
    :cond_2
    return-void

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic b()V
    .locals 0

    .line 18
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->c()V

    return-void
.end method

.method private static c()V
    .locals 11

    .line 67
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "preload_core_receiver_switcher"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v2, "configVal":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "kvs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, "mainStatus":I
    const/4 v4, 0x0

    .line 77
    .local v4, "pushStatus":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 78
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "kvPair":[Ljava/lang/String;
    const-string/jumbo v8, "main"

    aget-object v9, v7, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 80
    aget-object v8, v7, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo v8, "push"

    aget-object v10, v7, v0

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    aget-object v8, v7, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 77
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    .end local v7    # "kvPair":[Ljava/lang/String;
    :cond_3
    invoke-static {v3, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a(II)V

    .line 90
    .end local v1    # "kvs":[Ljava/lang/String;
    .end local v2    # "configVal":Ljava/lang/String;
    .end local v3    # "mainStatus":I
    .end local v4    # "pushStatus":I
    return-void

    .line 70
    .restart local v2    # "configVal":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {v0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    return-void

    .line 86
    .end local v2    # "configVal":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 87
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "PreloadHandler"

    const-string/jumbo v4, "process receiver error"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {v0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PreloadHandler;->a(II)V

    .line 91
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

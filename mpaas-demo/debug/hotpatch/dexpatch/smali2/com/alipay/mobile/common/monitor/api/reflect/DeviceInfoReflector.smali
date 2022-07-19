.class public Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;
.super Ljava/lang/Object;
.source "DeviceInfoReflector.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 8

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->a:Ljava/lang/Class;

    const-string v1, "init"

    const-string v2, "DeviceInfoReflector"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 28
    :try_start_0
    const-class v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v4, 0x0

    .line 29
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    const-string v5, "com.alipay.mobile.common.info.DeviceInfo"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->d:Z

    if-nez v4, :cond_0

    .line 32
    sput-boolean v3, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->d:Z

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 39
    :try_start_1
    const-string v5, "createInstance"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    goto :goto_1

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-boolean v5, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->e:Z

    if-nez v5, :cond_1

    .line 43
    sput-boolean v3, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->e:Z

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 50
    :try_start_2
    const-string v5, "getmDid"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    sput-object v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    return-void

    .line 52
    :catchall_2
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->f:Z

    if-nez v4, :cond_2

    .line 54
    sput-boolean v3, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->f:Z

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public static getmDid(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 63
    return-object v0

    .line 65
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->h:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 66
    .local v1, "nowTime":J
    :goto_0
    const/4 v3, 0x0

    .line 67
    .local v3, "mDid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->a()V

    .line 68
    sget-object v4, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->b:Ljava/lang/reflect/Method;

    const-string v5, "DeviceInfoReflector"

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    sget-object v7, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->c:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    .line 70
    :try_start_0
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 71
    .local v4, "object":Ljava/lang/Object;
    sget-object v7, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->c:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v0, "result":Ljava/lang/Object;
    move-object v0, v7

    if-eqz v7, :cond_2

    .line 73
    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 80
    .end local v0    # "result":Ljava/lang/Object;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->g:Z

    if-nez v4, :cond_3

    .line 77
    sput-boolean v6, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->g:Z

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v7, "getmDid"

    invoke-interface {v4, v5, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->h:Z

    if-nez v0, :cond_4

    .line 83
    sput-boolean v6, Lcom/alipay/mobile/common/monitor/api/reflect/DeviceInfoReflector;->h:Z

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 85
    .local v6, "spendTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "processAlias":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", getmDid, spend: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v0    # "processAlias":Ljava/lang/String;
    .end local v6    # "spendTime":J
    :cond_4
    return-object v3
.end method

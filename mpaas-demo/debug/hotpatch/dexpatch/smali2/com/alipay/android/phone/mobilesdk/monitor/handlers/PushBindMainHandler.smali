.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;
.super Ljava/lang/Object;
.source "PushBindMainHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->b:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;
    .locals 2

    .line 36
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    .line 32
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized c()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    .locals 5

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 91
    monitor-exit p0

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->b:Landroid/content/Context;

    const-class v3, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 97
    if-nez v2, :cond_1

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "PushBindMainHandler"

    const-string v3, "bind IAPMInnerService fail"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 102
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;
    :cond_1
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    const-wide/16 v2, 0xfa0

    :try_start_3
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "PushBindMainHandler"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :try_start_5
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v0

    .line 108
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 4
    .param p1, "deltaElasped"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "obtainExtraUsages, deltaElasped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushBindMainHandler"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    return-object v1

    .line 81
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;->obtainExtraUsages(J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-object v1
.end method

.method public final b()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "PushBindMainHandler"

    const-string v2, "disconnect"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 72
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 48
    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PushBindMainHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onServiceConnected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PushBindMainHandler"

    const-string/jumbo v3, "onServiceConnected, service is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p2}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 56
    :goto_0
    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushBindMainHandler"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/PushBindMainHandler;->c:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 65
    return-void
.end method

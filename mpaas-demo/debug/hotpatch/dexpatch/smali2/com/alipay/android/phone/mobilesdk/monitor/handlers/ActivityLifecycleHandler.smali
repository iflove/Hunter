.class public Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/MonitorInstrumentCallback;


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->c:Z

    .line 42
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->b:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;
    .locals 2

    .line 35
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;

    .line 31
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ActivityLifecycleHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 27
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()V
    .locals 6

    .line 46
    const/4 v0, 0x0

    .local v0, "startupReason":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v1

    .line 47
    move-object v0, v1

    if-eqz v1, :cond_2

    .line 48
    const-string v1, "RecordType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "recordType":Ljava/lang/String;
    const-string v2, "ByActivity"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "byActivity":Ljava/lang/String;
    const-string v4, "ActivityClientRecord"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorForeground(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->getInstance()Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->onMonitorForeground(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    const-string v2, "CreateServiceData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    const-string v2, "BindServiceData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "recordType":Ljava/lang/String;
    .end local v3    # "byActivity":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCallActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public onCallActivityOnDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 119
    return-void
.end method

.method public onCallActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public onCallActivityOnPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 107
    return-void
.end method

.method public onCallActivityOnRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 95
    return-void
.end method

.method public onCallActivityOnResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 99
    return-void
.end method

.method public onCallActivityOnStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 91
    return-void
.end method

.method public onCallActivityOnStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    return-void
.end method

.method public onCallActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 103
    return-void
.end method

.method public onNewActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activity"    # Landroid/app/Activity;

    .line 67
    return-void
.end method

.class public Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;
.super Ljava/lang/Object;
.source "LoggingLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->a:I

    .line 24
    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->b:I

    .line 26
    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback$1;-><init>(Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;)V

    .line 43
    .local v0, "lockScreenReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 44
    .local v2, "screenIntentFilter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    nop

    .end local v0    # "lockScreenReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "screenIntentFilter":Landroid/content/IntentFilter;
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LoggingLifecycleCallback"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->c:I

    .line 53
    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 54
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 83
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 84
    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->c:I

    if-gtz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->onExit()V

    .line 87
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->b:I

    .line 72
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 62
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->b:I

    .line 63
    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 64
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 57
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->a:I

    .line 58
    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 59
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 75
    sget v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 76
    sput v0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;->a:I

    if-gtz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "LoggingLifecycleCallback"

    const-string/jumbo v2, "setForeground false when all stopped."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

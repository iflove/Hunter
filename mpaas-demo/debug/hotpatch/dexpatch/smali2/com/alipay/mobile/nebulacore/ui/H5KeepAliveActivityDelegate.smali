.class public Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;
.super Ljava/lang/Object;
.source "H5KeepAliveActivityDelegate.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "H5KeepAliveUtil"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .line 103
    const-string v0, "H5KeepAliveUtil"

    const-string v1, "try removeTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    .line 108
    .local v2, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .local v3, "appTask":Landroid/app/ActivityManager$AppTask;
    const/4 v4, 0x0

    .line 112
    .local v4, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_1
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 115
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v5

    .line 114
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "removeFromRecentTasksList "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 118
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "removeFromRecentTasksList"

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .end local v3    # "appTask":Landroid/app/ActivityManager$AppTask;
    .end local v4    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    goto :goto_0

    .line 128
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :cond_1
    return-void

    .line 126
    :catchall_1
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public afterCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afterCreate hasStartActivity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->hasStartActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-boolean v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->hasStartActivity:Z

    if-nez v0, :cond_1

    .line 41
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-eq v0, v2, :cond_0

    .line 42
    const-string v0, "afterCreate with fatal! restart 20000001"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 44
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    const-string v4, "actionType"

    const-string v5, "20000002"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string v4, "20000001"

    .line 46
    invoke-interface {v0, v2, v4, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v0, "The activity is restored by system, will finish."

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "afterCreate!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public beforeStartActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beforeStartActivity put appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5KeepAliveUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 70
    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mExtras"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy with activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->a(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->removeDestroyRunnable()V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->removeRunningTinyActivity()V

    .line 100
    return-void
.end method

.method public onUserLeaveHint(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 6
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 80
    const-string v0, "H5KeepAliveUtil"

    const-string v1, "onUserLeaveHint, schedule destroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->removeDestroyRunnable()V

    .line 83
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5Session;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "keepAliveTime":J
    const-string v2, "h5_mainProcKeepAliveMS"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 86
    .local v3, "keepAliveConfig":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 89
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 90
    const-wide/32 v0, 0x493e0

    .line 92
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v0, v1, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 93
    return-void
.end method

.method public putRunningTinyActivity(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 76
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->putRunningTinyActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public removeDestroyRunnable()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeDestroyRunnable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5KeepAliveUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->setInvalid()V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->b:Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;

    .line 64
    :cond_0
    return-void
.end method

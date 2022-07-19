.class public Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigChangeReceiver.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 7

    .line 28
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;->a:Z

    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ConfigChangeReceiver"

    const-string v2, "ConfigChangeReceiver register enter"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;->a:Z

    .line 33
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    move-object v3, v2

    .line 34
    .local v3, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "lite_config_load_local_sp"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "configForLiteProcess":Ljava/lang/String;
    sget-boolean v5, Lcom/alipay/mobile/liteprocess/Config;->l:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 37
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v2, "configs":Ljava/util/HashMap;
    move-object v2, v5

    sget-boolean v6, Lcom/alipay/mobile/liteprocess/Config;->l:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/base/config/ConfigService;->saveConfigs(Ljava/util/Map;)V

    .line 42
    .end local v2    # "configs":Ljava/util/HashMap;
    .end local v4    # "configForLiteProcess":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->l:Z

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "ConfigChangeReceiver do register register"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;

    invoke-direct {v2}, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;-><init>()V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.alipay.mobile.client.CONFIG_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v2, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "ConfigChangeReceiver register leave"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 56
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    new-instance v2, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;-><init>(Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;Landroid/content/Intent;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "ConfigChangeReceiver_notifyConfigChanged"

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 72
    return-void
.end method

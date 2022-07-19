.class public Lcom/alipay/mobile/android/security/upgrade/AliUpgradeInit;
.super Ljava/lang/Object;
.source "AliUpgradeInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliUpgradeInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static manageUpgradePackage()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeInit"

    const-string/jumbo v2, "manageUpgradePackage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->manageUpgradeApkFile()V

    .line 42
    return-void
.end method

.method private static registerSync()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeInit"

    const-string/jumbo v2, "registerSync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 48
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/sync/DeviceSyncMsgInit;

    invoke-direct {v1}, Lcom/alipay/mobile/android/security/upgrade/sync/DeviceSyncMsgInit;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static registerUpgradeSync()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeInit"

    const-string v2, "init()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/AliUpgradeInit;->registerSync()V

    .line 34
    return-void
.end method

.method public static setAppDataProvider(Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;)V
    .locals 3

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeInit"

    const-string/jumbo v2, "setAppDataProvider"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->setAppDataProvider(Lcom/alipay/mobile/android/security/upgrade/config/AppDataProvider;)V

    .line 26
    return-void
.end method

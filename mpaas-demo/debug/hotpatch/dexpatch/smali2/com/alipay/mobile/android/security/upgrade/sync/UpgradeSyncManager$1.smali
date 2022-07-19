.class Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;
.super Ljava/lang/Object;
.source "UpgradeSyncManager.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->registUpgradeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

.field final synthetic val$microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic val$syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->val$syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->val$microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .line 84
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->val$syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onPreCheckUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z
    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->access$000(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v0, "UpgradeSyncManager"

    const-string/jumbo v1, "\u5728\u5347\u7ea7\u9759\u9ed8\u671f\uff0c\u4e22\u5f03\u8be5\u6761sync\u6d88\u606f"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 71
    :cond_0
    sget-object v2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v3, "sync_arrived_not_in_silent"

    const-string v4, "UPGRADE-SYNC-ARRIVE-NOT-SILENT-0518-02"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->val$microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 74
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

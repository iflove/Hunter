.class Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$2;
.super Ljava/lang/Object;
.source "UpgradeSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->upgradeNowIfComformCondition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "upgradeNowIfComformCondition()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->access$200(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;)Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object v0

    .line 362
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getCanAlertTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateImmediately()V

    .line 365
    :cond_0
    return-void
.end method

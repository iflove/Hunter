.class Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;
.super Ljava/lang/Object;
.source "UpgradeSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;

.field final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "\u5f00\u59cb\u5904\u7406\u5347\u7ea7\u6536\u5230sync\u6d88\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onProcessUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->access$100(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 79
    return-void
.end method

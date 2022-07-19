.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->updateImmediately(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 338
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getCanAlertTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 339
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topActivity status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPDATE"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$300(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v1

    const-string v2, "about_update_info_cache_key"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showForceDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$700(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    goto :goto_1

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
    invoke-static {v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$602(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 348
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    :cond_1
    :goto_1
    return-void
.end method

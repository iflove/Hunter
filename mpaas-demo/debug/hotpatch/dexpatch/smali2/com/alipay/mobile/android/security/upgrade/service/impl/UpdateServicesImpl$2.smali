.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;
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

.field final synthetic val$silentUpdateState:I

.field final synthetic val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ILcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->val$silentUpdateState:I

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 310
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getCanAlertTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
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

    .line 312
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 317
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$300(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v1

    const-string v2, "about_update_info_cache_key"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->val$silentUpdateState:I

    if-ne v1, v2, :cond_2

    .line 319
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u5f39\u4efb\u4f55\u6846 "

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_2
    const/4 v1, 0x2

    if-ne v1, v2, :cond_3

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$400(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V

    goto :goto_1

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->val$updateRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showNormalDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_1
    goto :goto_3

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
    invoke-static {v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$602(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 327
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 313
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$200(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v0

    const-string v1, "about_ignore_update_version"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->remove(Ljava/lang/String;)V

    .line 330
    :goto_3
    return-void
.end method

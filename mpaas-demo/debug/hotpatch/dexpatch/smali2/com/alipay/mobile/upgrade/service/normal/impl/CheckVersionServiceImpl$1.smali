.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->checkNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$upgradeIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->val$upgradeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    const-string v0, "CheckVersionServiceImpl"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 60
    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "updateServices is null"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->isUpdating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->alipay_downloading_new_app:I

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 66
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_check_new_app:I

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    if-nez v1, :cond_2

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "\u5347\u7ea7Rpc\u8bf7\u6c42"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;-><init>()V

    .line 72
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->checkNewVersion()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v2, v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$002(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkNetWorkCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkRPCDataIsValid(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateSilentUpgradeInfo()V
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$200(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->val$upgradeIcon:Landroid/graphics/drawable/Drawable;

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$300(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealDataInValid()V
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$400(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V

    .line 82
    :goto_0
    goto :goto_1

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # invokes: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealHasNoNewVersion()V
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$500(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_1
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v1

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "checkNewVersion() \u5f02\u5e38"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :goto_2
    return-void
.end method

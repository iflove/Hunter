.class Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;
.super Ljava/lang/Object;
.source "MPaaSCheckVersionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->checkNewVersion(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    const-string v0, "MPaaSCheckVersionServiceImpl"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 71
    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "updateServices is null"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->isUpdating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->isUpdating()V

    .line 79
    :cond_1
    return-void

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->startCheck()V

    .line 84
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "\u5347\u7ea7Rpc\u8bf7\u6c42"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    if-nez v1, :cond_4

    .line 86
    new-instance v1, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->checkNewVersion()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v2, v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$102(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$200(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkNetWorkCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkRPCDataIsValid(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # invokes: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->updateSilentUpgradeInfo()V
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$300(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$400(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;)V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->dealDataInValid(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 99
    :cond_6
    :goto_0
    goto :goto_1

    .line 100
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->dealHasNoNewVersion(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_8
    :goto_1
    goto :goto_2

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v2}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$1;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v2}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->onException(Ljava/lang/Throwable;)V

    .line 108
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "checkNewVersion() \u5f02\u5e38"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_2
    return-void
.end method

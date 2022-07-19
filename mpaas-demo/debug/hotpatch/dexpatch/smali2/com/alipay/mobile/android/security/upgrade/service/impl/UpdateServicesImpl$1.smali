.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 99
    const-string v0, "UPDATE"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u68c0\u67e5\u5ba2\u6237\u7aef\u65b0\u7248\u672c"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->buildClientUpgradeReq()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->val$userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->userId:Ljava/lang/String;

    .line 103
    nop

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->clientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    move-result-object v2

    .line 106
    invoke-interface {v2, v1}, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;->versionUpdateCheck(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;

    invoke-direct {v2}, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;-><init>()V

    .line 109
    iput-object v1, v2, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 110
    const-string/jumbo v1, "upgrade_from_login"

    iput-object v1, v2, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->dataSourceType:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->updateImmediately()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5347\u7ea7\u5931\u8d25(checkUpdate)\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void
.end method

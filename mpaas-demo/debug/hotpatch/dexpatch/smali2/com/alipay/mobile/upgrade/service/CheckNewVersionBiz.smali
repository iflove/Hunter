.class public Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;
.super Ljava/lang/Object;
.source "CheckNewVersionBiz.java"


# instance fields
.field private final mClientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

.field private final mRpcService:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->mRpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 26
    const-class v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    iput-object v1, p0, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->mClientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    .line 27
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getMpaasapi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CheckNewVersionBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :goto_0
    return-void
.end method


# virtual methods
.method public checkNewVersion()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 9

    .line 40
    const-string v0, "Upgrade_RPC_Fail"

    const-string v1, "errorMsg"

    const-string v2, "errorCode"

    const-string v3, "com.alipay.mobile.android.security.upgrade.BuildConfig"

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v4

    const-string v5, "Upgrade_RPC_Begin"

    sget-object v6, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->buildClientUpgradeReq()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;

    move-result-object v4

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "CheckNewVersionBiz"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientUpgradeReq: userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", productVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->productVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mobileModel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->mobileModel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->netType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", osVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v5, p0, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->mClientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    invoke-interface {v5, v4}, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;->versionUpdateCheck(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeReq;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v6, "resultStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v6

    const-string v7, "Upgrade_RPC_Success"

    sget-object v8, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v6, v7, v8, v3, v5}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v6, "0"

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v6, "res is null"

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v6, v0, v7, v3, v5}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v4

    .line 58
    :catch_0
    move-exception v4

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v6, "1"

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    throw v4
.end method

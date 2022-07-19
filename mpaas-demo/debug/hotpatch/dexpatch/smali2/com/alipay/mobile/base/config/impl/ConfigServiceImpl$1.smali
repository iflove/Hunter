.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;
.super Ljava/lang/Object;
.source "ConfigServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

.field final synthetic val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 699
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getConfigFromUserConfigAndDefConfig(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 702
    .local v2, "configFromUserConfigAndDefConfig":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;->onLoaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    return-void

    .line 709
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLmacConfig will trigger rpc for key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    move-object v3, v1

    .line 711
    .local v3, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    const-class v4, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;

    .line 712
    .local v0, "service":Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;
    new-instance v4, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;

    invoke-direct {v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;-><init>()V

    move-object v5, v1

    .line 713
    .local v5, "syncDataReq":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;
    move-object v5, v4

    iget-object v6, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    iput-object v6, v4, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    .line 714
    invoke-interface {v0, v5}, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;->getSyncData(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;

    move-result-object v4

    .line 715
    .local v1, "syncDataResp":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
    move-object v1, v4

    if-nez v4, :cond_2

    .line 716
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getLmacConfig from rpc get "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getLmacConfig from rpc get syncDataResp.success = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " syncDataResp uniqId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_0
    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 721
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v4

    iget-object v6, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v4

    iget-object v6, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mLoginUserId:Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1500(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    if-eqz v4, :cond_4

    .line 725
    iget-object v6, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;->val$key:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;->onLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 728
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "rpc syncDataResp.success : false"

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0    # "service":Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;
    .end local v1    # "syncDataResp":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
    .end local v3    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .end local v5    # "syncDataReq":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;
    :cond_4
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configLoadCallBack.onLoaded(key, null);  rpc error or  configLoadCallBack.onLoaded error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

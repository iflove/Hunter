.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;
.super Ljava/lang/Object;
.source "ConfigServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->preloadKeys(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 892
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 894
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->val$keys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 895
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preloadKeys keys==null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void

    .line 898
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 899
    .local v2, "rpcKeys":Ljava/util/List;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->val$keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 900
    .local v4, "key":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 903
    iget-object v5, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->containsInCommonConfig(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 905
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 908
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 910
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 911
    .local v5, "rpcKey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rpc key = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .end local v5    # "rpcKey":Ljava/lang/String;
    goto :goto_1

    .line 913
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "preloadKeys rpckeys is : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :try_start_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 916
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/common/RpcService;

    move-object v6, v0

    .line 917
    .local v6, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;

    move-object v5, v0

    .line 918
    .local v5, "service":Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;-><init>()V

    move-object v7, v3

    .line 919
    .local v7, "batchSyncDataReq":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;
    move-object v7, v0

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;->uniqIds:Ljava/util/List;

    .line 920
    invoke-interface {v5, v7}, Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;->getBatchSyncData(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;

    move-result-object v0

    move-object v8, v0

    .line 921
    .local v8, "batchSyncDataResp":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 922
    .local v9, "persistKeys":Ljava/util/ArrayList;
    iget-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 923
    iget-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    .line 924
    .local v3, "dataMap":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 925
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v11, v0

    .line 927
    .local v11, "data":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;
    :try_start_1
    iget-object v0, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    iget-object v12, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v13, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v13, v13, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    iget-object v14, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v14, v14, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveKeyValueWithTimeToCommon(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 930
    .local v0, "saved":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "preloadKeys from preload rpc key = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v15, v15, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 932
    if-eqz v0, :cond_5

    .line 934
    :try_start_2
    iget-object v12, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v13, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v14, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v14, v14, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v12, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v13, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v14, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v14, v14, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1700(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 949
    .end local v0    # "saved":Z
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_3

    .line 938
    .restart local v0    # "saved":Z
    :cond_5
    :try_start_3
    iget-object v12, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v12}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v12

    iget-object v13, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->containsInCommonConfig(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 940
    iget-object v12, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v12}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v12

    iget-object v13, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v14, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v14, v14, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    iget-object v15, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v15, v15, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "rpcKeys":Ljava/util/List;
    .end local v3    # "dataMap":Ljava/util/List;
    .local v16, "rpcKeys":Ljava/util/List;
    .local v17, "dataMap":Ljava/util/List;
    :try_start_4
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v13, v14, v2, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveKeyValueToCommon(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 941
    iget-object v2, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v3, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v12, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v12, v12, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v12}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v2, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v3, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->key:Ljava/lang/String;

    iget-object v12, v11, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;->value:Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    iget-object v12, v12, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v12}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1700(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_2

    .line 946
    .end local v16    # "rpcKeys":Ljava/util/List;
    .end local v17    # "dataMap":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    .restart local v3    # "dataMap":Ljava/util/List;
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "rpcKeys":Ljava/util/List;
    .end local v3    # "dataMap":Ljava/util/List;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    .restart local v17    # "dataMap":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "preloadKeys \u4e0d\u5e94\u8be5\u8d70\u5230\u8fd9\u91cc\u7684"

    invoke-interface {v2, v3, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 951
    .end local v0    # "saved":Z
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_2

    .line 949
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v16    # "rpcKeys":Ljava/util/List;
    .end local v17    # "dataMap":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    .restart local v3    # "dataMap":Ljava/util/List;
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 950
    .end local v2    # "rpcKeys":Ljava/util/List;
    .end local v3    # "dataMap":Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    .restart local v17    # "dataMap":Ljava/util/List;
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "data":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_2

    .end local v16    # "rpcKeys":Ljava/util/List;
    .end local v17    # "dataMap":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    .restart local v3    # "dataMap":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "rpcKeys":Ljava/util/List;
    .end local v3    # "dataMap":Ljava/util/List;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    .restart local v17    # "dataMap":Ljava/util/List;
    goto :goto_4

    .line 924
    .end local v16    # "rpcKeys":Ljava/util/List;
    .end local v17    # "dataMap":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    .restart local v3    # "dataMap":Ljava/util/List;
    :cond_8
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 954
    .end local v2    # "rpcKeys":Ljava/util/List;
    .end local v3    # "dataMap":Ljava/util/List;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    .restart local v17    # "dataMap":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preloadKeys dataMap == null or  dataMap.isEmpty() "

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .end local v17    # "dataMap":Ljava/util/List;
    goto :goto_4

    .line 957
    .end local v16    # "rpcKeys":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    :cond_9
    move-object/from16 v16, v2

    .end local v2    # "rpcKeys":Ljava/util/List;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preloadkeys batchSyncDataResp false "

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$2;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 962
    .end local v5    # "service":Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;
    .end local v6    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .end local v7    # "batchSyncDataReq":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;
    .end local v8    # "batchSyncDataResp":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
    .end local v9    # "persistKeys":Ljava/util/ArrayList;
    return-void

    .line 960
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v16    # "rpcKeys":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    .line 961
    .end local v2    # "rpcKeys":Ljava/util/List;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    return-void

    .line 964
    .end local v16    # "rpcKeys":Ljava/util/List;
    .restart local v2    # "rpcKeys":Ljava/util/List;
    :cond_a
    move-object/from16 v16, v2

    .end local v2    # "rpcKeys":Ljava/util/List;
    .restart local v16    # "rpcKeys":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rpc keys==null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-void
.end method

.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;
.super Ljava/lang/Object;
.source "ConfigServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigLoaderTask"
.end annotation


# instance fields
.field private delayTime:J

.field private mUserId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V
    .locals 2
    .param p2, "delay"    # J

    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 346
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->mUserId:Ljava/lang/String;

    .line 349
    iput-wide p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 350
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;JLjava/lang/String;)V
    .locals 2
    .param p2, "delay"    # J
    .param p4, "userId"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 346
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->mUserId:Ljava/lang/String;

    .line 353
    iput-wide p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 354
    iput-object p4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->mUserId:Ljava/lang/String;

    .line 355
    return-void
.end method

.method private checkUid()V
    .locals 6

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v1, "reserveConfigKeyUserId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "lastUserId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "curUserId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check uid, last="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cur="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 365
    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->switchUid(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 371
    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->switchUid(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->switchUid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "lastUserId":Ljava/lang/String;
    .end local v1    # "curUserId":Ljava/lang/String;
    :cond_2
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check uid exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v1

    const-string v2, "exception"

    const-string v3, "-1"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private switchUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "cur"    # Ljava/lang/String;

    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switch uid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v1, "reserveConfigKeyResponseTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->removeKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v1, "reserveConfigKeyUserId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 392
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 394
    .local v2, "lastReqTime":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->checkUid()V

    .line 405
    iget-wide v5, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    .line 406
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 408
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    move-object v5, v4

    .line 409
    .local v5, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    move-object v5, v0

    const-class v6, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;

    move-object v6, v0

    .line 410
    .local v6, "service":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v7, v4

    .line 411
    .local v7, "rpcInvokeContext":Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    move-object v7, v0

    if-eqz v0, :cond_3

    .line 412
    :try_start_3
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    .line 415
    .end local v7    # "rpcInvokeContext":Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mGwUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mGwUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 418
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mAppkey = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " mGwUrl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mGwUrl:Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_3
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;-><init>()V

    move-object v8, v0

    .line 421
    .local v8, "req":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    move-object v9, v0

    .line 422
    .local v9, "appInfo":Lcom/alipay/mobile/common/info/AppInfo;
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileBrand()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 423
    .local v10, "mobileBrand":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 424
    .local v11, "romVersion":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 425
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/MpaasPropertiesUtil;->getWorkSpaceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v4

    .line 426
    .local v12, "spaceId":Ljava/lang/String;
    move-object v12, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    invoke-static {v0, v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v13}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mAppkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    .line 431
    .end local v12    # "spaceId":Ljava/lang/String;
    goto :goto_1

    .line 432
    :cond_5
    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    .line 434
    :goto_1
    const-string v0, "android"

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    .line 435
    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    .line 436
    iput-object v10, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    .line 437
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    .line 439
    iput-object v11, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    .line 440
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v12, "reserveConfigKeyUserId"

    invoke-virtual {v0, v12, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 441
    .local v12, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ConfigLoaderTask req userId = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " version = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " productId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " romVersion = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mobileBrand = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mobileModel = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " osVersion = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 441
    invoke-interface {v0, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iput-object v12, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    .line 448
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->needPull()Z
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$500(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 449
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v13, "last_not_increment"

    const-string v14, "0"

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    iput-object v4, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    .line 456
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v13, "upgradeLoadVersion"

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 457
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v13, "reserveConfigKeyUserId"

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 458
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string v13, "last_load_time"

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "needPull update = true"

    invoke-interface {v0, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 461
    :cond_7
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v13, "reserveConfigKeyResponseTime"

    invoke-virtual {v0, v13, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "respTime":Ljava/lang/String;
    iput-object v0, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "ConfigLoaderTask req lastResponseTime = "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v14, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 464
    move-object v2, v0

    .line 466
    .end local v0    # "respTime":Ljava/lang/String;
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 467
    .local v3, "channelId":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDefImei()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 468
    .local v13, "imei":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mContextWrapper:Landroid/content/ContextWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 469
    .local v14, "utdid":Ljava/lang/String;
    iput-object v3, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    .line 470
    iput-object v13, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    .line 471
    iput-object v14, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    .line 472
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v17, v2

    .end local v2    # "lastReqTime":Ljava/lang/String;
    .local v17, "lastReqTime":Ljava/lang/String;
    :try_start_5
    const-string v2, "ConfigLoaderTask req channelId = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imei = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " utdid = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v15, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-interface {v6, v8}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;->getSwitchesPbAfterLogin(Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;

    move-result-object v0

    move-object v2, v0

    .line 475
    .local v2, "resp":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string/jumbo v4, "start"

    iget-object v15, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "channelId":Ljava/lang/String;
    .local v18, "channelId":Ljava/lang/String;
    invoke-virtual {v0, v4, v3, v15}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 477
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mHasUpgradeHelper:Z
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$700(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 479
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v4, "upgradeLoadVersion"

    iget-object v15, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mUpgradeHelper:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
    invoke-static {v15}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$800(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "resp.success"

    invoke-interface {v0, v4, v15}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string/jumbo v4, "success"

    iget-object v15, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v15}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->increment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 485
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!resp.increment"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_not_increment"

    const-string v4, "1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x0

    move-object v0, v3

    .line 488
    .local v0, "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v4, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->switches:Ljava/util/List;

    const/4 v15, 0x1

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->toAbMap(Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;
    invoke-static {v3, v4, v15}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$900(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;

    move-result-object v3

    .line 490
    .end local v0    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    .local v3, "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const-string/jumbo v4, "reserveConfigKeyUserId"

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v15}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 491
    .local v4, "userId":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->setFullUpdating(Z)V

    .line 492
    const-class v15, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 493
    :try_start_6
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->migrateCommonConfigPersistKeys()V

    .line 494
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->clearCommonConfig()V

    .line 495
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->reMigrateCommonConfigPersistKeys()V

    .line 496
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v5

    .end local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .local v16, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :try_start_7
    const-string/jumbo v5, "reserveConfigKeyUserId"

    invoke-virtual {v0, v5, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    const/4 v5, 0x0

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->saveConfigs(Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V
    invoke-static {v0, v3, v2, v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V

    .line 498
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->updateOSVersion()V
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V

    .line 499
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 500
    :try_start_8
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->setFullUpdating(Z)V

    .line 501
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sendConfigChangeBroadcast(Lcom/alipay/mobile/base/info/SwitchListInfo;)V
    invoke-static {v0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 503
    .end local v3    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    .end local v4    # "userId":Ljava/lang/String;
    goto :goto_5

    .line 499
    .end local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v3    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    .restart local v4    # "userId":Ljava/lang/String;
    .restart local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v5

    .end local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :goto_4
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v17    # "lastReqTime":Ljava/lang/String;
    :try_start_a
    throw v0

    .restart local v17    # "lastReqTime":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 504
    .end local v3    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :cond_9
    move-object/from16 v16, v5

    .end local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;->switches:Ljava/util/List;

    const/4 v4, 0x0

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->toAbMap(Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$900(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/util/List;Z)Lcom/alipay/mobile/base/info/SwitchListInfo;

    move-result-object v0

    .line 505
    .restart local v0    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    const/4 v4, 0x1

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->saveConfigs(Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V
    invoke-static {v3, v0, v2, v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;Z)V

    .line 506
    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sendConfigChangeBroadcast(Lcom/alipay/mobile/base/info/SwitchListInfo;)V
    invoke-static {v3, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/info/SwitchListInfo;)V

    .line 507
    .end local v0    # "listInfo":Lcom/alipay/mobile/base/info/SwitchListInfo;
    goto :goto_5

    .line 509
    .end local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :cond_a
    move-object/from16 v16, v5

    .end local v5    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .restart local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!!!resp.success"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 512
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "not_success"

    iget-object v5, v8, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 530
    .end local v2    # "resp":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    .end local v6    # "service":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;
    .end local v8    # "req":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;
    .end local v9    # "appInfo":Lcom/alipay/mobile/common/info/AppInfo;
    .end local v10    # "mobileBrand":Ljava/lang/String;
    .end local v11    # "romVersion":Ljava/lang/String;
    .end local v12    # "uid":Ljava/lang/String;
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "utdid":Ljava/lang/String;
    .end local v16    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    .end local v18    # "channelId":Ljava/lang/String;
    :goto_5
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->setFullUpdating(Z)V

    .line 531
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 533
    return-void

    .line 515
    :catchall_3
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v17

    goto :goto_6

    .end local v17    # "lastReqTime":Ljava/lang/String;
    .local v2, "lastReqTime":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v2

    move-object v4, v7

    .end local v2    # "lastReqTime":Ljava/lang/String;
    .restart local v17    # "lastReqTime":Ljava/lang/String;
    goto :goto_6

    .end local v17    # "lastReqTime":Ljava/lang/String;
    .restart local v2    # "lastReqTime":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v4, v7

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v15, v4

    :goto_6
    move-object v3, v0

    .line 517
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_b
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastRpcSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$600(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 520
    const/4 v5, 0x0

    .line 522
    .local v5, "resCode":Ljava/lang/String;
    :try_start_c
    instance-of v0, v3, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_b

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    check-cast v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object v5, v0

    .line 527
    :cond_b
    goto :goto_7

    .line 525
    :catchall_7
    move-exception v0

    move-object v0, v4

    .line 526
    .local v0, "e2":Ljava/lang/Throwable;
    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string v4, "exception"

    invoke-virtual {v0, v4, v5, v2}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->logRpcSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 530
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "resCode":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->setFullUpdating(Z)V

    .line 531
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v0, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 533
    return-void

    .line 530
    :catchall_8
    move-exception v0

    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->setFullUpdating(Z)V

    .line 531
    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getUpgradeCache()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v3, v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->onRpcProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$1300(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

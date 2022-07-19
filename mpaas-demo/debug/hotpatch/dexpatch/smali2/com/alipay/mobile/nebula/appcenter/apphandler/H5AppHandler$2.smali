.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "H5AppHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCopyParam:Landroid/os/Bundle;

.field final synthetic val$finalHasAppInfo:Z

.field final synthetic val$finalNbsv:Ljava/lang/String;

.field final synthetic val$finalSyncUpdate:Ljava/lang/String;

.field final synthetic val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic val$nbOffMode:Ljava/lang/String;

.field final synthetic val$nbUrl:Ljava/lang/String;

.field final synthetic val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic val$syncOffline:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$syncOffline:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalNbsv:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-boolean p6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalHasAppInfo:Z

    iput-object p7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalSyncUpdate:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbOffMode:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalCopyParam:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 17
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .line 552
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 554
    return-void

    .line 557
    :cond_0
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestEndTime(J)V

    .line 558
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$syncOffline:Ljava/lang/String;

    .local v2, "offline":Ljava/lang/String;
    const/4 v3, 0x0

    .line 562
    .local v3, "finalResult":Z
    const/4 v4, 0x0

    .line 564
    .local v4, "rpcError":Z
    const/4 v5, 0x0

    .line 566
    .local v5, "afterUpdateApp":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const/4 v6, 0x0

    .line 567
    .local v6, "newBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 569
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalNbsv:Ljava/lang/String;

    .line 570
    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 571
    move-object v5, v7

    if-nez v7, :cond_1

    .line 572
    const/4 v3, 0x0

    .line 573
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 575
    :cond_1
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v7

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 576
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 579
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v7, :cond_2

    .line 580
    invoke-interface {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 584
    :cond_2
    iget-boolean v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalHasAppInfo:Z

    if-nez v7, :cond_6

    .line 587
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 589
    move-object v6, v7

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 591
    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->paramParse(Landroid/os/Bundle;)V
    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$100(Landroid/os/Bundle;)V

    .line 593
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v7, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 595
    nop

    .line 596
    const-string/jumbo v7, "nboffline"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 597
    nop

    .line 598
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    :cond_3
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 603
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 604
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 605
    :cond_4
    const-class v7, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 606
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v8, 0x0

    .line 607
    .local v8, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v8, v7

    if-eqz v7, :cond_5

    .line 608
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    .line 612
    .end local v8    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_5
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 613
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 617
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 620
    :cond_7
    const/4 v3, 0x0

    .line 621
    const/4 v4, 0x1

    .line 624
    :goto_0
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateApp onResult "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " nbsv "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalNbsv:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " finalResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-eqz v3, :cond_9

    .line 630
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v7

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->remove(Ljava/lang/String;)V

    .line 631
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalSyncUpdate:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbOffMode:Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object v14, v6

    goto :goto_1

    :cond_8
    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalCopyParam:Landroid/os/Bundle;

    move-object v14, v8

    :goto_1
    move-object v8, v2

    move-object v12, v5

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static/range {v7 .. v14}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 636
    :cond_9
    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalSyncUpdate:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbUrl:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v13, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v14, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$nbOffMode:Ljava/lang/String;

    if-eqz v6, :cond_a

    move-object v15, v6

    goto :goto_2

    :cond_a
    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$finalCopyParam:Landroid/os/Bundle;

    move-object v15, v11

    :goto_2
    move-object v11, v2

    move-object v12, v5

    move/from16 v16, v4

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateFail(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    invoke-static/range {v7 .. v16}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 640
    return-void
.end method

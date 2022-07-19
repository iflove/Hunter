.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "TinyAppManagerProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Landroid/os/Bundle;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->g:Landroid/os/Bundle;

    iput-boolean p8, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->h:Z

    iput-object p9, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 17
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 541
    return-void

    .line 544
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestEndTime(J)V

    .line 545
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->c:Ljava/lang/String;

    .local v2, "offline":Ljava/lang/String;
    const/4 v3, 0x0

    .line 549
    .local v3, "finalResult":Z
    const/4 v4, 0x0

    .line 551
    .local v4, "rpcError":Z
    const/4 v5, 0x0

    .line 553
    .local v5, "afterUpdateApp":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const/4 v6, 0x0

    .line 554
    .local v6, "newBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_a

    .line 556
    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->e:Ljava/lang/String;

    .line 557
    invoke-interface {v7, v8, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 558
    move-object v5, v7

    if-nez v7, :cond_1

    .line 559
    const/4 v3, 0x0

    .line 560
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 562
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v7

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 563
    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 566
    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v7, :cond_4

    .line 567
    const-string v7, ""

    .line 568
    .local v7, "oldName":Ljava/lang/String;
    const-string v8, ""

    .line 569
    .local v8, "oldIconUrl":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 570
    iget-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 571
    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 572
    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    if-eqz v9, :cond_2

    .line 573
    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->e:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->g:Landroid/os/Bundle;

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 574
    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->e:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->g:Landroid/os/Bundle;

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 577
    :cond_2
    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v9, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 578
    if-eqz v5, :cond_5

    .line 579
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 580
    iput-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 582
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 583
    iput-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 566
    .end local v7    # "oldName":Ljava/lang/String;
    .end local v8    # "oldIconUrl":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 589
    :cond_5
    :goto_0
    iget-boolean v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->h:Z

    if-nez v8, :cond_9

    .line 592
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 594
    move-object v6, v8

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 596
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Landroid/os/Bundle;)V

    .line 598
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v8, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 600
    nop

    .line 601
    const-string/jumbo v8, "nboffline"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 600
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 602
    nop

    .line 603
    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    :cond_6
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 608
    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 609
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 610
    :cond_7
    const-class v8, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 611
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 612
    .local v7, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v7, v8

    if-eqz v8, :cond_8

    .line 613
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    .line 617
    .end local v7    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_8
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 618
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 622
    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    .line 625
    :cond_a
    const/4 v3, 0x0

    .line 626
    const/4 v4, 0x1

    .line 629
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateApp onResult "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " nbsv "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " finalResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    if-eqz v3, :cond_c

    .line 635
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v7

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->remove(Ljava/lang/String;)V

    .line 636
    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->j:Ljava/lang/String;

    iget-object v13, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->k:Ljava/lang/String;

    if-eqz v6, :cond_b

    move-object v14, v6

    goto :goto_2

    :cond_b
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->g:Landroid/os/Bundle;

    move-object v14, v8

    :goto_2
    move-object v8, v2

    move-object v12, v5

    invoke-static/range {v7 .. v14}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 641
    :cond_c
    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->i:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->j:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v13, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v14, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->k:Ljava/lang/String;

    if-eqz v6, :cond_d

    move-object v15, v6

    goto :goto_3

    :cond_d
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$1;->g:Landroid/os/Bundle;

    move-object v15, v11

    :goto_3
    move-object v11, v2

    move-object v12, v5

    move/from16 v16, v4

    invoke-static/range {v7 .. v16}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 645
    return-void
.end method

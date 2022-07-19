.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCore(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 7
    .param p1, "setupTask"    # Lcom/uc/webview/export/utility/SetupTask;

    .line 660
    const-string v0, "setupTaskSuccess"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uc kernel init success, coreType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UcService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 663
    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 664
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUcSuccess:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcReallyInitSuccess:Z

    .line 666
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v1

    .line 667
    .local v1, "isForeground":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fgbg_success"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init success in foreground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v3, "h5_ucCloseCachePage"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 670
    const-string v3, "set cache page number: 0"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v3, "CachePageNumber"

    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 673
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updatePrivateDataDirectorySuffix()V

    .line 675
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->notifyUCInitSuccess()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$900()V

    .line 677
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    if-eqz v3, :cond_2

    .line 678
    const/16 v3, 0x32

    .line 679
    .local v3, "preDelay":I
    const-string v4, "h5_pre_multi_process_delay"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "delay":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 682
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 685
    goto :goto_0

    .line 683
    :catchall_0
    move-exception v5

    .line 684
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "parse pre delay error"

    invoke-static {v2, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateForMultiProcess(I)V

    .line 688
    .end local v3    # "preDelay":I
    .end local v4    # "delay":Ljava/lang/String;
    goto :goto_1

    .line 690
    :cond_2
    const-string v2, "mp_h5_uc_not_pre_create_webview"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 691
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V

    .line 694
    :cond_3
    :goto_1
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 700
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adapter_build_version"

    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 702
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 703
    const-string v0, "initCore2success"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 704
    const-string v0, "initCoreEnd"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 657
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method

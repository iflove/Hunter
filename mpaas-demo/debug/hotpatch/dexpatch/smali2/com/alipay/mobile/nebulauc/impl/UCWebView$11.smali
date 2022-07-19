.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportMultiProcessLaunchStatus(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isStaticWebview:Z

.field final synthetic val$mode:I

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(ZIZ)V
    .locals 0

    .line 1382
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$success:Z

    iput p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$isStaticWebview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1386
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$success:Z

    const-string v1, "multi process launch failed sp status: "

    const-string v2, "H5UCWebView"

    const-string v3, "launch_failed"

    const-string v4, "multi_process"

    const-string v5, "configMultiProcessMode"

    if-eqz v0, :cond_2

    .line 1387
    sget v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    iget v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    if-ne v0, v6, :cond_0

    .line 1389
    const-string v0, "H5_UC_MULTI_PROCESS_LAUNCH_SUCCESS"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1390
    .local v0, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget v6, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "multiProcessMode"

    invoke-virtual {v5, v7, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1391
    const-string v5, "renderProcessSuccess"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 1392
    iget v5, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    .end local v0    # "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_0
    const-string v0, "H5_UC_MULTI_PROCESS_LAUNCH_FALLBACK"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1396
    .restart local v0    # "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1397
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget v7, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "actualMultiProcessMode"

    invoke-virtual {v6, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1398
    const-string v6, "renderProcessFallback"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 1399
    sget v6, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget v5, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$mode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v4

    .line 1404
    .local v4, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    if-eqz v4, :cond_1

    .line 1405
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1406
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    move-result v3

    .line 1407
    .local v3, "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    .end local v3    # "status":Z
    .end local v4    # "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_1
    goto :goto_1

    .line 1411
    .end local v0    # "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_2
    const/4 v0, 0x1

    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasReportRenderProcessLaunchFailed:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1002(Z)Z

    .line 1412
    const-string v6, "renderProcessFailed"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 1413
    const-string v6, "H5_UC_MULTI_PROCESS_LAUNCH_FAILED"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 1414
    .local v6, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1415
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fg_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "fgbg"

    invoke-virtual {v7, v9, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1416
    sget v7, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v4

    .line 1419
    .restart local v4    # "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    if-eqz v4, :cond_3

    .line 1420
    invoke-virtual {v4, v3, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1421
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    move-result v0

    .line 1422
    .local v0, "status":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    .end local v0    # "status":Z
    .end local v4    # "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_3
    move-object v0, v6

    .end local v6    # "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .local v0, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$isStaticWebview:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isStaticWebView"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1426
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->addCommonInfoForMultiProcess(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1427
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1428
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;->val$isStaticWebview:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->report()V

    .line 1430
    return-void
.end method

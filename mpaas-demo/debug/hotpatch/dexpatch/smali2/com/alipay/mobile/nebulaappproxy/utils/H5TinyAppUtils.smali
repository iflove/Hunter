.class public Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;
.super Ljava/lang/Object;
.source "H5TinyAppUtils.java"


# static fields
.field public static final CONST_SCOPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONST_SCOPE_ALI_RUN:Ljava/lang/String; = "alirun"

.field public static final CONST_SCOPE_CAMERA:Ljava/lang/String; = "camera"

.field public static final CONST_SCOPE_INVOICE_TITLE:Ljava/lang/String; = "invoiceTitle"

.field public static final CONST_SCOPE_RECORD:Ljava/lang/String; = "audioRecord"

.field public static final CONST_SCOPE_USERINFO:Ljava/lang/String; = "userInfo"

.field public static final CONST_SCOPE_USERLOCATION:Ljava/lang/String; = "location"

.field public static final CONST_SCOPE_WRITE_PHOTOS_ALBUM:Ljava/lang/String; = "album"

.field private static final TAG:Ljava/lang/String; = "H5TinyAppUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 608
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "H5TinyAppUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 609
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 610
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v3, v2

    .line 611
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 613
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 614
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v4, v2

    .line 615
    .local v4, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 616
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 620
    .end local v4    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    .line 619
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 624
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 625
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    move-object v3, v2

    .line 626
    .local v3, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "localId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "localId :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-object v0

    .line 631
    .end local v0    # "localId":Ljava/lang/String;
    :cond_3
    const-string v0, "apmToolService ==null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .end local v3    # "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    :goto_0
    return-object v2
.end method

.method public static getAppDesc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 477
    const-string v0, ""

    .line 479
    .local v0, "appDesc":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 480
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 481
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 483
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 484
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 485
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 486
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 488
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 489
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 490
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 493
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 495
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 496
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    move-object v0, v5

    .line 498
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 499
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 502
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 503
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 504
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 505
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 507
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 509
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 510
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 517
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 515
    :catchall_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppIcon(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 529
    const-string v0, ""

    .line 531
    .local v0, "appIcon":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 532
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 535
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 536
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 537
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 538
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 540
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 542
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 543
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 545
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 547
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 548
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    move-object v0, v5

    .line 550
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 551
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 554
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 555
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 556
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 557
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 559
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 561
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 562
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 569
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 567
    :catchall_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "startupParams"    # Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 596
    .local v0, "currentAppId":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const-string/jumbo v1, "parentAppId"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_0
    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    const-string v1, "appId"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 581
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 582
    return-object v0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 586
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 587
    const-string v1, "H5TinyAppUtils"

    const-string v3, "getAppId...h5Page is null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-object v0

    .line 591
    :cond_1
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 376
    const-string v0, ""

    .line 378
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 379
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 380
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 382
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 383
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 384
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 385
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 387
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 389
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 390
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 392
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 394
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 395
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    move-object v0, v5

    .line 397
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 398
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 402
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 403
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 404
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 406
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 408
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 409
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 416
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 414
    :catchall_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 428
    const-string v0, ""

    .line 430
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 431
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v1

    if-eqz v1, :cond_6

    .line 432
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOfPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v1

    .line 433
    .local v2, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v2, v1

    sget-object v4, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v1, v4, :cond_3

    .line 435
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 437
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 440
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 442
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v1, :cond_2

    .line 443
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    move-object v0, v4

    .line 445
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    goto :goto_2

    .line 446
    :cond_3
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 450
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 451
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 452
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 454
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 456
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v1, :cond_6

    .line 457
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 464
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v2    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_6
    goto :goto_2

    .line 462
    :catchall_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5TinyAppUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppNameByAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 94
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v1, "appName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 100
    .end local v1    # "appName":Ljava/lang/String;
    :cond_0
    const-string v0, "H5TinyAppUtils"

    const-string v1, "getNameByAppId..appInfo is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, ""

    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "configName"    # Ljava/lang/String;

    .line 638
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 639
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 640
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v0

    const-string v3, "H5TinyAppUtils"

    if-nez v0, :cond_0

    .line 641
    const-string v0, "failed get config service"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-object v1

    .line 640
    :cond_0
    move-object v0, v1

    .line 646
    .local v0, "configValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 650
    nop

    .line 651
    return-object v0

    .line 647
    :catch_0
    move-exception v4

    .line 648
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "getConfig exception"

    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    return-object v1
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 226
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 227
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDensity...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5TinyAppUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Throwable;
    const/high16 v0, 0x40300000    # 2.75f

    return v0
.end method

.method public static getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 365
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;
    .locals 4

    const-string v0, "H5TinyAppUtils"

    .line 134
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v2, 0x0

    .line 138
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "getMultiProcessService..h5EventHandlerService null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 146
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMultiProcessService...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    return-object v0
.end method

.method public static getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 297
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 299
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v2, v0

    .line 300
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 301
    return-object v0

    .line 304
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 305
    .local v0, "bundle":Landroid/os/Bundle;
    move-object v0, v1

    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "appId":Ljava/lang/String;
    nop

    .line 307
    const-string v3, "appVersion"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    return-object v3
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    const/16 v0, 0x37

    .line 119
    .local v0, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 120
    .local v2, "resourceId":I
    move v2, v1

    if-lez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    :cond_0
    return v0
.end method

.method public static getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 10

    .line 241
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 242
    move-object v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 243
    return-object v2

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v1

    move-object v3, v2

    .line 248
    .local v3, "sessions":Ljava/util/Stack;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 249
    return-object v2

    .line 252
    :cond_1
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v4, v2

    move-object v5, v4

    .line 254
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_3

    .line 255
    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 256
    .local v4, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v4, v6

    if-eqz v6, :cond_2

    .line 260
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "id":Ljava/lang/String;
    const-string v7, "H5TinyAppUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sessionId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isDevSession(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 263
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v7

    .line 264
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v7

    if-eqz v7, :cond_2

    .line 265
    nop

    .line 266
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "MINI-PROGRAM-WEB-VIEW-TAG"

    .line 265
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 267
    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    .line 268
    monitor-exit v3

    return-object v5

    .line 254
    .end local v4    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "id":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 273
    .end local v1    # "index":I
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    .end local v3    # "sessions":Ljava/util/Stack;
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :catchall_1
    move-exception v1

    .line 275
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "H5TinyAppUtils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-object v2
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 311
    const/4 v0, 0x0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 313
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v2, 0x0

    .line 315
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 320
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_0
    return-object v0
.end method

.method public static isDebugVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 2
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 291
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "scene":Ljava/lang/String;
    const-string v1, "DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isDevSession(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "68687029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRemoteDebugConnected(Ljava/lang/String;)Z
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->get()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->isRemoteDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    return v1

    .line 327
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->get()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->getTinyAppRemoteDebugInterceptor()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;

    move-result-object v0

    const/4 v2, 0x0

    .line 328
    .local v2, "interceptor":Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v2, p0}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 331
    :cond_1
    return v1
.end method

.method public static isVConsolePanelOpened()Z
    .locals 1

    .line 335
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 661
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 662
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    return-void
.end method

.method public static sendMsgToRemoteWorker(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->get()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->getTinyAppRemoteDebugInterceptor()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 343
    .local v1, "interceptor":Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v1, p0}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;->sendMessageToRemoteWorker(Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method

.method public static sendMsgToRemoteWorkerOrVConsole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 349
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->sendMsgToRemoteWorker(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 353
    .local v2, "debugH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 355
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "content"

    invoke-virtual {v3, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v1

    .line 358
    .local v4, "consoleData":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    const-string v5, "data"

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string/jumbo v5, "onTinyDebugConsole"

    invoke-interface {v0, v5, v4, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 362
    .end local v2    # "debugH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "consoleData":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method public static submitTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 105
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 106
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 108
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .line 174
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;Z)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "forceReset"    # Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 188
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .local v1, "buffer":[B
    const/4 v2, 0x0

    move v3, v2

    .line 191
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    if-eq v4, v5, :cond_1

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static transferApPathToLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apPath"    # Ljava/lang/String;

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    return-object v1

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getLocalPathFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v1, "localPath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_1
    return-object v1
.end method

.method public static versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "currentVersion"    # Ljava/lang/String;
    .param p1, "targetVersion"    # Ljava/lang/String;

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 208
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "s1":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "s2":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 211
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 212
    array-length v5, v2

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 213
    .local v8, "v1":J
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_2
    move-wide v5, v6

    .line 214
    .local v5, "v2":J
    cmp-long v7, v8, v5

    if-gez v7, :cond_3

    .line 215
    return v1

    .line 216
    :cond_3
    cmp-long v7, v8, v5

    if-lez v7, :cond_4

    .line 217
    const/4 v1, 0x1

    return v1

    .line 211
    .end local v5    # "v2":J
    .end local v8    # "v1":J
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "i":I
    :cond_5
    const/4 v1, 0x0

    return v1

    .line 206
    .end local v0    # "s2":[Ljava/lang/String;
    .end local v2    # "s1":[Ljava/lang/String;
    .end local v3    # "length":I
    :cond_6
    :goto_2
    return v1
.end method

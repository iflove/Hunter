.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/InitTask;
.super Ljava/lang/Object;
.source "InitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "DYNAMICSDK-USER"

    const-string v1, "DYNAMICSDK-NOTIFY"

    .line 25
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->register()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 29
    .local v4, "ctx":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v4, v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 30
    .local v2, "context":Landroid/content/Context;
    const-class v5, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService;

    .line 31
    .local v5, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-string v6, "dynamicrelease_location"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "DynamicRelease"

    if-eqz v7, :cond_1

    .line 32
    const-class v7, Lcom/alipay/mobile/framework/service/LBSLocationManagerService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/service/LBSLocationManagerService;

    move-object v9, v3

    .line 33
    .local v9, "lbsService":Lcom/alipay/mobile/framework/service/LBSLocationManagerService;
    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/LBSLocationManagerService;->getLastKnownLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v7

    .line 34
    .local v3, "lastLocation":Lcom/alipay/mobile/common/lbs/LBSLocation;
    move-object v3, v7

    if-eqz v7, :cond_0

    .line 35
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 36
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-interface {v7, v6, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 37
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "lastLocation : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "   locationtime:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocationtime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-interface {v6, v8, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v3    # "lastLocation":Lcom/alipay/mobile/common/lbs/LBSLocation;
    .end local v9    # "lbsService":Lcom/alipay/mobile/framework/service/LBSLocationManagerService;
    :cond_0
    move-object v3, v9

    :cond_1
    :try_start_0
    const-class v6, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 47
    .local v3, "syncService":Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    move-object v3, v6

    if-eqz v6, :cond_2

    .line 48
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 50
    new-instance v6, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;

    invoke-direct {v6, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V

    .line 51
    .local v6, "syncCallback":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;
    invoke-virtual {v3, v1, v6}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 52
    invoke-virtual {v3, v0, v6}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v3    # "syncService":Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .end local v6    # "syncCallback":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    return-void

    .line 54
    :goto_1
    move-object v0, v3

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "LongLinkService is not available"

    invoke-interface {v1, v8, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

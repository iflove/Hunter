.class public Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;
.super Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
.source "UpdateServicesImpl.java"


# static fields
.field private static final DEFAULT_APKNAME:Ljava/lang/String; = "yapila2233_Alipay.apk"

.field private static final TAG:Ljava/lang/String; = "UPDATE"

.field public static final UPDATING_VERSION_KEY:Ljava/lang/String; = "update_version_key"

.field public static volatile upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;


# instance fields
.field private final TIME_INTERVAL:J

.field private clientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

.field private mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private mIsUpdating:Z

.field private mLastUpdatingTime:J

.field private mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

.field private taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    .line 89
    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->TIME_INTERVAL:J

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->clientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->preNormalUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->normalUpdate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;J)J
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mLastUpdatingTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->closeDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->dealDownloadFailed(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->retryDownloadOrNot(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->writeRetryChoiceLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showNormalDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$602(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showForceDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMD5(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->reportClickInstallApk(Ljava/lang/String;I)V

    return-void
.end method

.method private checkMD5(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    .line 877
    const-string v0, "com.alipay.mobile.base.config.ConfigService"

    const-string v1, "UPDATE"

    .line 879
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v4

    const-string v5, "android-phone-mobilesdk-commonbizservice"

    .line 880
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 881
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 882
    invoke-interface {v5, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v5

    .line 883
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 884
    const-string v4, "getConfig"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 885
    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "UPDATE_CHECK_MD5"

    aput-object v6, v4, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "getConfig() UPDATE_CHECK_MD5 error"

    invoke-interface {v4, v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 892
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5347\u7ea7MD5\u6821\u9a8c\u7684\u5f00\u5173\u503c\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v4, "YES"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 894
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \uff0c\u4e0d\u505aMD5\u6821\u9a8c"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return v3

    .line 897
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/MD5Util;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u670d\u52a1\u7aef\u4e0b\u53d1\u7684md5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u4e0b\u8f7d\u5230\u7684\u6587\u4ef6\u7684md5\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 905
    :cond_1
    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 906
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string v0, "apk\u6587\u4ef6MD5\u6821\u9a8c\u5931\u8d25\uff01"

    invoke-interface {p2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMd5Failed(ZLjava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->deletePackageFile(Ljava/lang/String;)V

    .line 910
    return v2

    .line 912
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "apk\u6587\u4ef6\u7684MD5\u6821\u9a8c\u901a\u8fc7\uff0c\u542f\u52a8\u5b89\u88c5"

    invoke-interface {p1, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return v3

    .line 900
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo p2, "\u5b58\u5728\u4e3a\u7a7a\u7684MD5\uff01\u65e0\u6cd5\u5b89\u88c5"

    invoke-interface {p1, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMd5Failed(ZLjava/lang/String;)V

    .line 903
    return v2
.end method

.method private checkMd5Failed(ZLjava/lang/String;)V
    .locals 5

    .line 921
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->recordDownloadMd5Failed()V

    .line 922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->getDownloadMd5FailedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upgrade_download_md5_fail_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string/jumbo v1, "newversion"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v2, "download_md5_failed"

    const-string v3, "UPGRADE-DOWNLOAD-MD5-FAILED-0323"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 927
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method

.method private closeDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    .line 757
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_0
    goto :goto_0

    .line 761
    :catchall_0
    move-exception p1

    .line 762
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UPDATE"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :goto_0
    return-void
.end method

.method private dealDownloadFailed(ZLjava/lang/String;)V
    .locals 0

    .line 975
    if-eqz p1, :cond_0

    .line 976
    invoke-direct {p0, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->forceUpdateDownloadFailed(Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method private forceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    .line 768
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    if-eqz v0, :cond_1

    .line 769
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;->needForceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->upgradeForceExitCallback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeForceExitCallback;->doForceExit(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    goto :goto_0

    .line 772
    :cond_0
    return-void

    .line 775
    :cond_1
    if-eqz p1, :cond_2

    .line 776
    invoke-interface {p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    .line 777
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 780
    :cond_2
    :goto_0
    return-void
.end method

.method private forceUpdateDownloadFailed(Ljava/lang/String;)V
    .locals 10

    .line 986
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "\u5f3a\u5347\u4e0b\u8f7d\u5931\u8d25!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 989
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->retry_download_title:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 991
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->upgrade_download_failed:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 992
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setCancelable(Z)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 993
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->retry_download:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$10;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 1003
    invoke-virtual {v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->show()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    .line 1004
    sget-object v4, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->OPENPAGE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v5, "redownload"

    const-string v6, "FORCE-DOWNLOAD-FAILED-160720"

    const-string v7, ""

    const-string/jumbo v8, "newversion"

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    goto :goto_0

    .line 1005
    :catchall_0
    move-exception p1

    .line 1006
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "\u63d0\u793a\u5347\u7ea7\u5931\u8d25\u65f6\u5d29\u6e83\uff01"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1008
    :goto_0
    return-void
.end method

.method private static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 745
    nop

    .line 747
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 748
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    goto :goto_0

    .line 749
    :catchall_0
    move-exception p0

    const-string p0, ""

    .line 752
    :goto_0
    return-object p0
.end method

.method public static getCanAlertTopActivity()Landroid/app/Activity;
    .locals 4

    .line 513
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 516
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPDATE"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->isInAlertWhiteList(Ljava/lang/String;)Z

    move-result v1

    .line 519
    if-eqz v1, :cond_1

    .line 520
    return-object v0

    .line 524
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private ignoreUpdate(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 6

    .line 163
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    const/16 v3, 0xca

    if-eq v0, v3, :cond_0

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo v0, "versionUpdateCheck.resultStatus != 202"

    invoke-interface {p1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v1

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    const/4 v3, 0x0

    const-string v4, "about_ignore_update_version"

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v4, "bs is null"

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bs is not null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 175
    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 177
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bs = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v1

    .line 172
    :catch_0
    move-exception p1

    .line 173
    return v1
.end method

.method private isConformPopDialogCondition(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)Z
    .locals 4

    .line 249
    nop

    .line 250
    iget-object v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->dataSourceType:Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5347\u7ea7\u4fe1\u606f\u6765\u6e90\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPDATE"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v1, "upgrade_from_sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->isInUpgradeInterval()Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    nop

    .line 257
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImmediately() \u5728\u9759\u9ed8\u671f\u5185\uff0c\u4e0d\u5904\u7406\u5f39\u6846\u903b\u8f91isConformPopDialogCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v1

    .line 261
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkNetWorkCondition(Ljava/lang/String;)Z

    move-result v0

    .line 264
    if-nez v0, :cond_1

    .line 265
    nop

    .line 266
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImmediately() \u5f53\u524d\u5ba2\u6237\u7aef\u7f51\u7edc\u7c7b\u578b\u4e0d\u7b26\u5408\u670d\u52a1\u7aef\u4e0b\u53d1\u7684\u7f51\u7edc\u7c7b\u578b isConformPopDialogCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return v1

    .line 271
    :cond_1
    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkUserIdCondition(Ljava/lang/String;)Z

    move-result p1

    .line 273
    if-nez p1, :cond_2

    .line 274
    nop

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo v0, "updateImmediately() userid \u4e0d\u662f\u540c\u4e00\u4e2a"

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImmediately() \u7b26\u5408\u6761\u4ef6isConformPopDialogCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return v1
.end method

.method public static isHaveCurrentChannelId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 371
    const-string v0, "UPDATE"

    .line 373
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 375
    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 376
    array-length p2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 378
    :try_start_1
    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    .line 379
    const/4 v2, 0x1

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :catch_0
    move-exception p0

    move v1, v2

    goto :goto_1

    .line 377
    :cond_1
    move v1, v2

    .line 386
    :cond_2
    goto :goto_2

    .line 384
    :catch_1
    move-exception p0

    .line 385
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isHaveCurrentChannelId is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return v1
.end method

.method private isUpdatingAndUpdateStateTimeReasonable()Z
    .locals 6

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpdatingAndUpdateStateTimeReasonable() mIsUpdating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPDATE"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    return v1

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mLastUpdatingTime:J

    sub-long/2addr v2, v4

    .line 147
    const-wide/32 v4, 0x1499700

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    .line 151
    return v1
.end method

.method private needUpdate(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 2

    .line 128
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->ignoreUpdate(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->isUpdatingAndUpdateStateTimeReasonable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    :goto_0
    return p1
.end method

.method private normalUpdate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 10

    .line 624
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v7

    .line 625
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadManager;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-interface {v7, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadManager;

    .line 628
    new-instance v9, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$8;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 726
    new-instance p2, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    invoke-direct {p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;-><init>()V

    .line 727
    invoke-interface {v9, p2}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;->onLoadNotificationConfig(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;)V

    .line 728
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 729
    sget p3, Lcom/alipay/mobile/android/security/upgrade/R$string;->client_update_desc:I

    invoke-static {p3}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "nomalUpdate  upgradeVersion = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "UPDATE"

    invoke-interface {p1, p5, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getInstance()Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/alipay/mobile/android/security/upgrade/service/UpdatePackageManager;->getUpgradeApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 734
    :cond_0
    const-string/jumbo p1, "yapila2233_Alipay.apk"

    .line 736
    :cond_1
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 737
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setShowRunningNotification(Z)V

    .line 738
    invoke-interface {v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v8, p2, v9}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeExternalDownloadManager;->addDownload(Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 740
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object p1

    const-string p2, "NORMAL_UPDATE"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 741
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object p1

    const-string/jumbo p3, "normalUpdate_UpdateSuccess_Time"

    invoke-virtual {p1, p2, p3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method private preNormalUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 614
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "\u666e\u901a\u4e0b\u8f7d\u524d\uff0c\u6821\u9a8c\u662f\u5426\u5728\u9759\u9ed8\u4e0b\u8f7d\uff0c\u5982\u679c\u5728\u9759\u9ed8\u4e0b\u8f7d\uff0c\u5219\u5148cancel\u6389\u9759\u9ed8\u4e0b\u8f7d\u4efb\u52a1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->isSilentDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 616
    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "\u666e\u901a\u4e0b\u8f7d\u524d\uff0c\u68c0\u6d4b\u5230\u9759\u9ed8\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0ccancel\u6389\u9759\u9ed8\u4efb\u52a1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->stopSilentDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    return-void
.end method

.method private reportClickInstallApk(Ljava/lang/String;I)V
    .locals 4

    .line 843
    nop

    .line 844
    const-string v0, "UPGRADE-NORMAL-160323"

    const/16 v1, 0x16

    if-ne v1, p2, :cond_0

    .line 845
    goto :goto_0

    .line 846
    :cond_0
    const/16 v1, 0xb

    if-ne v1, p2, :cond_1

    .line 847
    const-string v0, "UPGRADE-SILENT-160323"

    goto :goto_0

    .line 848
    :cond_1
    const/16 v1, 0x21

    if-ne v1, p2, :cond_2

    .line 849
    const-string v0, "UPGRADE-FORCE-160323"

    .line 852
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 853
    const-string/jumbo v2, "newversion"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v2, "UPGRADE-CLICK-INSTALL-160216-001"

    const-string v3, "UpgradeClickInstall"

    invoke-static {v2, v0, v3, v1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 858
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 860
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setClickInstallCurrentVersion(Ljava/lang/String;)V

    .line 863
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 864
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setClickUpgradeTargetVersion(Ljava/lang/String;I)V

    .line 866
    :cond_4
    return-void
.end method

.method private retryDownloadOrNot(ZZ)V
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 1018
    const/4 v1, 0x0

    const-string/jumbo v2, "update_info_cache_on_error_key"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 1019
    if-eqz v0, :cond_1

    .line 1020
    new-instance p2, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;

    invoke-direct {p2, v0, p0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    .line 1022
    if-eqz p1, :cond_0

    .line 1023
    invoke-virtual {p2}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->startDownload()V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;->later()V

    .line 1026
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1028
    :goto_0
    goto/16 :goto_3

    .line 1029
    :cond_1
    const-string p1, "UPDATE"

    if-eqz p2, :cond_2

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1032
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1033
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->update_fail_retry_title:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 1034
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->update_fail_retry:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 1035
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->exit_wallet:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$11;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Z)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 1041
    invoke-virtual {v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->show()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1042
    :catchall_0
    move-exception v0

    .line 1043
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "\u63d0\u793a\u5347\u7ea7\u5931\u8d25\u65f6\u5d29\u6e83\uff01"

    invoke-interface {v2, p1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    :goto_1
    goto :goto_2

    .line 1047
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "\u91cd\u8bd5\u4e0b\u8f7d\uff0c\u975e\u5f3a\u5347\uff0cupdateRes \u4e3a\u7a7a "

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->update_fail_retry:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1050
    :goto_2
    new-instance p1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 1051
    const-string v0, "UC-SECURITY-150926-01"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v0, "nocache"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1053
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1057
    :goto_3
    return-void
.end method

.method private showForceDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 18

    .line 477
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v11, "UPDATE"

    :try_start_0
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_find_new_version:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_now:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 482
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 485
    :goto_1
    new-instance v7, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;

    invoke-direct {v7, v0, v10}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    .line 486
    new-instance v8, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$6;

    invoke-direct {v8, v10}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$6;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V

    .line 496
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V

    .line 497
    sget-object v12, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->OPENPAGE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v13, "ForceUpgradeAfterLogin.show"

    const-string v14, "UC-QZSJ-160201-01"

    const-string v15, ""

    const-string/jumbo v16, "newversion"

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "\u5f3a\u5236\u5347\u7ea7\u5f39\u6846 \uff0csync\u7248\u672c\u540e\u53ef\u4ee5\u8d70\u5230\u8fd9\u91cc\uff0csetDoSilentDownload false"

    invoke-interface {v0, v11, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    goto :goto_2

    .line 500
    :catchall_0
    move-exception v0

    .line 501
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 502
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u5f3a\u5236\u5347\u7ea7\u5f39\u6846\u5f02\u5e38\uff0csync\u7248\u672c\u540e\u53ef\u4ee5\u8d70\u5230\u8fd9\u91cc setDoSilentDownload true"

    invoke-interface {v1, v11, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    :goto_2
    return-void
.end method

.method private showNormalDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 15

    .line 393
    move-object v12, p0

    move-object/from16 v0, p1

    const-string v13, "NORMAL_UPDATE"

    const-string v14, "UPDATE"

    :try_start_0
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_find_new_version:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 394
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_now:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_next_time_to_choice:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 399
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    :goto_1
    new-instance v9, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;

    invoke-direct {v9, v0, p0}, Lcom/alipay/mobile/android/security/upgrade/listener/UpgradeDialogListener;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    .line 404
    new-instance v10, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$4;

    invoke-direct {v10, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$4;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V

    .line 414
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v7, v9

    invoke-virtual/range {v1 .. v11}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V

    .line 416
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    const-string/jumbo v2, "normalUpdate_Bombox_Time"

    invoke-virtual {v1, v13, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 417
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V

    .line 419
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 420
    const-string v2, "MM-0104-1"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v2, "upgrade"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v2, "remindUpgradeView"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v2, "newversion"

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "\u666e\u901a\u5f39\u6846 \uff0csetDoSilentDownload false"

    invoke-interface {v0, v14, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    goto :goto_2

    .line 427
    :catchall_0
    move-exception v0

    .line 428
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u666e\u901a\u5f39\u6846\u5f02\u5e38 setDoSilentDownload true"

    invoke-interface {v1, v14, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 431
    :goto_2
    return-void
.end method

.method private showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
    .locals 15

    .line 435
    move-object v12, p0

    move-object/from16 v0, p1

    const-string v13, "NORMAL_UPDATE"

    const-string v14, "UPDATE"

    :try_start_0
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->silent_update_find_new_version:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->silent_update_install:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 438
    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->silent_update_next_time:I

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 441
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 442
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 444
    :goto_1
    new-instance v10, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$5;

    invoke-direct {v10, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$5;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V

    .line 452
    new-instance v9, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;

    invoke-direct {v9, v0, p0}, Lcom/alipay/mobile/android/security/upgrade/listener/SilentUpgradeDialogListener;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    .line 455
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v7, v9

    invoke-virtual/range {v1 .. v11}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V

    .line 457
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    const-string/jumbo v2, "silentUpdate_Bombox_Time"

    invoke-virtual {v1, v13, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 458
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V

    .line 459
    const-string v1, "SILENT-UPGRADE"

    const-string v2, "HomeSilentUpgrade.show"

    const-string v3, "160201-01"

    const-string/jumbo v4, "newversion"

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "\u9759\u9ed8\u5f39\u6846"

    invoke-interface {v0, v14, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    goto :goto_2

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u9759\u9ed8\u5f39\u6846\u5f02\u5e38"

    invoke-interface {v1, v14, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 467
    :goto_2
    return-void
.end method

.method private update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V
    .locals 4

    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->needUpdate(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const/4 v1, 0x0

    const-string v2, "about_update_info_cache_key"

    invoke-virtual {v0, v1, v1, v2, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iget-object v2, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    const-string/jumbo v3, "update_info_cache_on_error_key"

    invoke-virtual {v0, v1, v1, v3, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object p1, p1, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->updateUpgradeInfoCacheForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 193
    :cond_0
    return-void
.end method

.method private updateImmediately(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 13

    .line 285
    const-string v0, "UPDATE"

    const-string v1, "NORMAL_UPDATE"

    :try_start_0
    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setUpgradeVersion(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53d1\u73b0\u65b0\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resultStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 289
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v2

    const-string/jumbo v3, "normalUpdate_Bombox_Time"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    .line 292
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v2

    const-string/jumbo v3, "silentUpdate_Bombox_Time"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkUpgradePackageState(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)I

    move-result v1

    .line 296
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    iget-object v3, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 298
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 335
    :pswitch_1
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$3;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "about_ignore_update_version"

    iget-object v7, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->newestVersion:Ljava/lang/String;

    .line 302
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x93a80

    const-string/jumbo v12, "txt"

    .line 300
    invoke-virtual/range {v3 .. v12}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "UpdateConstants.IGNORE_UPDATE_PERIOD=604800"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :pswitch_3
    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$2;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ILcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .line 359
    :goto_0
    goto :goto_1

    .line 357
    :catch_0
    move-exception p1

    .line 358
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "updateImmediately\u5f02\u5e38"

    invoke-interface {v1, v0, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeRetryChoiceLog(Ljava/lang/String;)V
    .locals 2

    .line 1060
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 1061
    const-string v1, "UC-SECURITY-150925-02"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 1062
    const-string v1, "failinstall"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1065
    return-void
.end method


# virtual methods
.method public alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V
    .locals 12

    .line 1084
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v11}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V

    .line 1085
    return-void
.end method

.method public alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Z)V
    .locals 12

    .line 1091
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V

    .line 1092
    return-void
.end method

.method public alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V
    .locals 1

    .line 1098
    new-instance v0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1099
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1100
    invoke-virtual {v0, p10}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setCancelable(Z)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1101
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1102
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1103
    invoke-virtual {v0, p9}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1104
    invoke-virtual {v0, p5, p6}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1105
    invoke-virtual {v0, p7, p8}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    .line 1106
    invoke-virtual {v0}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->show()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 1109
    if-eqz p11, :cond_0

    const-string/jumbo p1, "upgrade_dialog_from_where"

    invoke-virtual {p11, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "upgrade_from_about_check"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "UPDATE"

    const-string/jumbo p3, "\u7531\u5173\u4e8e\u9875\u68c0\u6d4b\u5347\u7ea7\u89e6\u53d1\u5f39\u6846\uff0c\u4e0d\u8bbe\u7f6e\u9759\u9ed8\u671f"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->setPopUpgradeDialogTime(J)V

    .line 1114
    :goto_0
    return-void
.end method

.method public checkUpdate(Ljava/lang/String;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;)V

    const-string p1, "checkUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public isUpdating()Z
    .locals 1

    .line 1070
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    .line 530
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 531
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 533
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 534
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mDiskCacheService:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 535
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 536
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 537
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 538
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 539
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    .line 540
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->clientVersionServiceFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/ClientUpgradeFacade;

    .line 541
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .line 545
    return-void
.end method

.method public reInitUpdateDialog()V
    .locals 3

    .line 1075
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "reInitDialogState"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    .line 1077
    return-void
.end method

.method public update(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)V
    .locals 1

    .line 788
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->convert(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object p1

    .line 789
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;-><init>()V

    .line 790
    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 791
    const-string/jumbo p1, "upgrade_from_login"

    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->dataSourceType:Ljava/lang/String;

    .line 792
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V

    .line 793
    return-void
.end method

.method public update(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)V
    .locals 1

    .line 801
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->convert(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object p1

    .line 802
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;-><init>()V

    .line 803
    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 804
    const-string/jumbo p1, "upgrade_from_sync"

    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->dataSourceType:Ljava/lang/String;

    .line 805
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V

    .line 806
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6

    .line 604
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 605
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    .locals 9

    .line 549
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 550
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 551
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->URGENT:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 553
    new-instance v8, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public updateCacheJustForRetry(Ljava/lang/Object;)V
    .locals 4

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "\u5f00\u59cb\u66f4\u65b0\u91cd\u8bd5\u7f13\u5b58"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    nop

    .line 199
    instance-of v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    goto :goto_0

    .line 201
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;

    if-eqz v0, :cond_1

    .line 202
    check-cast p1, Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->convert(Lcom/alipay/mobile/android/security/upgrade/info/UpdateInfo;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_1
    move-object p1, v2

    .line 204
    :goto_0
    if-eqz p1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v3, "update_info_cache_on_error_key"

    invoke-virtual {v0, v2, v2, v3, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo v0, "\u6210\u529f\u66f4\u65b0\u4e86\u91cd\u8bd5\u7f13\u5b58"

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    return-void
.end method

.method public declared-synchronized updateImmediately()V
    .locals 3

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const/4 v1, 0x0

    const-string v2, "about_update_info_cache_key"

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;

    .line 214
    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "updateImmediately updateResWrap == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-nez v1, :cond_1

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "updateImmediately clientUpgradeRes == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->isConformPopDialogCondition(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)Z

    move-result v1

    .line 223
    if-nez v1, :cond_2

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "updateImmediately \u4e0d\u6ee1\u8db3\u5f39\u6846\u6761\u4ef6 return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 227
    :cond_2
    :try_start_3
    iget-object v1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-eqz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mUpdateDialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mGenericMemCacheService:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string v1, "about_update_info_cache_key"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 233
    :cond_3
    :try_start_4
    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->updateImmediately(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    const-wide/16 v0, 0xbb8

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "UPDATE"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateRpcRes(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 1

    .line 809
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;-><init>()V

    .line 810
    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->clientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 811
    const-string/jumbo p1, "upgrade_from_sync"

    iput-object p1, v0, Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;->dataSourceType:Ljava/lang/String;

    .line 812
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->update(Lcom/alipay/mobile/android/security/upgrade/info/ClientUpgradeResWrap;)V

    .line 813
    return-void
.end method

.method public updateUpgradeInfoCacheForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 3

    .line 817
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "\u66f4\u65b0\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->updateUpgradeInfoForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 819
    return-void
.end method

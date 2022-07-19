.class public Lcom/alipay/mobile/nebula/util/H5ServiceUtils;
.super Ljava/lang/Object;
.source "H5ServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ServiceUtils"

.field private static sUcService:Lcom/alipay/mobile/h5container/service/UcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .locals 4

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 82
    .local v2, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "H5_ABNORMAL_ERROR"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v3, "SERVICE_NOT_FOUND"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v3, "H5AppCenterService"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 86
    :cond_0
    return-object v2
.end method

.method public static getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .locals 5

    .line 91
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    .line 92
    .local v0, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    const/4 v1, 0x0

    .line 93
    .local v1, "appDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    .line 97
    :cond_0
    if-nez v1, :cond_1

    .line 98
    const-string v2, "H5_ABNORMAL_ERROR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "SERVICE_NOT_FOUND"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "H5AppDBService"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 101
    :cond_1
    return-object v1
.end method

.method public static getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 4

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    move-object v2, v1

    .line 71
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "H5_ABNORMAL_ERROR"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v3, "SERVICE_NOT_FOUND"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v3, "H5Service"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 75
    :cond_0
    return-object v2
.end method

.method public static getServiceDownGradeMode()Ljava/lang/String;
    .locals 4

    .line 111
    const-string/jumbo v0, "new"

    .line 112
    .local v0, "mode":Ljava/lang/String;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 113
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "h5ServiceDowngradeMode"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 115
    .local v2, "modeJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "mode"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .end local v2    # "modeJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v0
.end method

.method public static getUcService()Lcom/alipay/mobile/h5container/service/UcService;
    .locals 6

    .line 29
    const-string v0, "android-phone-wallet-nebulauc"

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/h5container/service/UcService;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/UcService;

    const/4 v2, 0x0

    move-object v3, v2

    .line 31
    .local v3, "service":Lcom/alipay/mobile/h5container/service/UcService;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 32
    return-object v3

    .line 36
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getServiceDownGradeMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "new"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    return-object v2

    .line 42
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    if-nez v1, :cond_4

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v4

    move-object v5, v2

    .line 47
    .local v5, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v5, v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v4, v2

    .line 49
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "com.alipay.mobile.nebulauc.impl.UcServiceImpl"

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/UcService;

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_3
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5ServiceUtils"

    const-string v4, "getUcService"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 61
    .local v0, "reflectCanFound":Z
    :goto_1
    const-string v1, "H5_ABNORMAL_ERROR"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v4, "SERVICE_NOT_FOUND"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v4, "UcService"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "reflectFound"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 65
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->sUcService:Lcom/alipay/mobile/h5container/service/UcService;

    return-object v1
.end method

.class public Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
.super Ljava/lang/Object;
.source "TinyInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$MyContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TinyInit"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mChannelId:Ljava/lang/String;

.field private mCustomProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mExtDeviceId:Ljava/lang/String;

.field private mH5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

.field private mH5AppCenterPresetProvider:Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

.field private mH5UaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

.field private mLogEncryptClient:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

.field private mNeedPresetBizApp:Z

.field private mPresetAppListStream:Ljava/io/InputStream;

.field private mTraceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mVersionName:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mChannelId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mExtDeviceId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mLogEncryptClient:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 53
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mTraceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5UaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 56
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mCustomProviders:Ljava/util/Map;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mNeedPresetBizApp:Z

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupLogging()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupMonitor()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupNebula()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setUpConfigService()V

    return-void
.end method

.method private static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "TinyInit"

    const-string v1, ""

    .line 222
    .local v1, "ret":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 223
    return-object v1

    .line 225
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    .line 227
    .local v2, "logger":Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :try_start_0
    const-string v3, "com.ut.device.UTDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 228
    const-string v4, "getUtdid"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 229
    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v3

    .line 231
    const-string v3, "[*] UTDID error\u3002"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inside getUtdid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v1
.end method

.method private initInsideType()V
    .locals 1

    .line 295
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 296
    return-void
.end method

.method private preset()V
    .locals 7

    .line 299
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    move-object v2, v1

    .line 300
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    const-string v3, "TinyInit"

    if-nez v0, :cond_0

    .line 301
    const-string v0, "h5Service == null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mCustomProviders:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setCustomProviders(Ljava/util/Map;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppCenterPresetProvider:Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    if-eqz v0, :cond_1

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "preset custom H5AppCenterPresetProvider"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppCenterPresetProvider:Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "preset InsidePresetProviderImpl"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mNeedPresetBizApp:Z

    if-nez v0, :cond_2

    .line 316
    return-void

    .line 318
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 319
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-object v4, v1

    .line 320
    .local v4, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v4, v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    const-string/jumbo v5, "nebulaPreset"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->listArmFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetApp(Ljava/util/List;)V

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetAppList(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :goto_1
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    .line 334
    return-void

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    goto :goto_1

    .line 333
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    throw v0

    .line 325
    :catchall_2
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 329
    .end local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 330
    :catchall_3
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    .line 333
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    throw v0

    .line 328
    :catchall_5
    move-exception v0

    .line 329
    :try_start_6
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 333
    :goto_3
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    .line 334
    goto :goto_4

    .line 330
    :catchall_6
    move-exception v5

    .line 331
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 333
    :goto_4
    throw v0

    :catchall_7
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    throw v0

    .line 337
    :cond_3
    return-void
.end method

.method private setUpConfigService()V
    .locals 5

    .line 150
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    .line 153
    .local v0, "appInfo":Lcom/alipay/mobile/common/info/AppInfo;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "nebulamng_bundleid"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStringValueFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 155
    .local v3, "productId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_android"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/info/AppInfo;->setProductID(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    .line 161
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 163
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 164
    const-string v1, "TinyInit"

    const-string v4, "failed get config service"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/ConfigService;->loadConfig()V

    .line 168
    return-void
.end method

.method private setupLogging()V
    .locals 6

    .line 172
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mTraceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-eqz v1, :cond_0

    .line 173
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->setTraceLogger(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;)V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    move-object v2, v0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    move-object v2, v0

    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    const-string/jumbo v3, "nebulamng_bundleid"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStringValueFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v2, "bundleId":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 187
    .local v3, "productId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductId(Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mVersionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mVersionName:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductVersion(Ljava/lang/String;)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mExtDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mExtDeviceId:Ljava/lang/String;

    const-string v5, "extdeviceid"

    invoke-interface {v1, v5, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->setDeviceId(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mChannelId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mChannelId:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->setChannelId(Ljava/lang/String;)V

    .line 205
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mLogEncryptClient:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    if-eqz v1, :cond_5

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mLogEncryptClient:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)V

    .line 209
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v0, v0, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string v4, "ClientEvent_ClientLaunch"

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void

    .line 182
    .end local v3    # "productId":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "nebulamng_bundleid not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupMonitor()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/ClientMonitor;

    .line 240
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterMonitorContext;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterMonitorContext;-><init>()V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterTimestampInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterTimestampInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->bind(Lcom/alipay/mobile/monitor/api/MonitorContext;Lcom/alipay/mobile/monitor/api/TimestampInfo;)V

    .line 241
    return-void
.end method

.method private setupNebula()V
    .locals 5

    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TinyInit"

    const-string/jumbo v2, "setupNebula"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->initInsideType()V

    .line 257
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "preset"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->preset()V

    .line 260
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5PresetDefaultConfig;->initDefaultConfig()V

    .line 262
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 264
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 266
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5UaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5UaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "setupNebula end"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method


# virtual methods
.method public setAppCenterPresetProvider(Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "presetProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppCenterPresetProvider:Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 105
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mChannelId:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setCustomProviders(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "providers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mCustomProviders:Ljava/util/Map;

    .line 116
    return-object p0
.end method

.method public setExtDeviceId(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "extDeviceId"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mExtDeviceId:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public setH5AppBizRpcProvider(Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "mH5AppBizRpcProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 70
    return-object p0
.end method

.method public setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "logEncryptClient"    # Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mLogEncryptClient:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 90
    return-object p0
.end method

.method public setPresetAppList(Ljava/io/InputStream;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 1
    .param p1, "presetAppListStream"    # Ljava/io/InputStream;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mNeedPresetBizApp:Z

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mPresetAppListStream:Ljava/io/InputStream;

    .line 111
    return-object p0
.end method

.method public setTraceLogger(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "traceLogger"    # Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mTraceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 100
    return-object p0
.end method

.method public setUaProvider(Lcom/alipay/mobile/nebula/provider/H5UaProvider;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "uaProvider"    # Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mH5UaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 95
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mVersionName:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setup()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->setup(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$OnInitListener;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->mApplication:Landroid/app/Application;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->setup(Landroid/app/Application;Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$OnInitListener;)V

    .line 147
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "application null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

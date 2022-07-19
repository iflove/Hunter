.class public Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;
.super Ljava/lang/Object;
.source "MiniProgramInitService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;


# instance fields
.field private mInterceptEventPlugin:Lcom/alipay/mobile/h5container/api/H5Plugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->reregisterInterceptPlugin()V

    return-void
.end method

.method private addConfigChangeListener()V
    .locals 2

    .line 55
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    .line 56
    .local v1, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/base/config/ConfigService;->addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public static get()Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;
    .locals 2

    .line 31
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->sMe:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->sMe:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->sMe:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->sMe:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    return-object v0
.end method

.method private registerInterceptPlugin()V
    .locals 2

    .line 76
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->mInterceptEventPlugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->mInterceptEventPlugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 80
    return-void
.end method

.method private reregisterInterceptPlugin()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->mInterceptEventPlugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->mInterceptEventPlugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 43
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->TAG:Ljava/lang/String;

    const-string v1, "init..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->getInstance()Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->setOAuthService(Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;)V

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->addConfigChangeListener()V

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->registerInterceptPlugin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

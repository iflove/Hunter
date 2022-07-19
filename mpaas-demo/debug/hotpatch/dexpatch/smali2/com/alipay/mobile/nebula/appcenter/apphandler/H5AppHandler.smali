.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;
.super Ljava/lang/Object;
.source "H5AppHandler.java"


# static fields
.field private static final APPX_UPDATE_FAILED_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31775"

.field private static final APPX_UPDATE_SUCCESS_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31776"

.field public static final CHECK_KEY:Ljava/lang/String; = "nebulaStartflag"

.field public static final CHECK_VALUE:Ljava/lang/String; = "yes"

.field private static final DEBUG_ERROR_CODE:I = 0xc352

.field private static final HAS_CHECKED_MIN_APPX_VERSION:Ljava/lang/String; = "hasCheckedMinAppxVersion"

.field private static final NORMAL_EROOR_CODE:I = 0x3e9

.field public static final PERF_IS_LOCAL_KEY:Ljava/lang/String; = "is_local"

.field public static final PERF_OPENAPP_TIME_KEY:Ljava/lang/String; = "perf_open_app_time"

.field private static final PERF_RPC_TIME_KEY:Ljava/lang/String; = "perf_rpc_time"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME:I = 0x3e8

.field private static final TINY_APP_BIZ_TYPE:Ljava/lang/String; = "TINYAPP"

.field private static final UPGRADE_CLIENT_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31777"

.field public static h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService; = null

.field private static isFirstStartApp:Z = false

.field private static final mergeParamKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

.field public static final sAppIcon:Ljava/lang/String; = "appIcon"

.field public static final sAppName:Ljava/lang/String; = "appName"

.field public static final sAppSlogan:Ljava/lang/String; = "appSlogan"

.field private static waitCount:I

.field private static waitMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "H5AppHandler"

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    .line 92
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitMax:I

    .line 109
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    .line 305
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->mergeParamKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .locals 1

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->paramParse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doOpenApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 78
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openUpdateAppClient(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 78
    invoke-static/range {p0 .. p6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 78
    invoke-static/range {p0 .. p6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "x5"    # Ljava/lang/String;

    .line 78
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 78
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 78
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 78
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showLoadingError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$1900(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 78
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showAppError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Landroid/os/Bundle;

    .line 78
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Landroid/os/Bundle;
    .param p9, "x9"    # Z

    .line 78
    invoke-static/range {p0 .. p9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateFail(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .line 78
    sget v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 78
    sput p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 78
    sget v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitMax:I

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 78
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    return-void
.end method

.method static synthetic access$800(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 78
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "copyParam"    # Landroid/os/Bundle;
    .param p5, "syncOffline"    # Ljava/lang/String;
    .param p6, "loadingType"    # Ljava/lang/String;

    .line 936
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 937
    .local v2, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v2, v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 938
    return v3

    .line 941
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isSetAppxMinVersionValid(Ljava/lang/String;)Z

    move-result v4

    .line 942
    if-nez v4, :cond_1

    .line 943
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v4, "checkAppxMinVersion...hit blacklist"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    return v3

    .line 947
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 948
    .local v5, "minAppxVersion":Ljava/lang/String;
    move-object v12, v4

    .end local v5    # "minAppxVersion":Ljava/lang/String;
    .local v12, "minAppxVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 950
    return v3

    .line 953
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCurrentAvailableAppxVersion()Ljava/lang/String;

    move-result-object v13

    .line 954
    .local v13, "availableAppxVersion":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAppxMinVersion...min: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    .line 957
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move v3, v14

    .line 958
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v1

    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_3

    .line 959
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkForceUpdateAppInfo(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_3
    return v14

    .line 965
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    invoke-static {v13, v12}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v5, v14

    .line 966
    .local v5, "compare":I
    move v5, v4

    if-eq v4, v3, :cond_9

    if-nez v5, :cond_5

    goto/16 :goto_1

    .line 971
    :cond_5
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 972
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v4

    if-nez v4, :cond_6

    .line 974
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v6, "checkAppxMinVersion...h5AppProvider is null"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return v3

    .line 978
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getAppxAppId()Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "appxAppId":Ljava/lang/String;
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 981
    .local v15, "highestVersion":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkAppxMinVersion...highest: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-static {v12, v15}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 983
    move/from16 v16, v4

    .end local v5    # "compare":I
    .local v16, "compare":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    if-nez v16, :cond_7

    goto :goto_0

    .line 1011
    :cond_7
    move-object v4, v1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkForceUpdateAppInfo(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return v14

    .line 985
    :cond_8
    :goto_0
    new-instance v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;

    move-object v4, v10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 1007
    .local v4, "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    invoke-static {v3, v15, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 1008
    return v14

    .line 968
    .end local v1    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v3    # "appxAppId":Ljava/lang/String;
    .end local v4    # "callback":Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    .end local v15    # "highestVersion":Ljava/lang/String;
    .end local v16    # "compare":I
    .restart local v5    # "compare":I
    :cond_9
    :goto_1
    return v3
.end method

.method private static checkDebugMode(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .line 663
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 664
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->hasAuth:Z

    if-nez v0, :cond_4

    .line 666
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 667
    return v1

    .line 671
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enablePreferList()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    const-string/jumbo v0, "nbsv"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "preferVersion":Ljava/lang/String;
    const-string/jumbo v2, "nbsn"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "nbScene":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 679
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 680
    invoke-virtual {v3, v4, v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v0    # "preferVersion":Ljava/lang/String;
    .end local v2    # "nbScene":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 684
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAppInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from H5PreferAppList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 689
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoWithAppId(Ljava/lang/String;)V

    .line 691
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 692
    return v1

    .line 698
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 699
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 700
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->startCheckPermissionScheme(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 702
    return v1

    .line 706
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static checkForceUpdateAppInfo(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncUpdate"    # Ljava/lang/String;
    .param p5, "copyParam"    # Landroid/os/Bundle;
    .param p6, "syncOffline"    # Ljava/lang/String;
    .param p7, "loadingType"    # Ljava/lang/String;

    .line 1029
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v1, "hasCheckedMinAppxVersion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1030
    .local v0, "hasChecked":Z
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    .line 1031
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1033
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->forceUpdateAppInfo(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1037
    :cond_0
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openUpdateAppClient(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1039
    return-void
.end method

.method private static doOpenApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 1
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "syncUpdate"    # Ljava/lang/String;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1464
    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->addRecentAppForDebugMode(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 1467
    const-string/jumbo v0, "synctry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    const-string/jumbo v0, "syncforce"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateNebulaAppAsync(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1472
    :cond_0
    if-eqz p1, :cond_2

    .line 1473
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableExitAndStartAppOnMain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$14;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$14;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 1482
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1485
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1488
    return-void
.end method

.method private static doSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 34
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "copyParam"    # Landroid/os/Bundle;
    .param p3, "currentNbVersion"    # Ljava/lang/String;
    .param p4, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 331
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    const/4 v0, 0x0

    .line 332
    .local v0, "hasAppInfo":Z
    if-eqz p1, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 336
    .local v1, "useDev":Z
    const-string v2, ""

    .line 337
    .local v2, "nbsv":Ljava/lang/String;
    const-string v3, ""

    .line 340
    .local v3, "nbsn":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v5, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "nbsv"

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 341
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v9, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 343
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v9, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v4

    .line 344
    .local v4, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    const/4 v1, 0x1

    .line 345
    iget-object v2, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 346
    iget-object v3, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 347
    const-string/jumbo v9, "nbsn"

    invoke-static {v12, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    .line 348
    .local v10, "nbsnParam":Ljava/lang/String;
    move-object v10, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 349
    move-object v3, v10

    .line 350
    invoke-static {v12, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_1
    iget-object v9, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v14, v9, v3, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v9

    .line 353
    move-object v15, v9

    .end local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v15, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    move v0, v9

    .line 354
    sget-object v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nbsn "

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " nbsv "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hasAppInfo:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v4    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v10    # "nbsnParam":Ljava/lang/String;
    move/from16 v18, v0

    move/from16 v19, v1

    move-object v9, v2

    move-object v8, v3

    goto :goto_1

    .line 356
    .end local v15    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    iget-object v7, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    move-object/from16 v15, p1

    move/from16 v18, v0

    move/from16 v19, v1

    move-object v9, v2

    move-object v8, v3

    .line 360
    .end local v0    # "hasAppInfo":Z
    .end local v1    # "useDev":Z
    .end local v2    # "nbsv":Ljava/lang/String;
    .end local v3    # "nbsn":Ljava/lang/String;
    .end local p1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v8, "nbsn":Ljava/lang/String;
    .local v9, "nbsv":Ljava/lang/String;
    .restart local v15    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v18, "hasAppInfo":Z
    .local v19, "useDev":Z
    :goto_1
    invoke-static {v12, v15}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 362
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->paramParse(Landroid/os/Bundle;)V

    .line 365
    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkDebugMode(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    return-void

    .line 370
    :cond_4
    nop

    .line 371
    const-string/jumbo v0, "nbversion"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "wantNebulaVersion":Ljava/lang/String;
    nop

    .line 374
    const-string/jumbo v0, "nboffline"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, "syncOffline":Ljava/lang/String;
    const-string/jumbo v0, "nbupdate"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "syncUpdate":Ljava/lang/String;
    const-string/jumbo v1, "nburl"

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "nbUrl":Ljava/lang/String;
    const-string/jumbo v1, "nboffmode"

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "nbOffMode":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 382
    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 384
    :cond_5
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 385
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v2, 0x0

    move-object/from16 v20, v2

    .line 386
    .local v20, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v1

    .end local v20    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_7

    .line 387
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    goto :goto_2

    .line 391
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v18, :cond_8

    .line 393
    invoke-static {v12, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 396
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const v2, 0xc352

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showAppError(Ljava/lang/String;I)V

    .line 397
    return-void

    .line 402
    :cond_8
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 403
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 407
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v1

    iget-object v5, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    if-nez v18, :cond_b

    .line 408
    :cond_a
    const-string/jumbo v0, "syncforce"

    .line 412
    :cond_b
    const-string v1, "enbsv"

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v2, "enbsv":Ljava/lang/String;
    move-object v5, v1

    .end local v2    # "enbsv":Ljava/lang/String;
    .local v5, "enbsv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 414
    if-eqz v15, :cond_c

    iget-object v1, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    .line 415
    :cond_c
    const-string/jumbo v0, "syncforce"

    .line 420
    :cond_d
    const/4 v1, 0x0

    .line 421
    .local v1, "isOutOfReqRate":Z
    if-eqz v18, :cond_10

    .line 422
    invoke-static {v15}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isNeedForceUpdate(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 423
    const/4 v1, 0x1

    .line 424
    const-string/jumbo v0, "syncforce"

    goto :goto_3

    .line 425
    :cond_e
    invoke-static {v12, v15}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 426
    const/4 v1, 0x1

    .line 427
    const-string/jumbo v0, "synctry"

    .line 429
    :cond_f
    :goto_3
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 p1, v5

    .end local v5    # "enbsv":Ljava/lang/String;
    .local p1, "enbsv":Ljava/lang/String;
    const-string v5, "[syncApp] outOfReqRate: "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", syncUpdate: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move/from16 v21, v1

    goto :goto_4

    .line 421
    .end local p1    # "enbsv":Ljava/lang/String;
    .restart local v5    # "enbsv":Ljava/lang/String;
    :cond_10
    move-object/from16 p1, v5

    .end local v5    # "enbsv":Ljava/lang/String;
    .restart local p1    # "enbsv":Ljava/lang/String;
    move-object v6, v0

    move/from16 v21, v1

    .line 432
    .end local v0    # "syncUpdate":Ljava/lang/String;
    .end local v1    # "isOutOfReqRate":Z
    .local v6, "syncUpdate":Ljava/lang/String;
    .local v21, "isOutOfReqRate":Z
    :goto_4
    if-eqz v15, :cond_11

    .line 433
    invoke-static {v11, v15, v12}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 434
    iget-object v0, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 435
    .local v0, "nebulaVersion":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "nebulaVersion "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iput-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 437
    .end local v0    # "nebulaVersion":Ljava/lang/String;
    goto :goto_5

    .line 438
    :cond_11
    const/4 v0, 0x2

    iput v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 439
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 440
    .local v2, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v1, v0

    .end local v2    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .local v1, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_12

    .line 441
    invoke-interface {v1, v11}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 445
    .end local v1    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_12
    :goto_5
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "targetAppId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wantNebulaVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " syncOffline:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " syncUpdate:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentNbVersion:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nbUrl:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nbOffMode: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestMode(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, v7, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setAppId(Ljava/lang/String;)V

    .line 456
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v1, "synctry"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v22, v3

    .end local v3    # "nbOffMode":Ljava/lang/String;
    .local v22, "nbOffMode":Ljava/lang/String;
    const-string/jumbo v3, "syncforce"

    if-nez v5, :cond_14

    .line 461
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v24, p1

    move-object/from16 v23, v4

    move-object/from16 p1, v6

    move-object/from16 v25, v7

    goto :goto_6

    .line 652
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v3, v6

    move-object/from16 v23, v4

    .end local v4    # "nbUrl":Ljava/lang/String;
    .local v23, "nbUrl":Ljava/lang/String;
    move-object/from16 v24, p1

    .end local p1    # "enbsv":Ljava/lang/String;
    .local v24, "enbsv":Ljava/lang/String;
    move-object v5, v15

    move-object/from16 p1, v6

    .end local v6    # "syncUpdate":Ljava/lang/String;
    .local p1, "syncUpdate":Ljava/lang/String;
    move-object/from16 v6, v22

    move-object/from16 v25, v7

    .end local v7    # "syncOffline":Ljava/lang/String;
    .local v25, "syncOffline":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 655
    return-void

    .line 460
    .end local v23    # "nbUrl":Ljava/lang/String;
    .end local v24    # "enbsv":Ljava/lang/String;
    .end local v25    # "syncOffline":Ljava/lang/String;
    .restart local v4    # "nbUrl":Ljava/lang/String;
    .restart local v6    # "syncUpdate":Ljava/lang/String;
    .restart local v7    # "syncOffline":Ljava/lang/String;
    .local p1, "enbsv":Ljava/lang/String;
    :cond_14
    move-object/from16 v24, p1

    move-object/from16 v23, v4

    move-object/from16 p1, v6

    move-object/from16 v25, v7

    .line 463
    .end local v4    # "nbUrl":Ljava/lang/String;
    .end local v6    # "syncUpdate":Ljava/lang/String;
    .end local v7    # "syncOffline":Ljava/lang/String;
    .restart local v23    # "nbUrl":Ljava/lang/String;
    .restart local v24    # "enbsv":Ljava/lang/String;
    .restart local v25    # "syncOffline":Ljava/lang/String;
    .local p1, "syncUpdate":Ljava/lang/String;
    :goto_6
    invoke-static {v13, v10}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 465
    .local v7, "openResult":I
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentNbVersion"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v2, -0x1

    if-eq v7, v2, :cond_18

    .line 469
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v2

    iget-object v4, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v18, :cond_17

    .line 471
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v21, :cond_15

    move/from16 v26, v7

    goto :goto_7

    .line 647
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v3, p1

    move-object/from16 v4, v23

    move-object v5, v15

    move-object/from16 v6, v22

    move/from16 v26, v7

    .end local v7    # "openResult":I
    .local v26, "openResult":I
    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 650
    .end local v26    # "openResult":I
    return-void

    .line 471
    .restart local v7    # "openResult":I
    :cond_16
    move/from16 v26, v7

    .end local v7    # "openResult":I
    .restart local v26    # "openResult":I
    goto :goto_7

    .line 469
    .end local v26    # "openResult":I
    .restart local v7    # "openResult":I
    :cond_17
    move/from16 v26, v7

    .end local v7    # "openResult":I
    .restart local v26    # "openResult":I
    goto :goto_7

    .line 468
    .end local v26    # "openResult":I
    .restart local v7    # "openResult":I
    :cond_18
    move/from16 v26, v7

    .line 475
    .end local v7    # "openResult":I
    .restart local v26    # "openResult":I
    :goto_7
    move-object/from16 v2, p1

    .line 476
    .local v2, "loadingType":Ljava/lang/String;
    move-object/from16 v5, p1

    .end local p1    # "syncUpdate":Ljava/lang/String;
    .local v5, "syncUpdate":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 477
    const-string/jumbo v4, "sync"

    move-object/from16 v6, v25

    .end local v25    # "syncOffline":Ljava/lang/String;
    .local v6, "syncOffline":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v15, :cond_1b

    .line 479
    iget-object v4, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v7, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 480
    invoke-interface {v14, v4, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    move/from16 v20, v7

    .line 481
    .local v20, "isAvailable":Z
    if-nez v4, :cond_19

    .line 482
    const-string/jumbo v2, "syncforce"

    goto :goto_8

    .line 484
    :cond_19
    iget-object v4, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v7, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 485
    invoke-interface {v14, v4, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    .line 486
    .local v7, "install":Z
    if-nez v4, :cond_1b

    .line 487
    const-string/jumbo v2, "syncforce"

    goto :goto_8

    .line 476
    .end local v6    # "syncOffline":Ljava/lang/String;
    .end local v7    # "install":Z
    .end local v20    # "isAvailable":Z
    .restart local v25    # "syncOffline":Ljava/lang/String;
    :cond_1a
    move-object/from16 v6, v25

    .line 493
    .end local v25    # "syncOffline":Ljava/lang/String;
    .restart local v6    # "syncOffline":Ljava/lang/String;
    :cond_1b
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v4

    .line 494
    .local v4, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v7, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 495
    invoke-static {v7, v2, v12, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v7

    .line 494
    invoke-static {v11, v14, v4, v2, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    .line 497
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 499
    .local v7, "hashMap":Ljava/util/Map;
    new-instance v20, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct/range {v20 .. v20}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    move-object/from16 p1, v20

    .line 500
    .local p1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 501
    move-object/from16 v3, p1

    .end local p1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v3, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    iput-object v1, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    move-object v1, v3

    goto :goto_9

    .line 503
    .end local v3    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .restart local p1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_1c
    move-object/from16 v1, p1

    .end local p1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    iput-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 508
    :goto_9
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v3

    move-object/from16 v20, v2

    .end local v2    # "loadingType":Ljava/lang/String;
    .local v20, "loadingType":Ljava/lang/String;
    const-string v2, "NO"

    if-nez v3, :cond_1d

    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 p1, v4

    .end local v4    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local p1, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    const/16 v4, 0xf

    if-le v3, v4, :cond_1e

    goto :goto_a

    .end local p1    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local v4    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_1d
    move-object/from16 p1, v4

    .line 509
    .end local v4    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local p1    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :goto_a
    iput-object v2, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 513
    :cond_1e
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v4, 0x0

    .line 514
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v3

    if-eqz v3, :cond_1f

    .line 515
    const-string v3, "H5_loading_use_stableRpc"

    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "value":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v17, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 518
    iput-object v2, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    goto :goto_b

    .line 514
    .end local v3    # "value":Ljava/lang/String;
    .end local v17    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1f
    move-object/from16 v17, v4

    .line 524
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v17    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_20
    :goto_b
    if-eqz v19, :cond_21

    .line 525
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "useDev "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nbsn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    goto :goto_c

    .line 529
    :cond_21
    iget-object v2, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 530
    invoke-interface {v14, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "queryVersion":Ljava/lang/String;
    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v2    # "queryVersion":Ljava/lang/String;
    :goto_c
    move-object v3, v7

    .end local v7    # "hashMap":Ljava/util/Map;
    .local v3, "hashMap":Ljava/util/Map;
    move-object v7, v5

    .line 535
    .local v7, "finalSyncUpdate":Ljava/lang/String;
    move-object/from16 v25, v17

    move-object/from16 v17, p1

    .end local p1    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v17, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v25, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v9

    .line 536
    .local v4, "finalNbsv":Ljava/lang/String;
    move-object/from16 v27, v6

    .end local v6    # "syncOffline":Ljava/lang/String;
    .local v27, "syncOffline":Ljava/lang/String;
    move/from16 v6, v18

    .line 537
    .local v6, "finalHasAppInfo":Z
    move-object/from16 v28, v10

    .end local v10    # "wantNebulaVersion":Ljava/lang/String;
    .local v28, "wantNebulaVersion":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 538
    .local v10, "finalCopyParam":Landroid/os/Bundle;
    move-object/from16 v29, v8

    move-object/from16 p1, v9

    .end local v8    # "nbsn":Ljava/lang/String;
    .end local v9    # "nbsv":Ljava/lang/String;
    .local v29, "nbsn":Ljava/lang/String;
    .local p1, "nbsv":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestBeginTime(J)V

    .line 540
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v0

    .line 545
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v9

    .line 547
    .local v9, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    new-instance v16, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;

    move-object/from16 v0, v16

    move-object/from16 v30, v1

    .end local v1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v30, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v31, v3

    .end local v3    # "hashMap":Ljava/util/Map;
    .local v31, "hashMap":Ljava/util/Map;
    move-object/from16 v3, v27

    move-object/from16 v32, v5

    .end local v5    # "syncUpdate":Ljava/lang/String;
    .local v32, "syncUpdate":Ljava/lang/String;
    move-object/from16 v5, v17

    move-object/from16 v8, v23

    move-object/from16 v33, p1

    move-object v11, v9

    .end local v9    # "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .end local p1    # "nbsv":Ljava/lang/String;
    .local v11, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .local v33, "nbsv":Ljava/lang/String;
    move-object/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 643
    .local v0, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-virtual {v11, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v1

    invoke-interface {v14, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 644
    .end local v0    # "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .end local v4    # "finalNbsv":Ljava/lang/String;
    .end local v6    # "finalHasAppInfo":Z
    .end local v7    # "finalSyncUpdate":Ljava/lang/String;
    .end local v10    # "finalCopyParam":Landroid/os/Bundle;
    .end local v11    # "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .end local v17    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v20    # "loadingType":Ljava/lang/String;
    .end local v25    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v30    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v31    # "hashMap":Ljava/util/Map;
    return-void
.end method

.method private static enableDegradeMainPkgVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "app_id"    # Ljava/lang/String;
    .param p1, "installVersion"    # Ljava/lang/String;

    .line 899
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 900
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v4, v1

    .line 904
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v4, v0

    if-nez v0, :cond_1

    .line 905
    return v3

    .line 907
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v1, "minAppxVersion":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 910
    return v5

    .line 912
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCurrentAvailableAppxVersion()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 914
    if-ne v0, v5, :cond_3

    .line 916
    return v5

    .line 918
    :cond_3
    return v3

    .line 901
    .end local v1    # "minAppxVersion":Ljava/lang/String;
    .end local v4    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    :goto_0
    return v3
.end method

.method private static enableDsl(Ljava/lang/String;)Z
    .locals 5
    .param p0, "launchParam"    # Ljava/lang/String;

    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 211
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    .line 212
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "enableDSL"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "enableDSL":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 214
    .end local v0    # "enableDSL":Ljava/lang/String;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTinyApp...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 12
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1494
    if-nez p0, :cond_0

    .line 1495
    return-void

    .line 1499
    :cond_0
    if-eqz p1, :cond_4

    .line 1500
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[exitAndStartApp] h5LoadingManager status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isPageDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1503
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] h5LoadingManager has exit not startApp"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-void

    .line 1507
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1508
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] H5PageStatues.HAS_START_APP not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void

    .line 1512
    :cond_2
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1513
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "[exitAndStartApp] H5PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void

    .line 1517
    :cond_3
    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->setPageStatue(I)V

    .line 1521
    :cond_4
    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    const-string/jumbo v3, "nebulaH5TinyApp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getStartLoadingTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 1526
    .local v6, "extraDelayTime":J
    move-wide v6, v2

    const-wide/16 v8, 0x12c

    cmp-long v10, v2, v8

    if-gtz v10, :cond_6

    cmp-long v2, v6, v4

    if-gez v2, :cond_5

    goto :goto_0

    .line 1529
    :cond_5
    sub-long/2addr v8, v6

    .end local v6    # "extraDelayTime":J
    .local v8, "extraDelayTime":J
    goto :goto_1

    .line 1527
    .end local v8    # "extraDelayTime":J
    .restart local v6    # "extraDelayTime":J
    :cond_6
    :goto_0
    const-wide/16 v8, 0x0

    .line 1532
    .end local v6    # "extraDelayTime":J
    .restart local v8    # "extraDelayTime":J
    :goto_1
    long-to-int v2, v8

    .line 1533
    .local v2, "animDelay":I
    long-to-int v3, v8

    .line 1535
    .local v3, "startAppDelay":I
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1536
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v5, 0x0

    move-object v6, v5

    .line 1537
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v6, v4

    if-eqz v4, :cond_7

    .line 1538
    const-string v4, "h5_openLoadingDelay"

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1539
    .local v5, "config":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1540
    add-int/lit16 v3, v3, 0x12c

    .line 1543
    .end local v5    # "config":Ljava/lang/String;
    :cond_7
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1544
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$15;

    invoke-direct {v5, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$15;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v10, v3

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1553
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    invoke-direct {v5, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1562
    .end local v2    # "animDelay":I
    .end local v3    # "startAppDelay":I
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v8    # "extraDelayTime":J
    return-void

    .line 1564
    :cond_8
    sget-boolean v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    const/16 v3, 0x1f4

    if-eqz v2, :cond_9

    .line 1565
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    .line 1567
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1568
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1578
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "isFirstStartApp startApp"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1582
    :cond_9
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1583
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$18;

    invoke-direct {v3, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$18;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1597
    return-void
.end method

.method private static exitLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1166
    if-nez p0, :cond_0

    return-void

    .line 1168
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1169
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$9;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1178
    return-void
.end method

.method public static exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 759
    if-nez p1, :cond_0

    .line 760
    return-void

    .line 762
    :cond_0
    nop

    .line 763
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 764
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void

    .line 768
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 770
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    return-void
.end method

.method public static exitPageAndShowError(Ljava/lang/String;ILcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "error"    # I
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1761
    if-nez p2, :cond_0

    .line 1762
    return-void

    .line 1764
    :cond_0
    nop

    .line 1765
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1766
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    return-void

    .line 1770
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1772
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$22;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$22;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1789
    return-void
.end method

.method private static finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1635
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nebulaAppType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebulaStartflag"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->putAppType(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1641
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_loading_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->remove(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_StartAppFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_StartAppFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1653
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    const/4 v6, 0x0

    .line 1654
    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1656
    return-void
.end method

.method private static forceUpdateAppInfo(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncUpdate"    # Ljava/lang/String;
    .param p5, "copyParam"    # Landroid/os/Bundle;
    .param p6, "syncOffline"    # Ljava/lang/String;
    .param p7, "loadingType"    # Ljava/lang/String;

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forceUpdateAppInfo..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1101
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v2

    .line 1102
    .end local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v2, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v3, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1103
    invoke-static {v3, v12, v11, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v3

    .line 1102
    invoke-static {v9, v0, v2, v13, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    move-object v14, v2

    goto :goto_0

    .line 1106
    .end local v2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    move-result-object v2

    move-object v3, v1

    .line 1107
    .local v3, "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 1108
    iget-object v2, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1109
    invoke-static {v2, v13, v11, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v2

    iget-object v4, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1108
    invoke-interface {v3, v12, v2, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;->onGetType(Ljava/lang/String;ILjava/lang/String;)V

    .line 1113
    .end local v3    # "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    :cond_1
    move-object/from16 v14, p3

    .end local p3    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v14, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :goto_0
    move-object v4, v14

    .line 1115
    .local v4, "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getAppxAppId()Ljava/lang/String;

    move-result-object v15

    .line 1116
    .local v15, "appxAppId":Ljava/lang/String;
    nop

    .line 1117
    invoke-interface {v0, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1119
    .local v8, "queryVersion":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v1

    .line 1120
    .local v3, "appIdMap":Ljava/util/Map;
    move-object v7, v2

    .end local v3    # "appIdMap":Ljava/util/Map;
    .local v7, "appIdMap":Ljava/util/Map;
    invoke-interface {v2, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 1123
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object v6, v2

    .end local v1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v6, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    const-string/jumbo v1, "syncforce"

    iput-object v1, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 1125
    new-instance v16, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$8;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object v9, v6

    .end local v6    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .local v9, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    move-object/from16 v6, p5

    move-object v10, v7

    .end local v7    # "appIdMap":Ljava/util/Map;
    .local v10, "appIdMap":Ljava/util/Map;
    move-object/from16 v7, p6

    move-object/from16 v17, v8

    .end local v8    # "queryVersion":Ljava/lang/String;
    .local v17, "queryVersion":Ljava/lang/String;
    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$8;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .local v1, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 1150
    invoke-virtual {v2, v10}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1151
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 1152
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 1153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 1154
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v2

    .line 1155
    .local v2, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 1158
    return-void
.end method

.method private static getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .locals 3

    .line 1733
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1734
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 1735
    const-string v1, "h5_newloadpage"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1738
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    return-object v2

    .line 1742
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1744
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    return-object v1

    .line 1746
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;-><init>()V

    return-object v1
.end method

.method private static getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 710
    const-string/jumbo v0, "nbpkgres"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 711
    .local v0, "packageList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v1, "resPackageList":Ljava/util/List;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 715
    .local v3, "appId":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    nop

    .end local v3    # "appId":Ljava/lang/Object;
    goto :goto_0

    .line 718
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 720
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 721
    :goto_1
    return-object v1
.end method

.method public static hasCheckParam(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "param"    # Landroid/os/Bundle;

    .line 132
    if-eqz p0, :cond_0

    const-string/jumbo v0, "nebulaStartflag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "nebulaAppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1429
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$13;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$13;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1436
    return-void
.end method

.method private static isAllowedUseTinyAppManagerProcess()Z
    .locals 2

    .line 226
    const/4 v0, 0x0

    .local v0, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 227
    move-object v0, v1

    if-nez v1, :cond_0

    .line 228
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isUseTinyAppManagerProcess()Z

    move-result v1

    return v1
.end method

.method public static isSyncType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 1726
    const-string/jumbo v0, "syncforce"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1727
    const-string/jumbo v0, "sync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1726
    return v0

    .line 1727
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isTinyApp(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 5
    .param p0, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 178
    const-string v0, "launchParams"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_5

    .line 179
    if-nez p0, :cond_0

    return v2

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 182
    const-string v3, "h5_isTinyAppIdBlacklist"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    .line 183
    .local v4, "appIdBlackList":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 184
    .local v1, "appIdArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v3

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "all"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 192
    .end local v1    # "appIdArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "appIdBlackList":Ljava/lang/String;
    :cond_1
    move-object v1, v4

    goto :goto_1

    .line 187
    .restart local v1    # "appIdArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :goto_0
    return v2

    .line 192
    .end local v1    # "appIdArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 193
    .local v1, "map":Ljava/util/Map;
    move-object v1, v3

    if-eqz v3, :cond_4

    .line 194
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->enableDsl(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 196
    :cond_4
    return v2

    .line 199
    .end local v1    # "map":Ljava/util/Map;
    :cond_5
    iget v3, p3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    return v2

    .line 201
    :cond_6
    iget-object v2, p3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    .line 202
    .local v1, "extendInfo":Ljava/util/Map;
    move-object v1, v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 204
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->enableDsl(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 202
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static logError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V
    .locals 3
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "reason"    # Ljava/lang/String;

    .line 1659
    const-string v0, "H5_APP_PREPARE"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1660
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1661
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1662
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1659
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1663
    return-void
.end method

.method private static logInstallStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isInstall"    # Z

    .line 1418
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1419
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1420
    const-string v0, "H5_APP_INSTALL_STATUS"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v3, "monitor"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1422
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1423
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isInstall"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1424
    const-string v1, "h5_installPackageConfig"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "installPackageConfig"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1420
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1426
    :cond_0
    return-void
.end method

.method private static markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1181
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 1182
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string v2, "TINYAPP"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1186
    return-void
.end method

.method private static mergeAppStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 317
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 318
    const-string v1, "launchParams"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v2

    .line 319
    .local v1, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->mergeParamKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method private static offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 4
    .param p0, "nbUrl"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "offMode"    # Ljava/lang/String;

    .line 875
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableUseDegradeInMainPkg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getInstallVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "installVersion":Ljava/lang/String;
    iget-object v1, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 878
    const-string v2, "downgradeVersion"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "downgradeVersion":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 880
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 881
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->enableDegradeMainPkgVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    iput-object v0, p2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 884
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 885
    iget-object v2, p4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    const-string/jumbo v3, "ready"

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->logMainPkgDegrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void

    .line 889
    .end local v0    # "installVersion":Ljava/lang/String;
    .end local v1    # "downgradeVersion":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 891
    const-string v1, "finish"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 894
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineFailTryFallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method private static offlineFailTryFallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p4, "offMode"    # Ljava/lang/String;

    .line 1670
    invoke-static {p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;->canFallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "try"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$20;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$20;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;->tryFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V

    return-void

    .line 1685
    :cond_0
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showLoadingError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1687
    return-void
.end method

.method private static offlineNebulaAppAsync(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 1379
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    .line 1381
    .local v1, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1385
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    .line 1386
    .local v2, "isInstalled":Z
    move v2, v0

    const-string/jumbo v3, "offlineNebulaAppAsync App appId:"

    const-string v4, " version:"

    if-nez v0, :cond_2

    .line 1387
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1388
    .local v0, "isAvailable":Z
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    if-nez v0, :cond_1

    .line 1391
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offlineNebulaAppAsync :downloadApp appId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$12;

    invoke-direct {v4, p0, p1, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$12;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    invoke-interface {v1, p0, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    return-void

    .line 1408
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to install "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 1410
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->logInstallStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1412
    .end local v0    # "isAvailable":Z
    return-void

    .line 1413
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is install "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    return-void

    .line 1382
    .end local v2    # "isInstalled":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private static openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "syncUpdate"    # Ljava/lang/String;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "syncOffline"    # Ljava/lang/String;
    .param p6, "loadingType"    # Ljava/lang/String;

    .line 1444
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isCloseBtnClicked:Z

    if-nez v0, :cond_1

    .line 1447
    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkAppxMinVersion(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openApp...need"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    return-void

    .line 1452
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doOpenApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startApp [targetAppId] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1458
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static openUpdateAppClient(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1045
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openUpdateAppClient"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    if-nez p1, :cond_0

    .line 1049
    return-void

    .line 1051
    :cond_0
    nop

    .line 1052
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1053
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void

    .line 1057
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1059
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    const-string v0, "a192.b7351.c17706.d31777"

    const-string v1, "appId"

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method private static paramParse(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 137
    const-string/jumbo v0, "nbupdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 138
    const-string/jumbo v0, "nboffline"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 139
    const-string/jumbo v0, "nburl"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 140
    const-string/jumbo v0, "nbversion"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 141
    const-string/jumbo v0, "nboffmode"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 142
    return-void
.end method

.method private static playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V
    .locals 4
    .param p0, "manager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "delay"    # I

    .line 790
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 799
    return-void
.end method

.method private static setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 816
    if-eqz p1, :cond_0

    .line 817
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->scene:Ljava/lang/String;

    .line 818
    const-string v0, "debug"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    .line 820
    :cond_0
    return-void
.end method

.method private static setStartParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "appIconUrl"    # Ljava/lang/String;
    .param p2, "slogan"    # Ljava/lang/String;
    .param p3, "param"    # Landroid/os/Bundle;

    .line 146
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 147
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v1

    .line 149
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "appIcon"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "appName"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "appSlogan"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 156
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "lpid":I
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lpid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    .end local v0    # "lpid":I
    :cond_0
    return-object v2

    .line 167
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method private static setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 22
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    const/4 v0, 0x0

    .line 1196
    .local v0, "tmpLoadingType":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    move-object/from16 v0, p1

    move-object v15, v0

    goto :goto_0

    .line 1199
    :cond_0
    move-object/from16 v0, p6

    move-object v15, v0

    .line 1201
    .end local v0    # "tmpLoadingType":Ljava/lang/String;
    .local v15, "tmpLoadingType":Ljava/lang/String;
    :goto_0
    move-object v10, v15

    .line 1203
    .local v10, "loadingType":Ljava/lang/String;
    const-string/jumbo v0, "sync"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableDSL(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1347
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1348
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineNebulaAppAsync(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    move-object/from16 v21, v10

    move-object/from16 v17, v15

    goto/16 :goto_3

    .line 1347
    :cond_2
    move-object/from16 v21, v10

    move-object/from16 v17, v15

    goto/16 :goto_3

    .line 1205
    :cond_3
    :goto_1
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1208
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v9, v0

    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v9, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_a

    if-nez v13, :cond_4

    move-object v12, v9

    move-object/from16 v21, v10

    move-object/from16 v17, v15

    goto/16 :goto_4

    .line 1212
    :cond_4
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v9, v0, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1213
    .local v8, "isAvailable":Z
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncOffline=sync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v2, "is_local"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1220
    .local v6, "time":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "10 H5AppHandler#setSyncOffline launch_cost maybe start:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tiny_launch_cost"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v2, "perf_open_app_time"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1223
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v16

    sub-long v3, v3, v16

    const-string/jumbo v5, "perf_rpc_time"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1225
    if-nez v8, :cond_8

    .line 1226
    iget-boolean v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    if-eqz v0, :cond_5

    .line 1227
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1228
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v1, v0

    if-eqz v0, :cond_5

    .line 1229
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->startLiteProcessAsync()Z

    .line 1233
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_5
    if-nez p2, :cond_6

    .line 1234
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v0

    .line 1235
    .end local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v0, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v1, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1236
    invoke-static {v1, v12, v14, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v1

    .line 1235
    invoke-static {v11, v9, v0, v10, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    move-object/from16 v16, v0

    goto :goto_2

    .line 1239
    .end local v0    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    move-result-object v0

    .line 1240
    .local v1, "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    move-object v1, v0

    if-eqz v0, :cond_7

    .line 1241
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1242
    invoke-static {v0, v10, v14, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v0

    iget-object v3, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 1241
    invoke-interface {v1, v12, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;->onGetType(Ljava/lang/String;ILjava/lang/String;)V

    .line 1246
    .end local v1    # "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    :cond_7
    move-object/from16 v16, p2

    .end local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .local v16, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :goto_2
    move-object/from16 v4, v16

    .line 1247
    .local v4, "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadTime(J)V

    .line 1248
    iget-object v5, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v3, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    move-object v0, v2

    move-object v1, v9

    move-object v12, v2

    move-object/from16 v2, p0

    move-object v14, v3

    move-object/from16 v3, p5

    move-object/from16 v17, v15

    move-object v15, v5

    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .local v17, "tmpLoadingType":Ljava/lang/String;
    move-object/from16 v5, p3

    move-wide/from16 v18, v6

    .end local v6    # "time":J
    .local v18, "time":J
    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v20, v8

    .end local v8    # "isAvailable":Z
    .local v20, "isAvailable":Z
    move-object v8, v10

    move-object v13, v9

    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v13, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object/from16 v9, p4

    move-object/from16 v21, v10

    .end local v10    # "loadingType":Ljava/lang/String;
    .local v21, "loadingType":Ljava/lang/String;
    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-interface {v13, v15, v14, v12}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 1313
    .end local v4    # "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    return-void

    .line 1315
    .end local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v16    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v17    # "tmpLoadingType":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "isAvailable":Z
    .end local v21    # "loadingType":Ljava/lang/String;
    .restart local v6    # "time":J
    .restart local v8    # "isAvailable":Z
    .restart local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "loadingType":Ljava/lang/String;
    .restart local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local p2    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_8
    move-wide/from16 v18, v6

    move/from16 v20, v8

    move-object v13, v9

    move-object/from16 v21, v10

    move-object/from16 v17, v15

    .end local v6    # "time":J
    .end local v8    # "isAvailable":Z
    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v10    # "loadingType":Ljava/lang/String;
    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v17    # "tmpLoadingType":Ljava/lang/String;
    .restart local v18    # "time":J
    .restart local v20    # "isAvailable":Z
    .restart local v21    # "loadingType":Ljava/lang/String;
    iget-object v0, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v10, p5

    move-object v12, v13

    .end local v13    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v12, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    iget-object v1, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v12, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1316
    .local v13, "isInstall":Z
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isInstall "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-nez v13, :cond_9

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallTime(J)V

    .line 1322
    move-object/from16 v2, p2

    .line 1323
    .local v2, "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    iget-object v14, v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v15, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, v21

    move-object/from16 v8, p4

    move-object v10, v9

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v14, v15, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 1345
    .end local v2    # "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v12    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v13    # "isInstall":Z
    .end local v18    # "time":J
    .end local v20    # "isAvailable":Z
    return-void

    .line 1351
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    return-void

    .line 1208
    .end local v17    # "tmpLoadingType":Ljava/lang/String;
    .end local v21    # "loadingType":Ljava/lang/String;
    .restart local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "loadingType":Ljava/lang/String;
    .restart local v15    # "tmpLoadingType":Ljava/lang/String;
    :cond_a
    move-object v12, v9

    move-object/from16 v21, v10

    move-object/from16 v17, v15

    .line 1209
    .end local v9    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v10    # "loadingType":Ljava/lang/String;
    .end local v15    # "tmpLoadingType":Ljava/lang/String;
    .restart local v12    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v17    # "tmpLoadingType":Ljava/lang/String;
    .restart local v21    # "loadingType":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method private static showAppError(Ljava/lang/String;I)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "error"    # I

    .line 1750
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;

    const/4 v1, 0x0

    .line 1751
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1752
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppErrorProvider;->promptError(Ljava/lang/String;I)V

    return-void

    .line 1754
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u5e94\u7528\u66f4\u65b0\u9519\u8bef("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1757
    return-void
.end method

.method private static showLoadingError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1694
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v1, "finish"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 1698
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$21;

    invoke-direct {v1, p2, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$21;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1721
    return-void
.end method

.method private static showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V
    .locals 14
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "loadingType"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 1357
    move-object v6, p0

    move-object v7, p1

    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1358
    .local v8, "appIconUrl":Ljava/lang/String;
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1359
    .local v9, "appName":Ljava/lang/String;
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v1, "NebulaWalletAppName"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const/4 v0, 0x1

    .line 1361
    .local v0, "enableSlogan":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 1362
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v10, v1

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v10, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    const-string v1, "h5_loadpageslogan"

    invoke-interface {v10, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    .line 1365
    :cond_0
    move v11, v0

    .end local v0    # "enableSlogan":Z
    .local v11, "enableSlogan":Z
    :goto_0
    const-string v0, ""

    .line 1366
    .local v0, "slogan":Ljava/lang/String;
    if-eqz v11, :cond_1

    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isSmallProgramFromOpenPlat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    iget-object v1, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    .line 1369
    :cond_1
    move-object v12, v0

    .end local v0    # "slogan":Ljava/lang/String;
    .local v12, "slogan":Ljava/lang/String;
    :goto_1
    sget-object v13, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    iput-object v13, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 1370
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 1371
    invoke-static {v9, v8, v12, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setStartParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object v4, p0

    move/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V

    .line 1374
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "packageLoadingShown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1375
    invoke-virtual {v13, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setPageStatus(I)V

    .line 1376
    return-void
.end method

.method private static startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 7
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1600
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 1601
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1602
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pageStatues.currentPageStatues == PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    return-void

    .line 1607
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v2, "finish"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const-string v4, "66666672"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1610
    .local v1, "enableOuter":Z
    :goto_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v4, v3, :cond_2

    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1611
    .local v4, "enableInner":Z
    :goto_1
    iget v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v5, v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableUpDownAnimWithoutAppinfo:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 1612
    .local v0, "enableNoAppinfo":Z
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "H5AppHandler.startApp enableOuter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " enableInner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " enableNoAppinfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 1614
    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTinyWithAnimation(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1615
    :cond_4
    if-nez p1, :cond_5

    .line 1617
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "put needAnimInTiny true"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v5, "needAnimInTiny"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1621
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1622
    const-string v2, "URGENT_DISPLAY"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$19;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$19;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1629
    :cond_6
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1631
    return-void
.end method

.method public static syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 16
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 234
    move-object/from16 v7, p0

    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clear()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setBeginTime(J)V

    .line 237
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    if-nez v1, :cond_0

    .line 239
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 242
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 243
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v8, v1

    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v8, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v1, :cond_1

    .line 244
    return-void

    .line 247
    :cond_1
    iget-object v1, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 248
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v8, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    return-void

    .line 253
    :cond_2
    const/4 v1, 0x0

    sput v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    .line 255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v1, "copyParam":Landroid/os/Bundle;
    iget-object v3, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    move-object v9, v1

    goto :goto_0

    .line 258
    :cond_3
    move-object v9, v1

    .line 263
    .end local v1    # "copyParam":Landroid/os/Bundle;
    .local v9, "copyParam":Landroid/os/Bundle;
    :goto_0
    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 264
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    iget-object v3, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 267
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 268
    .local v10, "millis":J
    iget-object v1, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v8, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "currentNbVersion":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v13, v3, v10

    .line 270
    .local v13, "cost":J
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setGetDBVersionTime(J)V

    .line 273
    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v8, v0, v12}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v1, v2

    .line 275
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v15, v0

    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v15, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_5

    .line 276
    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->mergeAppStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 277
    iput-object v15, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 280
    :cond_5
    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v8, v0, v12, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isTinyApp(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 281
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isAllowedUseTinyAppManagerProcess()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    move-object v1, v2

    .line 284
    .local v1, "h5TinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    move-object v1, v0

    if-eqz v0, :cond_7

    .line 285
    if-eqz v15, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 286
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->forceDeletePkg(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    :try_start_0
    iget-object v0, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v3, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v8, v0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v2, "path":Ljava/lang/String;
    iget-object v3, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v2    # "path":Ljava/lang/String;
    goto :goto_1

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string v3, "deleteError"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_1
    invoke-static {v7, v15, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 296
    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v5, v12

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->startSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    return-void

    .line 298
    :cond_7
    invoke-static {v7, v15, v9, v12, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 300
    .end local v1    # "h5TinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    return-void

    .line 301
    :cond_8
    invoke-static {v7, v15, v9, v12, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 303
    return-void
.end method

.method private static updateFail(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 13
    .param p0, "syncUpdate"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncOffline"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "offMode"    # Ljava/lang/String;
    .param p8, "copyParam"    # Landroid/os/Bundle;
    .param p9, "rpcError"    # Z

    .line 729
    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    const-string/jumbo v0, "syncforce"

    move-object v11, p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "10000"

    if-nez v0, :cond_0

    .line 732
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 733
    const-string v2, "finish"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {p1, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 736
    :cond_0
    if-eqz p9, :cond_1

    .line 737
    const-string v0, "10004"

    invoke-static {p2, v0, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showLoadingError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 739
    :cond_1
    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->logError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V

    .line 748
    invoke-static/range {p8 .. p8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xc352

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e9

    :goto_0
    move-object/from16 v12, p6

    invoke-static {v12, v0, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndShowError(Ljava/lang/String;ILcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 752
    :cond_3
    move-object/from16 v12, p6

    move-object v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 755
    return-void
.end method

.method private static updateNebulaAppAsync(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .line 827
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 828
    .local v1, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 864
    :cond_0
    return-void
.end method

.method private static updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    .line 806
    invoke-static {p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0, p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->updateApplicationDescription(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 810
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 812
    return-void
.end method

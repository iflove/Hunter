.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;
.super Ljava/lang/Object;
.source "H5IpcServerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/process/H5IpcServer;


# static fields
.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 385
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_bugmeConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_pkgresmode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_useInstallVersion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_needAnim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableNebulaAppLoadingView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_setH5AndroidBug5497Workaround"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_api_permission_config"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_logNebulaTechEnable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_stripLandingEnable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_logWebAppWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableStockLogSwitch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableLoggerSwitch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_autoLoggerSwitch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_webViewConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableFragmentTranslateAnimation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_tabBarOptimizeConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_useNewFragmentLifecycle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_interceptCrashAnalyzerBizType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_interceptCrashAnalyzer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_getWebViewHeight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_handle4ua"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_Whitespace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_white_jsapiList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_asyncConsoleMessage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_asyncSendEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableFallbackPiplineOpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_fallback_log"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string/jumbo v1, "webar_url_white_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_not_use_H5NumInputKeyboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_resRedirect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_tryConcatOnlineHost"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableStartAppWithScheme"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_not_use_tiny_permission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_competitiveList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_useCustomKeyboardInH5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_useCustomKeyboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_show_tiny_loading"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableShowLoadingView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_CORSWhiteList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_dsRules"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_loadDynamicJs_postDelayed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_secJsApiCallConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_syncJsApi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "H5_SWSYNCAPILIST"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_swDispatchPolicy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "H5_loadJs_V2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5HttpRequestUseSpdyOnAppId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5HttpRequestUseSpdyOnUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enable_encode_tinyHttp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_preRenderConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "H5_clean_sw_cache"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_addTinyRes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableAppCenterVer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_use_copy_param_parse"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_shouldverifyapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableUseCacheInTiny"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_nbmergerpc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_sws_use_pre_environment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_getFromIsNativeApp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_setLastModified"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_degradeSysWebViewUrlRegexs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableFragmentTranslateAnimationForVIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_enableNewAdjustInput"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_disableHWACByUCStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string/jumbo v1, "tinyApLogLevel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    const-string v1, "h5_tinyProcessForceNebulaApp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containDevAppId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "containDevAppId appId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5IpcServerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containPreferAppId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "containPreferAppId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5IpcServerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public decodeToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, ""

    return-object v0

    .line 148
    :cond_0
    return-object v1
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .line 289
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    const/4 v1, 0x0

    .line 290
    .local v1, "request":Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 295
    const-class v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 296
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl$1;

    invoke-direct {v2, p0, p3}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 343
    return-void
.end method

.method public enableUCCorePreheadInit()Z
    .locals 2

    .line 489
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    const/4 v1, 0x0

    .line 490
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5UCProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->enableUCCorePreheadInit()Z

    move-result v0

    return v0

    .line 493
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 172
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, ""

    return-object v0

    .line 175
    :cond_0
    return-object v1
.end method

.method public getAudioPathById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, ""

    return-object v0

    .line 166
    :cond_0
    return-object v1
.end method

.method public getBooleanConfig(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Z

    .line 137
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBooleanConfig key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5IpcServerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 370
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 371
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getConfig  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v0, ""

    .line 377
    :cond_0
    return-object v0

    .line 379
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getDevNbsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfoNbsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    .local v1, "sv":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v1, ""

    .line 215
    :cond_0
    return-object v1
.end method

.method public getExtern_token()Ljava/lang/String;
    .locals 4

    .line 122
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 123
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "getExtern_token":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getExtern_token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v0, ""

    .line 129
    :cond_0
    return-object v0

    .line 131
    .end local v0    # "getExtern_token":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 4

    .line 107
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 108
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getLoginId()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "getLoginId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLoginId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v0, ""

    .line 114
    :cond_0
    return-object v0

    .line 116
    .end local v0    # "getLoginId":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 4

    .line 53
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 54
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getNick()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "nick":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNick nick "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v0, ""

    .line 60
    :cond_0
    return-object v0

    .line 63
    .end local v0    # "nick":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getPreferVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getPreferVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 244
    .local v1, "preferVersion":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v1, ""

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getPreferVersion "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5IpcServerImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1
.end method

.method public getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Ljava/lang/String;

    .line 356
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStringConfig key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5IpcServerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTinyProcessUseConfigList()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 461
    .local v0, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 462
    .local v1, "configMap":Ljava/util/Map;
    if-eqz v0, :cond_1

    .line 463
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 464
    .local v4, "config":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v3, "value":Ljava/lang/String;
    move-object v3, v5

    if-nez v5, :cond_0

    .line 466
    const-string v3, ""

    .line 468
    :cond_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "config":Ljava/lang/String;
    goto :goto_0

    .line 471
    :cond_1
    return-object v1
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 4

    .line 68
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 69
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "getUserAvatar":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserAvatar "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    :cond_0
    return-object v0

    .line 77
    .end local v0    # "getUserAvatar":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 4

    .line 93
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 94
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "userId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v0, ""

    .line 100
    :cond_0
    return-object v0

    .line 102
    .end local v0    # "userId":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getVideoPathById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, ""

    return-object v0

    .line 157
    :cond_0
    return-object v1
.end method

.method public hasAccessToDebug(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 280
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    .line 281
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 347
    const-class v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    const/4 v1, 0x0

    .line 348
    .local v1, "downloadManager":Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLogin()Z
    .locals 4

    .line 82
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v1, 0x0

    .line 83
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v0

    .line 85
    .local v0, "isLogin":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLogin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v0

    .line 88
    .end local v0    # "isLogin":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public killTinyOpenMainUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    .line 263
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "H5IpcServerImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 272
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 273
    .local v1, "schemeService":Lcom/alipay/mobile/framework/service/common/SchemeService;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 276
    :cond_1
    return-void
.end method

.method public process(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 180
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->goToSchemeService(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public process(Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;)I
    .locals 2
    .param p1, "h5IpcSchemeModel"    # Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->goToSchemeService(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeApiPermission(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 220
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeApiPermission(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    .local v1, "bytes":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 223
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getApiPermission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object v0

    .line 226
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 232
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    .local v1, "bytes":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 235
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAppConfigByte "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5IpcServerImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-object v0

    .line 238
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public removeDevApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setStringConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStringConfig key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5IpcServerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 194
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 195
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public syncScanBitmapFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 476
    const-class v0, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 478
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 479
    .local v2, "service":Lcom/alipay/android/phone/scancode/export/ScanService;
    move-object v2, v0

    const-string v3, ""

    if-eqz v0, :cond_0

    invoke-virtual {v2, p1}, Lcom/alipay/android/phone/scancode/export/ScanService;->syncScanBitmapFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 481
    .local v1, "code":Ljava/lang/String;
    :goto_0
    move-object v1, v0

    if-nez v0, :cond_1

    .line 482
    return-object v3

    .line 484
    :cond_1
    return-object v1
.end method

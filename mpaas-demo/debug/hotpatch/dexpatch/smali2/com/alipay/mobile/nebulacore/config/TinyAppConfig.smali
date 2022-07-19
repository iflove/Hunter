.class public Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;
.super Ljava/lang/Object;
.source "TinyAppConfig.java"

# interfaces
.implements Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/config/TinyAppConfig$TinyAppConfigInner;
    }
.end annotation


# static fields
.field private static final ABOUT_MENUS_BLACKLIST:Ljava/lang/String; = "ta_hide_about_item_blacklist"

.field private static final ADD_TO_DESKTOP_MENU_BLACKLIST:Ljava/lang/String; = "ta_addToDesktopMenuBlackList"

.field private static final ALLOWED_NAVIGATE_TO_NON_SUBJECT_MINI_PROGRAM_KEY:Ljava/lang/String; = "ta_checkNavigateRelation"

.field private static final ALLOWED_NON_SUBJECT_LIFESTYLE_KEY:Ljava/lang/String; = "ta_checkLifestyleRelation"

.field private static final APPX_RPC_API_CONFIG:Ljava/lang/String; = "ta_appx_rpc_whitelist_cfg"

.field private static final ASSISTANT_PANEL_SWITCH:Ljava/lang/String; = "ta_assistantPanelSwitch"

.field private static final CAN_INTERCEPT_BACK:Ljava/lang/String; = "ta_canInterceptBack"

.field private static final DEFAULT_ALLOWED_NAVIGATE_TO_NON_SUBJECT_MINI_PROGRAM:Z = false

.field private static final DEFAULT_ALLOWED_NON_SUBJECT_LIFESTYLE:Z = true

.field private static final DEFAULT_TRADE_PAY_CHECK:Z = false

.field private static final FAVORITE_MENU_BLACKLIST:Ljava/lang/String; = "ta_favoriteMenuBlackList"

.field private static final HTTPS_USE_SPDY_BLACKLIST:Ljava/lang/String; = "ta_goSPDYBlackList"

.field private static final JSAPI_WHITELIST_KEY:Ljava/lang/String; = "h5_white_jsapiList"

.field private static final MENU_CONFIG_UPDATE_DEFAULT:J = 0x5265c00L

.field private static final NAVIGATE_APP_DEBUG:Ljava/lang/String; = "ta_navigate_app_debug"

.field private static final NAVIGATE_TO_MINI_PROGRAM_WHITELIST_KEY:Ljava/lang/String; = "ta_navigateWhiteList"

.field private static final OLD_MINI_APP_LAUNCH_ANIMATOR:Ljava/lang/String; = "ta_oldLaunchAnimatorList"

.field private static final PERMISSION_DIALOG:Ljava/lang/String; = "ta_permissionDialogBlackList"

.field private static final PERMISSION_DIALOG_SWITCH:Ljava/lang/String; = "ta_permissionDialogSwitch"

.field private static final REMOTE_DEBUG_MODE:Ljava/lang/String; = "remote_debug_mode"

.field private static final RPC_API_CONFIG:Ljava/lang/String; = "ta_rpc_api_cfg"

.field private static final SCENE_CONFIG_KEY:Ljava/lang/String; = "ta_scene_cfg"

.field private static final SCENE_SHUTDOWN_KEY:Ljava/lang/String; = "ta_scene_shutdown"

.field private static final SHARE_MENU_BLACKLIST:Ljava/lang/String; = "ta_shareMenuBlackList"

.field private static final SHARE_NATIVE_CONFIG_KEY:Ljava/lang/String; = "use_native_share_cfg"

.field private static final SHOULD_HTTPS_USE_SPDY:Ljava/lang/String; = "ta_goSPDY"

.field private static final SHOULD_LOGIN_TOKEN_CLEAR_TEXT:Ljava/lang/String; = "ta_shouldLoginTokenClearText"

.field private static final SHOULD_LONG_CLICK_SHOW_PANEL:Ljava/lang/String; = "ta_longClickShowPanel"

.field private static final SUPPORTED_INTERNALAPI_LIST_KEY:Ljava/lang/String; = "ta_internalAPIList"

.field private static final SUPPORTED_WEBVIEW:Ljava/lang/String; = "ta_canUseWebview"

.field private static final SUPPORTED_WEBVIEW_API_LIST_KEY:Ljava/lang/String; = "ta_webviewJsapiList"

.field private static final TAG:Ljava/lang/String;

.field private static final TA_ADD_FAVORITE_ALERT_WHITELIST:Ljava/lang/String; = "ta_add_favorite_alert_whitelist"

.field private static final TA_CLOSE_APP_PAIRS:Ljava/lang/String; = "ta_closeAppPair"

.field private static final TA_CLOSE_WEBVIEW_SCHEMA_WHITELIST:Ljava/lang/String; = "ta_close_webviewSchemaWhiteList"

.field private static final TA_COMPS_NEED_CHECK:Ljava/lang/String; = "ta_compsNeedCheck"

.field private static final TA_COMPS_PERMISSION_WHITE_LIST:Ljava/lang/String; = "ta_compsPermissionWhiteList"

.field private static final TA_COOKIE_PART_WHITE_LIST:Ljava/lang/String; = "ta_cookie_part_wl"

.field private static final TA_EDGE_CFG:Ljava/lang/String; = "ta_edge_cfg"

.field private static final TA_ENABLE_TEMPLATE_APP:Ljava/lang/String; = "ta_enableModuleApp"

.field private static final TA_FAVORITE_SYNCHRONISED_TIME:Ljava/lang/String; = "ta_favoriteSynchronisedTime"

.field private static final TA_FAVORITE_TIP_AB:Ljava/lang/String; = "ta_favorite_tip_ab"

.field private static final TA_FAVORITE_USE_RPC:Ljava/lang/String; = "ta_favoriteUseRpc"

.field private static final TA_H5_TRANSFER_TINY:Ljava/lang/String; = "ta_h5TransferTiny"

.field private static final TA_HTTP_DOMAIN_BLACK_LIST:Ljava/lang/String; = "ta_http_domain_blacklist"

.field private static final TA_INJECT_CH_INFO:Ljava/lang/String; = "ta_injectChInfo"

.field private static final TA_IS_OPEN_RECENT_APP_PANEL:Ljava/lang/String; = "ta_is_open_recent_app_panel"

.field private static final TA_IS_UPDATE_MENU_INTERVAL:Ljava/lang/String; = "ta_is_update_menu_interval"

.field private static final TA_IS_UPDATE_MENU_INTERVAL_LIST:Ljava/lang/String; = "ta_is_update_menu_interval_list"

.field private static final TA_LAUNCH_APP_JSAPI_BLACKLIST:Ljava/lang/String; = "ta_launch_app_jsapi_blacklist"

.field private static final TA_LIMIT_CONTROL_LIST:Ljava/lang/String; = "ta_limitControlList"

.field private static final TA_MAX_ADD_FAVORITE_SIZE:Ljava/lang/String; = "ta_maxAddFavoriteSize"

.field private static final TA_MODULE_APP_WAIT_TIME:Ljava/lang/String; = "ta_preferConfigWaitTime"

.field private static final TA_NAVIGATE_ALIPAY_PAGES:Ljava/lang/String; = "ta_navigate_alipay_pages"

.field private static final TA_NAVI_IS_NEW_MENU:Ljava/lang/String; = "ta_navi_is_new_menu"

.field private static final TA_NAVI_IS_SHOW_FAVORITE:Ljava/lang/String; = "ta_navi_is_show_favorite"

.field private static final TA_NAVI_POPTIP_MAX_COUNT:Ljava/lang/String; = "ta_navibar_poptip_max_count"

.field private static final TA_PRE_INIT_TAF_CACHE:Ljava/lang/String; = "ta_preInitTAFCache"

.field private static final TA_QUERY_ALL_FAVORITE_CACHE_TIME:Ljava/lang/String; = "ta_queryAllFavoriteCacheTime"

.field private static final TA_QUERY_EMERGENCY:Ljava/lang/String; = "ta_queryEmergency"

.field private static final TA_RENDER_JSAPI_BLACK_LIST:Ljava/lang/String; = "ta_renderJsapiBList"

.field private static final TA_REQUEST_PROXY_LIST:Ljava/lang/String; = "ta_requestProxyList"

.field private static final TA_ROOT_DEVICE_WHITELIST:Ljava/lang/String; = "ta_root_device_whitelist"

.field private static final TA_SET_MIN_APPX_BLACKLIST:Ljava/lang/String; = "ta_setMinAppxBlacklist"

.field private static final TA_SHARE_TEMPLATE_B_LIST:Ljava/lang/String; = "ta_share_template_blist"

.field private static final TA_SNAPSHOT_2_WHITE_LIST:Ljava/lang/String; = "ta_snapshot2WhiteList"

.field private static final TA_SNAPSHOT_BLACK_LIST:Ljava/lang/String; = "ta_snapshotBlackList"

.field private static final TA_SNAPSHOT_WHITE_LIST:Ljava/lang/String; = "ta_snapshotWhiteList"

.field private static final TA_SPM_TAF_SWICH:Ljava/lang/String; = "ta_spmTAFSwitch"

.field private static final TA_START_PRELOAD:Ljava/lang/String; = "ta_startPreload"

.field private static final TA_TAO_BAO_APP_INFO:Ljava/lang/String; = "ta_taobao_app_info"

.field private static final TA_TELEPHONY_NAME_PAIR_MCCMNC:Ljava/lang/String; = "ta_telephony_name_pair_mccmnc"

.field private static final TA_TINY_APP_MENU_ABOUT_MSG_WHITE_LIST:Ljava/lang/String; = "ta_show_about_item_whitelist"

.field private static final TA_UC_FAIL_FALLBACK_APP:Ljava/lang/String; = "ta_fallbackApp"

.field private static final TA_USE_CUSTOM_SHARE_CONTENT:Ljava/lang/String; = "ta_useCustomShareContent"

.field private static final TA_USE_NEW_DEBUG_SERVER:Ljava/lang/String; = "ta_use_new_debug_server"

.field private static final TA_USE_SYS_WEBVIEW:Ljava/lang/String; = "ta_useSysWebView"

.field private static final TA_USE_TINY_APP_MANAGER_PROCESS:Ljava/lang/String; = "ta_useTinyAppManagerProcess"

.field private static final TA_USE_TINY_SHARE_PAD_BLACK_LIST:Ljava/lang/String; = "ta_useTinySharePadBlackList"

.field private static final TA_USE_TLS_WHITELIST:Ljava/lang/String; = "ta_useTlsWhitelist"

.field private static final TA_USE_WHOLE_PKG:Ljava/lang/String; = "ta_useWholePkg"

.field private static final TA_V8_WORKER_APP_WHITE:Ljava/lang/String; = "ta_v8AppWhiteList"

.field private static final TA_WEBVIEW_NB_APPID_LIST:Ljava/lang/String; = "ta_webviewNBAppIdList"

.field private static final TA_WEBVIEW_OPEN_APPID_LIST:Ljava/lang/String; = "ta_webviewOpenAppIdList"

.field private static final TA_WEB_VIEW_JSAPI_DOMAIN_WHITE_LIST:Ljava/lang/String; = "ta_embedwebview_white_domain_list"

.field private static final TA_WEB_VIEW_SHOW_PROGRESS:Ljava/lang/String; = "ta_webview_sp"

.field private static final TA_WORKER_MAX_COUNT:Ljava/lang/String; = "ta_maxWorkerCount"

.field private static final TRADE_PAY_CHECK_KEY:Ljava/lang/String; = "ta_tradePayCheck"

.field private static final USE_RPC_MERGE_FOR_QR_CODE_SHARE:Ljava/lang/String; = "ta_qrcodeshare_use_rpcservice"

.field private static final WEBVIEW_JSAPI_WHITELIST:Ljava/lang/String; = "ta_webviewAppIdWhiteList"

.field private static final enableTinyIgnorePermission_KEY:Ljava/lang/String; = "h5_enableTinyIgnorePermission"


# instance fields
.field private appxRpcApiConfig:Lcom/alibaba/fastjson/JSONArray;

.field private cookiePartWhiteList:Lcom/alibaba/fastjson/JSONArray;

.field private enableTinyIgnorePermission:Z

.field private favoriteSynchronisedTime:J

.field private favoriteUseRpc:Z

.field private httpDomainBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private injectChInfoList:Lcom/alibaba/fastjson/JSONArray;

.field private isNavigateAppDebug:Z

.field private mAboutMenuBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddFavoriteAlertWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToDesktopMenuBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedNaviToNonSubjectMiniPro:Z

.field private mAllowedNonSubjectLifestyle:Z

.field private mAssistantPanelSwitch:Z

.field private mBarIsShowFavoriteAppIds:Lcom/alibaba/fastjson/JSONObject;

.field private mCanInterceptBackEvent:Z

.field private mCloseAppPairObject:Lcom/alibaba/fastjson/JSONObject;

.field private mCloseWebviewSchema:Z

.field private mCompsNeedCheckSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompsPermissionWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeConfig:Lcom/alibaba/fastjson/JSONObject;

.field private mEdgeEnable:Z

.field private mEnableTemplateApp:Z

.field private mEnableV8Worker:Z

.field private mFavoriteMenuBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mH5TransferTinyArray:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpsUseSpdyBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOpenRecentAppPanelAppIds:Lcom/alibaba/fastjson/JSONObject;

.field private mLaunchAppJsapiBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitControlSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWorkerCount:I

.field private mMenuConfigUpdateInterval:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNaviToMiniProgramWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigateToAlipayPageRules:Lcom/alibaba/fastjson/JSONObject;

.field private mOldLaunchAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionDialogSwitch:Z

.field private mPermissionDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderJsApiBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestProxySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRootCheckWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetMinAppxBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShareMenuBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShareNativeConfig:Z

.field private mShouldHttpsUseSpdy:Z

.field private mShouldLoginTokenClearText:Z

.field private mShouldLongClickShowPanel:Z

.field private mSnapshot2WhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapshotBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapshotWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPreload:Z

.field private mSupportRemoteDebugMode:Z

.field private mSupportedInternalApiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedWebview:Z

.field private mSupportedWebviewApiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyNameMCCMNC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateAppWaitTime:I

.field private mTinyFavoriteTipAB:Lcom/alibaba/fastjson/JSONObject;

.field private mTinyShareDefaultTemplateBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private mTradePayCheck:Z

.field private mUSeCustomShareContent:Lcom/alibaba/fastjson/JSONArray;

.field private mUcFailFallbackAppSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMenuInterval:Ljava/lang/String;

.field private mUseNewDebugServer:Z

.field private mUseOldMenuStyleAppids:Lcom/alibaba/fastjson/JSONObject;

.field private mUseSysWebView:Z

.field private mUseTinyAppManagerProcess:Z

.field private mUseTinySharePadBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private mUseTlsWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseWholePackageAppIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mV8WorkerAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewNBAppIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebviewJsapiWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebviewOpenAppIdList:Lcom/alibaba/fastjson/JSONObject;

.field private maxAddFavoriteSize:I

.field private maxFavoriteTipMaxCount:I

.field private preInitTAFCache:Z

.field private queryAllFavoriteCacheTime:J

.field private queryEmergency:Z

.field private rpcApiConfig:Lcom/alibaba/fastjson/JSONObject;

.field private sceneConfig:Lcom/alibaba/fastjson/JSONObject;

.field private sceneTransformShutdown:Z

.field private spmTAPSwitch:Z

.field private taoBaoAppInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private tinyAppMenuAboutMsgWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useRpcMergeForQrCodeShare:Z

.field private webViewJSAPIDomainWhiteList:Lcom/alibaba/fastjson/JSONArray;

.field private webViewShowProgress:Z

.field private whiteJsApiJsonArray:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableTemplateApp:Z

    .line 158
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTemplateAppWaitTime:I

    .line 161
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->webViewJSAPIDomainWhiteList:Lcom/alibaba/fastjson/JSONArray;

    .line 164
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->injectChInfoList:Lcom/alibaba/fastjson/JSONArray;

    .line 173
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->cookiePartWhiteList:Lcom/alibaba/fastjson/JSONArray;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->taoBaoAppInfo:Ljava/util/Map;

    .line 179
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mStartPreload:Z

    .line 187
    iput v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMaxWorkerCount:I

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->httpDomainBlacklist:Ljava/util/List;

    .line 196
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseSysWebView:Z

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableV8Worker:Z

    .line 225
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseNewDebugServer:Z

    .line 228
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinyAppManagerProcess:Z

    .line 231
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportRemoteDebugMode:Z

    .line 234
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->useRpcMergeForQrCodeShare:Z

    .line 237
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isNavigateAppDebug:Z

    .line 240
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->rpcApiConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 242
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->appxRpcApiConfig:Lcom/alibaba/fastjson/JSONArray;

    .line 245
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 248
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneTransformShutdown:Z

    .line 251
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareNativeConfig:Z

    .line 254
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->enableTinyIgnorePermission:Z

    .line 259
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTradePayCheck:Z

    .line 264
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNonSubjectLifestyle:Z

    .line 269
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNaviToNonSubjectMiniPro:Z

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mNaviToMiniProgramWhitelist:Ljava/util/List;

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedInternalApiList:Ljava/util/List;

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebviewApiList:Ljava/util/List;

    .line 285
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebview:Z

    .line 289
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCanInterceptBackEvent:Z

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogWhitelist:Ljava/util/List;

    .line 297
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogSwitch:Z

    .line 301
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAssistantPanelSwitch:Z

    .line 305
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldHttpsUseSpdy:Z

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mHttpsUseSpdyBlacklist:Ljava/util/List;

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareMenuBlacklist:Ljava/util/List;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAboutMenuBlackList:Ljava/util/List;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mFavoriteMenuBlacklist:Ljava/util/List;

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddToDesktopMenuBlacklist:Ljava/util/List;

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewJsapiWhitelist:Ljava/util/List;

    .line 333
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLoginTokenClearText:Z

    .line 337
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLongClickShowPanel:Z

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mOldLaunchAnimatorList:Ljava/util/List;

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLaunchAppJsapiBlacklist:Ljava/util/List;

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddFavoriteAlertWhiteList:Ljava/util/List;

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    .line 355
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCloseWebviewSchema:Z

    .line 359
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseOldMenuStyleAppids:Lcom/alibaba/fastjson/JSONObject;

    .line 363
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mBarIsShowFavoriteAppIds:Lcom/alibaba/fastjson/JSONObject;

    .line 368
    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxFavoriteTipMaxCount:I

    .line 372
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteSynchronisedTime:J

    .line 376
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteUseRpc:Z

    .line 380
    const/16 v4, 0x30

    iput v4, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxAddFavoriteSize:I

    .line 384
    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryAllFavoriteCacheTime:J

    .line 388
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->preInitTAFCache:Z

    .line 392
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryEmergency:Z

    .line 396
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->spmTAPSwitch:Z

    .line 400
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mIsOpenRecentAppPanelAppIds:Lcom/alibaba/fastjson/JSONObject;

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUpdateMenuInterval:Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMenuConfigUpdateInterval:Ljava/util/Map;

    .line 413
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 414
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeEnable:Z

    .line 418
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUSeCustomShareContent:Lcom/alibaba/fastjson/JSONArray;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->tinyAppMenuAboutMsgWhiteList:Ljava/util/List;

    .line 426
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinySharePadBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 430
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyShareDefaultTemplateBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 434
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyFavoriteTipAB:Lcom/alibaba/fastjson/JSONObject;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTelephonyNameMCCMNC:Ljava/util/HashMap;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRootCheckWhiteList:Ljava/util/List;

    .line 445
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 446
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configProvider = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz v0, :cond_0

    .line 449
    const-string/jumbo v1, "ta_internalAPIList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportedInternalApiList(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v1, "ta_webviewAppIdWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebviewJsapiWhitelist(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v1, "ta_favoriteMenuBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteMenuBlacklist(Ljava/lang/String;)V

    .line 452
    const-string/jumbo v1, "ta_tradePayCheck"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTradePaySwitch(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "ta_canUseWebview"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportWebviewConfig(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "ta_canInterceptBack"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCanInterceptBackConfig(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v1, "ta_webviewJsapiList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportedWebviewApiList(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v1, "ta_navigateWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNaviToMiniProgramWhitelist(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v1, "ta_permissionDialogSwitch"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPermissionDialogSwitch(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v1, "ta_shareMenuBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShareMenuBlacklist(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v1, "ta_addToDesktopMenuBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAddToDesktopMenuBlacklist(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v1, "ta_longClickShowPanel"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldLongClickShowPanel(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v1, "ta_permissionDialogBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPermissionDialogWhitelist(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v1, "ta_checkLifestyleRelation"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAllowedNonSubjectLifestyle(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v1, "ta_checkNavigateRelation"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAllowedNaviToNonSubjectMiniProgram(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v1, "ta_goSPDY"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldHttpsUseSpdy(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v1, "ta_goSPDYBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initHttpsUseSpdyBlacklist(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v1, "ta_assistantPanelSwitch"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAssistantPanelSwitch(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v1, "ta_shouldLoginTokenClearText"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldLoginTokenClearText(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v1, "ta_oldLaunchAnimatorList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initOldLaunchAnimatorList(Ljava/lang/String;)V

    .line 470
    const-string v1, "h5_white_jsapiList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initJsapiWhitelist(Ljava/lang/String;)V

    .line 471
    const-string v1, "h5_enableTinyIgnorePermission"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEnableTinyIgnorePermission(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "use_native_share_cfg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShareNativeConfigKey(Ljava/lang/String;)V

    .line 473
    const-string/jumbo v1, "ta_scene_cfg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSceneConfig(Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "ta_scene_shutdown"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSceneTransformShutdown(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v1, "ta_rpc_api_cfg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRpcApiConfig(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v1, "ta_appx_rpc_whitelist_cfg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAppxRpcApiConfig(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v1, "ta_use_new_debug_server"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseNewDebugServer(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v1, "ta_useTinyAppManagerProcess"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTinyAppManagerProcess(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v1, "ta_h5TransferTiny"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initH5TransferTiny(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v1, "ta_setMinAppxBlacklist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSetMinAppxBlacklist(Ljava/lang/String;)V

    .line 481
    const-string/jumbo v1, "ta_webviewOpenAppIdList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebviewOpenAppIdList(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v1, "ta_navigate_alipay_pages"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNavigateAlipayPages(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v1, "ta_hide_about_item_blacklist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAboutMenuBlacklist(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v1, "remote_debug_mode"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRemoteDebugMode(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v1, "ta_qrcodeshare_use_rpcservice"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseRpcForQrCodeShare(Ljava/lang/String;)V

    .line 486
    const-string/jumbo v1, "ta_navigate_app_debug"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNavigateAppDebug(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "ta_http_domain_blacklist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initHttpDomainBlackList(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v1, "ta_webview_sp"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewShowProgress(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v1, "ta_maxWorkerCount"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWorkerCount(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v1, "ta_useSysWebView"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseSysWebView(Ljava/lang/String;)V

    .line 491
    const-string/jumbo v1, "ta_v8AppWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initV8WorkerAppWhiteList(Ljava/lang/String;)V

    .line 492
    const-string/jumbo v1, "ta_launch_app_jsapi_blacklist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initLaunchAppJspiBlacklist(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v1, "ta_startPreload"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initStartPreload(Ljava/lang/String;)V

    .line 494
    const-string/jumbo v1, "ta_closeAppPair"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCloseAppPairs(Ljava/lang/String;)V

    .line 495
    const-string/jumbo v1, "ta_taobao_app_info"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTaoBaoAppInfo(Ljava/lang/String;)V

    .line 496
    const-string/jumbo v1, "ta_cookie_part_wl"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCookiePartWhiteList(Ljava/lang/String;)V

    .line 497
    const-string/jumbo v1, "ta_fallbackApp"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUcFailFallbackAppBlacklist(Ljava/lang/String;)V

    .line 498
    const-string/jumbo v1, "ta_add_favorite_alert_whitelist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAddFavoriteAlertWhiteList(Ljava/lang/String;)V

    .line 499
    const-string/jumbo v1, "ta_useTlsWhitelist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTlsWhiteList(Ljava/lang/String;)V

    .line 500
    const-string/jumbo v1, "ta_close_webviewSchemaWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCloseWebviewSchema(Ljava/lang/String;)V

    .line 501
    const-string/jumbo v1, "ta_useWholePkg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseWholePkglist(Ljava/lang/String;)V

    .line 502
    const-string/jumbo v1, "ta_snapshotWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshotWhiteList(Ljava/lang/String;)V

    .line 503
    const-string/jumbo v1, "ta_snapshotBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshotBlackList(Ljava/lang/String;)V

    .line 504
    const-string/jumbo v1, "ta_snapshot2WhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshot2WhiteList(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v1, "ta_renderJsapiBList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRenderJsApiBlacklist(Ljava/lang/String;)V

    .line 506
    const-string/jumbo v1, "ta_injectChInfo"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initInjectChInfoList(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v1, "ta_embedwebview_white_domain_list"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewJSAPIDomainWhiteList(Ljava/lang/String;)V

    .line 508
    const-string/jumbo v1, "ta_navi_is_new_menu"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseOldMenuStyleAppIds(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v1, "ta_navi_is_show_favorite"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initBarIsShowFavoriteAppIds(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v1, "ta_navibar_poptip_max_count"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initBarShowFavoriteTipsMaxCount(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v1, "ta_favoriteSynchronisedTime"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteSynchronisedTime(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v1, "ta_maxAddFavoriteSize"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMaxAddFavoriteSize(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v1, "ta_favoriteUseRpc"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteUseRpc(Ljava/lang/String;)V

    .line 514
    const-string/jumbo v1, "ta_queryAllFavoriteCacheTime"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteGetAllCacheTime(Ljava/lang/String;)V

    .line 515
    const-string/jumbo v1, "ta_preInitTAFCache"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPreInitTAFCache(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "ta_queryEmergency"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteQueryEmergency(Ljava/lang/String;)V

    .line 517
    const-string/jumbo v1, "ta_spmTAFSwitch"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteSPMSwitch(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v1, "ta_is_open_recent_app_panel"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initIsOpenRecentAppPanelAppIds(Ljava/lang/String;)V

    .line 520
    const-string/jumbo v1, "ta_is_update_menu_interval"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUpdateMenuInternal(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v1, "ta_enableModuleApp"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEnableTemplateApp(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v1, "ta_is_update_menu_interval_list"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMenuConfigUpdateInterval(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v1, "ta_edge_cfg"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEdgeConfig(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v1, "ta_limitControlList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initLimitControlSet(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v1, "ta_compsNeedCheck"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCompsNeedCheckSet(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "ta_compsPermissionWhiteList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCompsPermissionWhiteList(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, "ta_requestProxyList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRequestProxySet(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "ta_useCustomShareContent"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseCustomShareContent(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "ta_webviewNBAppIdList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewNBAppIdWhiteList(Ljava/lang/String;)V

    .line 530
    const-string/jumbo v1, "ta_show_about_item_whitelist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMenuAboutMsgWhiteList(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v1, "ta_useTinySharePadBlackList"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTinySharePadBlackList(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v1, "ta_share_template_blist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTinyShareDefaultTemplateBlackList(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v1, "ta_favorite_tip_ab"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTinyFavoriteTipAB(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v1, "ta_telephony_name_pair_mccmnc"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTelephonyNameMCCMNC(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v1, "ta_preferConfigWaitTime"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTemplateAppWaitTime(Ljava/lang/String;)V

    .line 536
    const-string/jumbo v1, "ta_root_device_whitelist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRootCheckWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v0    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    return-void

    .line 538
    :catchall_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "init tiny config happen some problem"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulacore/config/TinyAppConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulacore/config/TinyAppConfig$1;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;
    .locals 1

    .line 549
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig$TinyAppConfigInner;->sInstance:Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    return-object v0
.end method

.method private initAboutMenuBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "blackList"    # Ljava/lang/String;

    .line 1365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAboutMenuBlacklist..config is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return-void

    .line 1370
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1372
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 1373
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initAboutMenuBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAboutMenuBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1378
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1379
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1381
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAboutMenuBlackList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    goto :goto_1

    .line 1382
    :catchall_0
    move-exception v3

    .line 1383
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initAboutMenuBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1386
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private initAddFavoriteAlertWhiteList(Ljava/lang/String;)V
    .locals 7
    .param p1, "whiteList"    # Ljava/lang/String;

    .line 1549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAddFavoriteAlertWhiteList..config is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    return-void

    .line 1553
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1554
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 1555
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initAddFavoriteAlertWhiteList..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    return-void

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddFavoriteAlertWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1560
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1561
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1563
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddFavoriteAlertWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    goto :goto_1

    .line 1564
    :catchall_0
    move-exception v3

    .line 1565
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initLaunchAppJspiBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1568
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private initAddToDesktopMenuBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1502
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1503
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1504
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initAddToDesktopMenuBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddToDesktopMenuBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1509
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1510
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1512
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddToDesktopMenuBlacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    goto :goto_1

    .line 1513
    :catchall_0
    move-exception v3

    .line 1514
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initAddToDesktopMenuBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1517
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initAllowedNaviToNonSubjectMiniProgram(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAllowedNaviToNonSubjectMiniProgram..value is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void

    .line 1160
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNaviToNonSubjectMiniPro:Z

    .line 1161
    return-void
.end method

.method private initAllowedNonSubjectLifestyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initAllowedNonSubjectLifestyle..value is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1146
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNonSubjectLifestyle:Z

    .line 1147
    return-void
.end method

.method private initAppxRpcApiConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "appxRpcApiConfig"    # Ljava/lang/String;

    .line 963
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    return-void

    .line 967
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->appxRpcApiConfig:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "init rpc api config error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initAssistantPanelSwitch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1303
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAssistantPanelSwitch:Z

    .line 1304
    return-void
.end method

.method private initBarIsShowFavoriteAppIds(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;

    .line 1619
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initBarIsShowFavoriteAppIds...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1623
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mBarIsShowFavoriteAppIds:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    return-void

    .line 1624
    :catchall_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initBarIsShowFavoriteAppIds...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initBarShowFavoriteTipsMaxCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "rules"    # Ljava/lang/String;

    .line 1630
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initBarShowFavoriteTipsMaxCount...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1634
    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxFavoriteTipMaxCount:I

    .line 1635
    return-void

    .line 1639
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxFavoriteTipMaxCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initBarIsShowFavoriteAppIds...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxFavoriteTipMaxCount:I

    .line 1645
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initCanInterceptBackConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1260
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCanInterceptBackEvent:Z

    .line 1261
    return-void
.end method

.method private initCloseAppPairs(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1445
    if-nez p1, :cond_0

    return-void

    .line 1448
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCloseAppPairObject:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    return-void

    .line 1449
    :catchall_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initCloseAppPairs...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initCloseWebviewSchema(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1756
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCloseWebviewSchema:Z

    .line 1757
    return-void
.end method

.method private initCompsNeedCheckSet(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    return-void

    .line 1840
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1841
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsNeedCheckSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1846
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsNeedCheckSet:Ljava/util/Set;

    goto :goto_0

    .line 1848
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1850
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1851
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsNeedCheckSet:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1853
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1842
    :cond_4
    :goto_2
    return-void
.end method

.method private initCompsPermissionWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    return-void

    .line 1860
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1861
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsPermissionWhiteList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1866
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsPermissionWhiteList:Ljava/util/Set;

    goto :goto_0

    .line 1868
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1870
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1871
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsPermissionWhiteList:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1870
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1873
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1862
    :cond_4
    :goto_2
    return-void
.end method

.method private initCookiePartWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "taCookiePartWhiteList"    # Ljava/lang/String;

    .line 726
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->cookiePartWhiteList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 734
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initEdgeConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "taEdgeCfg"    # Ljava/lang/String;

    .line 653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 658
    const-string v1, "1"

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeEnable:Z

    .line 661
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initEnableTemplateApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1765
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1767
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableTemplateApp:Z

    .line 1768
    return-void
.end method

.method private initEnableTinyIgnorePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1106
    :cond_0
    const-string/jumbo v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->enableTinyIgnorePermission:Z

    .line 1107
    return-void
.end method

.method private initFavoriteGetAllCacheTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;

    .line 1692
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFavoriteGetAllCacheTime... rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryAllFavoriteCacheTime:J

    .line 1696
    return-void

    .line 1700
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryAllFavoriteCacheTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    return-void

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFavoriteGetAllCacheTime...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initFavoriteMenuBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1481
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1482
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1483
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initFavoriteMenuBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    return-void

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mFavoriteMenuBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1488
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1489
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1491
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mFavoriteMenuBlacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    goto :goto_1

    .line 1492
    :catchall_0
    move-exception v3

    .line 1493
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initFavoriteMenuBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1496
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initFavoriteQueryEmergency(Ljava/lang/String;)V
    .locals 3
    .param p1, "rules"    # Ljava/lang/String;

    .line 1717
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFavoriteQueryEmergency... rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryEmergency:Z

    .line 1723
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryEmergency:Z

    .line 1724
    return-void
.end method

.method private initFavoriteSPMSwitch(Ljava/lang/String;)V
    .locals 3
    .param p1, "rules"    # Ljava/lang/String;

    .line 1727
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFavoriteSPMSwitch... rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->spmTAPSwitch:Z

    .line 1733
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->spmTAPSwitch:Z

    .line 1734
    return-void
.end method

.method private initFavoriteSynchronisedTime(Ljava/lang/String;)V
    .locals 6
    .param p1, "rules"    # Ljava/lang/String;

    .line 1648
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFavoriteSynchronisedTime...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1651
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteSynchronisedTime:J

    .line 1652
    return-void

    .line 1656
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteSynchronisedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    return-void

    .line 1657
    :catchall_0
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initFavoriteSynchronisedTime...e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteSynchronisedTime:J

    .line 1662
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initFavoriteUseRpc(Ljava/lang/String;)V
    .locals 3
    .param p1, "rules"    # Ljava/lang/String;

    .line 1681
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFavoriteUseRpc... rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteUseRpc:Z

    .line 1685
    return-void

    .line 1688
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteUseRpc:Z

    .line 1689
    return-void
.end method

.method private initH5TransferTiny(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1019
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    return-void

    .line 1023
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1024
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mH5TransferTinyArray:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1029
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mH5TransferTinyArray:Ljava/util/Set;

    goto :goto_0

    .line 1031
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1033
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1034
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mH5TransferTinyArray:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1025
    :cond_4
    :goto_2
    return-void
.end method

.method private initHttpDomainBlackList(Ljava/lang/String;)V
    .locals 5
    .param p1, "taHttpDomainBlackList"    # Ljava/lang/String;

    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    return-void

    .line 901
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v0, "list":Ljava/util/List;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 903
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 904
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->httpDomainBlacklist:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "init http domain black list error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initHttpsUseSpdyBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1321
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1322
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1323
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initHttpsUseSpdyBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mHttpsUseSpdyBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1328
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1329
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1331
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mHttpsUseSpdyBlacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    goto :goto_1

    .line 1332
    :catchall_0
    move-exception v3

    .line 1333
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initHttpsUseSpdyBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initInjectChInfoList(Ljava/lang/String;)V
    .locals 2
    .param p1, "taInjectChInfo"    # Ljava/lang/String;

    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    return-void

    .line 719
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->injectChInfoList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initIsOpenRecentAppPanelAppIds(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;

    .line 1737
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initIsOpenRecentAppPanelAppIds...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1741
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mIsOpenRecentAppPanelAppIds:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    return-void

    .line 1742
    :catchall_0
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initIsOpenRecentAppPanelAppIds...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initJsapiWhitelist(Ljava/lang/String;)V
    .locals 4
    .param p1, "whitelistValue"    # Ljava/lang/String;

    .line 1072
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initJsapiWhitelist...whitelistValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1076
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->whiteJsApiJsonArray:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initJsapiWhitelist...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initLaunchAppJspiBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "blackList"    # Ljava/lang/String;

    .line 1525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initLaunchAppJspiBlacklist..config is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    return-void

    .line 1530
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1532
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 1533
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initLaunchAppJspiBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    return-void

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLaunchAppJsapiBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1538
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1539
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1541
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLaunchAppJsapiBlacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    goto :goto_1

    .line 1542
    :catchall_0
    move-exception v3

    .line 1543
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initLaunchAppJspiBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1546
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private initLimitControlSet(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    return-void

    .line 1795
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1796
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLimitControlSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1801
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLimitControlSet:Ljava/util/Set;

    goto :goto_0

    .line 1803
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1805
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1806
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLimitControlSet:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1808
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1797
    :cond_4
    :goto_2
    return-void
.end method

.method private initMaxAddFavoriteSize(Ljava/lang/String;)V
    .locals 5
    .param p1, "rules"    # Ljava/lang/String;

    .line 1665
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initMaxAddFavoriteSize...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_0

    .line 1668
    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxAddFavoriteSize:I

    .line 1669
    return-void

    .line 1673
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxAddFavoriteSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    return-void

    .line 1674
    :catchall_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMaxAddFavoriteSize...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iput v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxAddFavoriteSize:I

    .line 1678
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initMenuAboutMsgWhiteList(Ljava/lang/String;)V
    .locals 5
    .param p1, "whiteList"    # Ljava/lang/String;

    .line 1901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    return-void

    .line 1904
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1905
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1910
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->tinyAppMenuAboutMsgWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1911
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1912
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1913
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->tinyAppMenuAboutMsgWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1917
    .end local v0    # "length":I
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1915
    :catchall_0
    move-exception v0

    .line 1916
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMenuAboutMsgWhiteList...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 1906
    :cond_3
    :goto_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initMenuAboutMsgWhiteList..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    return-void
.end method

.method private initMenuConfigUpdateInterval(Ljava/lang/String;)V
    .locals 14
    .param p1, "taIsUpdateMenuIntervalList"    # Ljava/lang/String;

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    return-void

    .line 680
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v0, "map":Ljava/util/Map;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 682
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .local v3, "size":I
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move-object v7, v6

    :goto_0
    if-ge v2, v3, :cond_3

    .line 683
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 684
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v10

    const-string/jumbo v11, "time"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    .line 685
    .local v8, "time":J
    move-wide v8, v10

    cmp-long v12, v10, v4

    if-lez v12, :cond_2

    .line 688
    const-string v10, "list"

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 689
    .local v10, "list":Lcom/alibaba/fastjson/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    .local v12, "size4j":I
    :goto_1
    if-ge v11, v12, :cond_2

    .line 690
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 691
    .local v7, "appId":Ljava/lang/String;
    move-object v7, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 694
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .end local v7    # "appId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 682
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "time":J
    .end local v10    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "j":I
    .end local v12    # "size4j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMenuConfigUpdateInterval:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initNaviToMiniProgramWhitelist(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 1170
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initNaviToMiniProgramWhitelist..value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    const-string v1, "initNaviToMiniProgramWhitelist..value is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void

    .line 1176
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1177
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 1178
    return-void

    .line 1180
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v0, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1182
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mNaviToMiniProgramWhitelist:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "valueArray":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    .line 1186
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initNaviToMiniProgramWhitelist..e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initNavigateAlipayPages(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;

    .line 1088
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initNavigateAlipayPages...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1092
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mNavigateToAlipayPageRules:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    return-void

    .line 1093
    :catchall_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initNavigateAlipayPages...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initNavigateAppDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "navigateAppDebug"    # Ljava/lang/String;

    .line 981
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    return-void

    .line 984
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isNavigateAppDebug:Z

    .line 985
    return-void
.end method

.method private initOldLaunchAnimatorList(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1458
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1459
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1460
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initOldLaunchAnimatorList..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mOldLaunchAnimatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1465
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1466
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1468
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mOldLaunchAnimatorList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    goto :goto_1

    .line 1469
    :catchall_0
    move-exception v3

    .line 1470
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initOldLaunchAnimatorList...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1473
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initPermissionDialogSwitch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1292
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogSwitch:Z

    .line 1293
    return-void
.end method

.method private initPermissionDialogWhitelist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1267
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1268
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1269
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initPermissionDialogWhitelist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1274
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1275
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1277
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogWhitelist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    goto :goto_1

    .line 1278
    :catchall_0
    move-exception v3

    .line 1279
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initPermissionDialogWhitelist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initPreInitTAFCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "rules"    # Ljava/lang/String;

    .line 1707
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init pre init TAF cache... rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->preInitTAFCache:Z

    .line 1713
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->preInitTAFCache:Z

    .line 1714
    return-void
.end method

.method private initRemoteDebugMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .line 993
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    return-void

    .line 997
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportRemoteDebugMode:Z

    .line 998
    return-void
.end method

.method private initRenderJsApiBlacklist(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 757
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    return-void

    .line 761
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 762
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRenderJsApiBlacklist:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 767
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRenderJsApiBlacklist:Ljava/util/Set;

    goto :goto_0

    .line 769
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 771
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 772
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRenderJsApiBlacklist:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 763
    :cond_4
    :goto_2
    return-void
.end method

.method private initRequestProxySet(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1816
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    return-void

    .line 1820
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1821
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRequestProxySet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1826
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRequestProxySet:Ljava/util/Set;

    goto :goto_0

    .line 1828
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1830
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1831
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRequestProxySet:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1830
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1833
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1822
    :cond_4
    :goto_2
    return-void
.end method

.method private initRootCheckWhiteList(Ljava/lang/String;)V
    .locals 8
    .param p1, "rootBlackStr"    # Ljava/lang/String;

    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    return-void

    .line 613
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v0, "tmpList":Ljava/util/List;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 615
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .local v1, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 619
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    nop

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v4

    .line 621
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initRootCheckWhiteList...e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRootCheckWhiteList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 629
    .end local v0    # "tmpList":Ljava/util/List;
    .end local v1    # "length":I
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initRpcApiConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "rpcApiConfig"    # Ljava/lang/String;

    .line 952
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    return-void

    .line 956
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->rpcApiConfig:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "init rpc api config error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initSceneConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneConfig"    # Ljava/lang/String;

    .line 913
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    return-void

    .line 917
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneConfig:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "init scene config error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initSceneTransformShutdown(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneTransformShutdown"    # Ljava/lang/String;

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    return-void

    .line 927
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneTransformShutdown:Z

    .line 928
    return-void
.end method

.method private initSetMinAppxBlacklist(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1039
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    return-void

    .line 1043
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1044
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSetMinAppxBlacklist:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1049
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSetMinAppxBlacklist:Ljava/util/Set;

    goto :goto_0

    .line 1051
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1053
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1054
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSetMinAppxBlacklist:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1045
    :cond_4
    :goto_2
    return-void
.end method

.method private initShareMenuBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1342
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1343
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1344
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initShareMenuBlacklist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareMenuBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1349
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1350
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1352
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareMenuBlacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    goto :goto_1

    .line 1353
    :catchall_0
    move-exception v3

    .line 1354
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initShareMenuBlacklist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1357
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initShareNativeConfigKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1117
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initShareNativeConfigKey...value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareNativeConfig:Z

    .line 1119
    return-void
.end method

.method private initShouldHttpsUseSpdy(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1314
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldHttpsUseSpdy:Z

    .line 1315
    return-void
.end method

.method private initShouldLoginTokenClearText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1419
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLoginTokenClearText:Z

    .line 1420
    return-void
.end method

.method private initShouldLongClickShowPanel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1430
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLongClickShowPanel:Z

    .line 1431
    return-void
.end method

.method private initSnapshot2WhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 837
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    return-void

    .line 841
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 842
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshot2WhiteList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 847
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshot2WhiteList:Ljava/util/Set;

    goto :goto_0

    .line 849
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 851
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 852
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshot2WhiteList:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 854
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 843
    :cond_4
    :goto_2
    return-void
.end method

.method private initSnapshotBlackList(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    return-void

    .line 821
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 822
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotBlackList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 827
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotBlackList:Ljava/util/Set;

    goto :goto_0

    .line 829
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 831
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 832
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotBlackList:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 823
    :cond_4
    :goto_2
    return-void
.end method

.method private initSnapshotWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    return-void

    .line 801
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 802
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotWhiteList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 807
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotWhiteList:Ljava/util/Set;

    goto :goto_0

    .line 809
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 811
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 812
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotWhiteList:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 803
    :cond_4
    :goto_2
    return-void
.end method

.method private initStartPreload(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1441
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mStartPreload:Z

    .line 1442
    return-void
.end method

.method private initSupportWebviewConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1249
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebview:Z

    .line 1250
    return-void
.end method

.method private initSupportedInternalApiList(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1196
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1197
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1198
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initSupportedInternalApiList..valueArray is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedInternalApiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1203
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1204
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1206
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedInternalApiList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    goto :goto_1

    .line 1207
    :catchall_0
    move-exception v3

    .line 1208
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSupportedInternalApiList...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initSupportedWebviewApiList(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    return-void

    .line 1223
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1224
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 1225
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initSupportedWebviewApiList..valueArray is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    return-void

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebviewApiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1230
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1231
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1233
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebviewApiList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    goto :goto_1

    .line 1234
    :catchall_0
    move-exception v3

    .line 1235
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSupportedWebviewApiList...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1239
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private initTaoBaoAppInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "taTaoBaoAppInfo"    # Ljava/lang/String;

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    return-void

    .line 861
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 862
    .local v0, "taoBaoAppInfoMap":Ljava/util/Map;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 864
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 865
    .local v3, "appInfo":Ljava/lang/Object;
    move-object v3, v4

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_1

    .line 868
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 869
    .local v4, "appId":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "appInfo":Ljava/lang/Object;
    .end local v4    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 871
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    .line 872
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->taoBaoAppInfo:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    .end local v0    # "taoBaoAppInfoMap":Ljava/util/Map;
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initTelephonyNameMCCMNC(Ljava/lang/String;)V
    .locals 7
    .param p1, "taNameMCCMNC"    # Ljava/lang/String;

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 591
    .local v0, "mTelephonyNameMCCMNCTmp":Ljava/util/HashMap;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 592
    .local v3, "jsobj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 593
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 594
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 595
    .local v4, "carrierName":Ljava/lang/Object;
    move-object v4, v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 598
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 599
    .local v5, "simID":Ljava/lang/String;
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "carrierName":Ljava/lang/Object;
    .end local v5    # "simID":Ljava/lang/String;
    goto :goto_0

    .line 601
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTelephonyNameMCCMNC:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v0    # "mTelephonyNameMCCMNCTmp":Ljava/util/HashMap;
    .end local v3    # "jsobj":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initTemplateAppWaitTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    return-void

    .line 1776
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1777
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1778
    const-string/jumbo v0, "time"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTemplateAppWaitTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void

    .line 1780
    :catchall_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTemplateAppWaitTime..e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initTinyFavoriteTipAB(Ljava/lang/String;)V
    .locals 2
    .param p1, "taFavoriteTipAB"    # Ljava/lang/String;

    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    return-void

    .line 557
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyFavoriteTipAB:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initTinyShareDefaultTemplateBlackList(Ljava/lang/String;)V
    .locals 2
    .param p1, "taShareTemplateBlist"    # Ljava/lang/String;

    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyShareDefaultTemplateBlackList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initTradePaySwitch(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v1, "initTradePaySwitch..value is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1132
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTradePayCheck:Z

    .line 1133
    return-void
.end method

.method private initUcFailFallbackAppBlacklist(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    return-void

    .line 741
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 742
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUcFailFallbackAppSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 747
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUcFailFallbackAppSet:Ljava/util/Set;

    goto :goto_0

    .line 749
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 751
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 752
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUcFailFallbackAppSet:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 754
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 743
    :cond_4
    :goto_2
    return-void
.end method

.method private initUpdateMenuInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1750
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUpdateMenuInterval:Ljava/lang/String;

    .line 1751
    return-void
.end method

.method private initUseCustomShareContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "taUseCustomShareContent"    # Ljava/lang/String;

    .line 633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    return-void

    .line 637
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUSeCustomShareContent:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initUseNewDebugServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1001
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseNewDebugServer:Z

    .line 1003
    return-void

    .line 1005
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    return-void

    .line 1008
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseNewDebugServer:Z

    .line 1009
    return-void
.end method

.method private initUseOldMenuStyleAppIds(Ljava/lang/String;)V
    .locals 4
    .param p1, "appIdList"    # Ljava/lang/String;

    .line 1608
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initUseOldMenuStyleAppIds...rules="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1612
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseOldMenuStyleAppids:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    return-void

    .line 1613
    :catchall_0
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initUseOldMenuStyleAppIds...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initUseRpcForQrCodeShare(Ljava/lang/String;)V
    .locals 1
    .param p1, "useRpcMerge"    # Ljava/lang/String;

    .line 974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    return-void

    .line 977
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->useRpcMergeForQrCodeShare:Z

    .line 978
    return-void
.end method

.method private initUseSysWebView(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 931
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseSysWebView:Z

    .line 935
    return-void
.end method

.method private initUseTinyAppManagerProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1012
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinyAppManagerProcess:Z

    .line 1016
    return-void
.end method

.method private initUseTinySharePadBlackList(Ljava/lang/String;)V
    .locals 2
    .param p1, "taUseTinySharePadBlackList"    # Ljava/lang/String;

    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    return-void

    .line 568
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinySharePadBlackList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initUseTlsWhiteList(Ljava/lang/String;)V
    .locals 7
    .param p1, "whiteList"    # Ljava/lang/String;

    const-string v0, "initTlsWhiteList...e="

    .line 1572
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    const/4 v1, 0x0

    goto :goto_0

    .line 1573
    :catchall_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "all"

    if-eqz v2, :cond_0

    .line 1578
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initTlsWhiteList..config is empty"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1583
    return-void

    .line 1581
    :catchall_1
    move-exception v1

    .line 1582
    .restart local v1    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 1586
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1587
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 1597
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 1598
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1600
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1603
    goto :goto_2

    .line 1601
    :catchall_2
    move-exception v4

    .line 1602
    .local v4, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1605
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 1588
    .end local v2    # "length":I
    :cond_3
    :goto_3
    sget-object v2, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v4, "initTlsWhiteList..value is empty"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1593
    return-void

    .line 1591
    :catchall_3
    move-exception v2

    .line 1592
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private initUseWholePkglist(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    return-void

    .line 781
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 782
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseWholePackageAppIdSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 787
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseWholePackageAppIdSet:Ljava/util/Set;

    goto :goto_0

    .line 789
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 791
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 792
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseWholePackageAppIdSet:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 794
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 783
    :cond_4
    :goto_2
    return-void
.end method

.method private initV8WorkerAppWhiteList(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mV8WorkerAppWhiteList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v8"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    .line 940
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 942
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 943
    .local v3, "id":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 944
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableV8Worker:Z

    .line 949
    return-void
.end method

.method private initWebViewJSAPIDomainWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "taWebViewJSAPIDomainWhiteList"    # Ljava/lang/String;

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    return-void

    .line 708
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->webViewJSAPIDomainWhiteList:Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private initWebViewNBAppIdWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    return-void

    .line 1880
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1881
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1885
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebViewNBAppIdList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1886
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebViewNBAppIdList:Ljava/util/Set;

    goto :goto_0

    .line 1888
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1890
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1891
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebViewNBAppIdList:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1890
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1893
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 1882
    :cond_4
    :goto_2
    return-void
.end method

.method private initWebViewShowProgress(Ljava/lang/String;)V
    .locals 1
    .param p1, "taWebViewShowProgress"    # Ljava/lang/String;

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    return-void

    .line 882
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->webViewShowProgress:Z

    .line 883
    return-void
.end method

.method private initWebviewJsapiWhitelist(Ljava/lang/String;)V
    .locals 7
    .param p1, "valueString"    # Ljava/lang/String;

    .line 1394
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1395
    .local v1, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1396
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    const-string v2, "initWebviewJsapiWhitelist..value is empty"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewJsapiWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1401
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 1402
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1404
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewJsapiWhitelist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    goto :goto_1

    .line 1405
    :catchall_0
    move-exception v3

    .line 1406
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initWebviewJsapiWhitelist...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1409
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private initWebviewOpenAppIdList(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1059
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    return-void

    .line 1063
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewOpenAppIdList:Lcom/alibaba/fastjson/JSONObject;

    .line 1064
    return-void
.end method

.method private initWorkerCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 886
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    return-void

    .line 890
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMaxWorkerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    return-void

    .line 891
    :catchall_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initWorkerCount...e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public allowedNaviToNonSubjectMiniProgram()Z
    .locals 1

    .line 1945
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNaviToNonSubjectMiniPro:Z

    return v0
.end method

.method public allowedNonSubjectLifestyle()Z
    .locals 1

    .line 1935
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAllowedNonSubjectLifestyle:Z

    return v0
.end method

.method public canInterceptBackEvent()Z
    .locals 1

    .line 1990
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCanInterceptBackEvent:Z

    return v0
.end method

.method public canStartPreload()Z
    .locals 1

    .line 2225
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mStartPreload:Z

    return v0
.end method

.method public enableTinyIgnorePermission()Z
    .locals 1

    .line 2110
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->enableTinyIgnorePermission:Z

    return v0
.end method

.method public getAboutMenuBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAboutMenuBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getAddFavoriteAlertWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2257
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddFavoriteAlertWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getAddToDesktopMenuBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2089
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAddToDesktopMenuBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getAppxRpcApiConfig()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->appxRpcApiConfig:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getAssistantPanelSwitch()Z
    .locals 1

    .line 2017
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mAssistantPanelSwitch:Z

    return v0
.end method

.method public getBarIsShowFavoriteAppIds()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mBarIsShowFavoriteAppIds:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getCloseAppPairObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2229
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCloseAppPairObject:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getCompsNeedCheckSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsNeedCheckSet:Ljava/util/Set;

    return-object v0
.end method

.method public getCompsPermissionWhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCompsPermissionWhiteList:Ljava/util/Set;

    return-object v0
.end method

.method public getCookiePartWhiteList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->cookiePartWhiteList:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getEdgeRate(Ljava/lang/String;)D
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 2364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2365
    return-wide v1

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeConfig:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 2368
    .local v3, "rate":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2370
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeConfig:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "all"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2376
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2378
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    .line 2379
    :catch_1
    move-exception v0

    .line 2380
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-wide v1
.end method

.method public getFavoriteMenuBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mFavoriteMenuBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getFavoriteSPMSwitch()Z
    .locals 1

    .line 2329
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->spmTAPSwitch:Z

    return v0
.end method

.method public getFavoriteSynchronisedTime()J
    .locals 2

    .line 2305
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteSynchronisedTime:J

    return-wide v0
.end method

.method public getFavoriteUseRpc()Z
    .locals 1

    .line 2313
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->favoriteUseRpc:Z

    return v0
.end method

.method public getH5TransferTinyArray()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2176
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mH5TransferTinyArray:Ljava/util/Set;

    return-object v0
.end method

.method public getHttpDomainBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2206
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->httpDomainBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getHttpsUseSpdyBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mHttpsUseSpdyBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getInjectChInfoList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->injectChInfoList:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getIsOpenRecentAppPanelAppIds()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2333
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mIsOpenRecentAppPanelAppIds:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2461
    .local v1, "keyList":Ljava/util/ArrayList;
    move-object v1, v0

    const-string/jumbo v2, "ta_internalAPIList"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    const-string/jumbo v0, "ta_webviewAppIdWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    const-string/jumbo v0, "ta_favoriteMenuBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    const-string/jumbo v0, "ta_tradePayCheck"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    const-string/jumbo v0, "ta_canUseWebview"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    const-string/jumbo v0, "ta_canInterceptBack"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2467
    const-string/jumbo v0, "ta_webviewJsapiList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2468
    const-string/jumbo v0, "ta_navigateWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    const-string/jumbo v0, "ta_permissionDialogSwitch"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    const-string/jumbo v0, "ta_shareMenuBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    const-string/jumbo v0, "ta_addToDesktopMenuBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2472
    const-string/jumbo v0, "ta_longClickShowPanel"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    const-string/jumbo v0, "ta_permissionDialogBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    const-string/jumbo v0, "ta_checkLifestyleRelation"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    const-string/jumbo v0, "ta_checkNavigateRelation"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    const-string/jumbo v0, "ta_goSPDY"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    const-string/jumbo v0, "ta_goSPDYBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2478
    const-string/jumbo v0, "ta_assistantPanelSwitch"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2479
    const-string/jumbo v0, "ta_shouldLoginTokenClearText"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    const-string/jumbo v0, "ta_oldLaunchAnimatorList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2482
    const-string v0, "h5_white_jsapiList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    const-string v0, "h5_enableTinyIgnorePermission"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    const-string/jumbo v0, "use_native_share_cfg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2485
    const-string/jumbo v0, "ta_scene_cfg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2486
    const-string/jumbo v0, "ta_scene_shutdown"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2487
    const-string/jumbo v0, "ta_rpc_api_cfg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    const-string/jumbo v0, "ta_appx_rpc_whitelist_cfg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    const-string/jumbo v0, "ta_use_new_debug_server"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2490
    const-string/jumbo v0, "ta_useTinyAppManagerProcess"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    const-string/jumbo v0, "ta_h5TransferTiny"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2492
    const-string/jumbo v0, "ta_setMinAppxBlacklist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2493
    const-string/jumbo v0, "ta_webviewOpenAppIdList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    const-string/jumbo v0, "ta_navigate_alipay_pages"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    const-string/jumbo v0, "ta_hide_about_item_blacklist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2496
    const-string/jumbo v0, "remote_debug_mode"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
    const-string/jumbo v0, "ta_qrcodeshare_use_rpcservice"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    const-string/jumbo v0, "ta_navigate_app_debug"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    const-string/jumbo v0, "ta_http_domain_blacklist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    const-string/jumbo v0, "ta_useSysWebView"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2501
    const-string/jumbo v0, "ta_webview_sp"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2502
    const-string/jumbo v0, "ta_maxWorkerCount"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    const-string/jumbo v0, "ta_launch_app_jsapi_blacklist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    const-string/jumbo v0, "ta_startPreload"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    const-string/jumbo v0, "ta_closeAppPair"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    const-string/jumbo v0, "ta_taobao_app_info"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    const-string/jumbo v0, "ta_cookie_part_wl"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    const-string/jumbo v0, "ta_fallbackApp"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2509
    const-string/jumbo v0, "ta_add_favorite_alert_whitelist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    const-string/jumbo v0, "ta_useTlsWhitelist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    const-string/jumbo v0, "ta_close_webviewSchemaWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    const-string/jumbo v0, "ta_useWholePkg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    const-string/jumbo v0, "ta_renderJsapiBList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    const-string/jumbo v0, "ta_injectChInfo"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    const-string/jumbo v0, "ta_embedwebview_white_domain_list"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    const-string/jumbo v0, "ta_navi_is_new_menu"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    const-string/jumbo v0, "ta_navi_is_show_favorite"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2518
    const-string/jumbo v0, "ta_navibar_poptip_max_count"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    const-string/jumbo v0, "ta_favoriteSynchronisedTime"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    const-string/jumbo v0, "ta_maxAddFavoriteSize"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    const-string/jumbo v0, "ta_favoriteUseRpc"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    const-string/jumbo v0, "ta_queryAllFavoriteCacheTime"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    const-string/jumbo v0, "ta_preInitTAFCache"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    const-string/jumbo v0, "ta_queryEmergency"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    const-string/jumbo v0, "ta_spmTAFSwitch"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    const-string/jumbo v0, "ta_is_open_recent_app_panel"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    const-string/jumbo v0, "ta_is_update_menu_interval"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2529
    const-string/jumbo v0, "ta_enableModuleApp"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2530
    const-string/jumbo v0, "ta_is_update_menu_interval_list"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    const-string/jumbo v0, "ta_edge_cfg"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    const-string/jumbo v0, "ta_limitControlList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2533
    const-string/jumbo v0, "ta_requestProxyList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    const-string/jumbo v0, "ta_compsNeedCheck"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    const-string/jumbo v0, "ta_compsPermissionWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    const-string/jumbo v0, "ta_useCustomShareContent"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    const-string/jumbo v0, "ta_webviewNBAppIdList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2538
    const-string/jumbo v0, "ta_show_about_item_whitelist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    const-string/jumbo v0, "ta_v8AppWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    const-string/jumbo v0, "ta_useTinySharePadBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    const-string/jumbo v0, "ta_share_template_blist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2542
    const-string/jumbo v0, "ta_favorite_tip_ab"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2543
    const-string/jumbo v0, "ta_snapshotWhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    const-string/jumbo v0, "ta_snapshotBlackList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2545
    const-string/jumbo v0, "ta_snapshot2WhiteList"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    const-string/jumbo v0, "ta_telephony_name_pair_mccmnc"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    const-string/jumbo v0, "ta_preferConfigWaitTime"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    const-string/jumbo v0, "ta_root_device_whitelist"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    return-object v1
.end method

.method public getLaunchAppJsapiBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLaunchAppJsapiBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getLimitControlSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mLimitControlSet:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxAddFavoriteSize()I
    .locals 1

    .line 2309
    iget v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxAddFavoriteSize:I

    return v0
.end method

.method public getMaxFavoriteTipMaxCount()I
    .locals 1

    .line 2301
    iget v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->maxFavoriteTipMaxCount:I

    return v0
.end method

.method public getMaxWorkerCount()I
    .locals 1

    .line 2214
    iget v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMaxWorkerCount:I

    return v0
.end method

.method public getMenuConfigUpdateInterval(Ljava/lang/String;)J
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 2345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_0

    .line 2346
    return-wide v1

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMenuConfigUpdateInterval:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v3, 0x0

    .line 2349
    .local v3, "value":Ljava/lang/Long;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 2350
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mMenuConfigUpdateInterval:Ljava/util/Map;

    const-string v4, "all"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2353
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 2354
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2356
    :cond_2
    return-wide v1
.end method

.method public getNaviToMiniProgramWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1954
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mNaviToMiniProgramWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public getNavigateToAlipayPageRules()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mNavigateToAlipayPageRules:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getOldLaunchAnimatorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mOldLaunchAnimatorList:Ljava/util/List;

    return-object v0
.end method

.method public getPermissionDialogSwitch()Z
    .locals 1

    .line 2008
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogSwitch:Z

    return v0
.end method

.method public getPermissionDialogWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1999
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mPermissionDialogWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public getPreInitTAFCache()Z
    .locals 1

    .line 2321
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->preInitTAFCache:Z

    return v0
.end method

.method public getQueryAllFavoriteCacheTime()J
    .locals 2

    .line 2317
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryAllFavoriteCacheTime:J

    return-wide v0
.end method

.method public getQueryEmergency()Z
    .locals 1

    .line 2325
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->queryEmergency:Z

    return v0
.end method

.method public getRenderJsApiBlacklist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRenderJsApiBlacklist:Ljava/util/Set;

    return-object v0
.end method

.method public getRequestProxySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2391
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRequestProxySet:Ljava/util/Set;

    return-object v0
.end method

.method public getRootCheckWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2450
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mRootCheckWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getRpcApiConfig()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->rpcApiConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getSceneConfig()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getSceneTransformShutdown()Z
    .locals 1

    .line 2148
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->sceneTransformShutdown:Z

    return v0
.end method

.method public getSetMinAppxBlacklist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSetMinAppxBlacklist:Ljava/util/Set;

    return-object v0
.end method

.method public getShareMenuBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareMenuBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshot2WhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshot2WhiteList:Ljava/util/Set;

    return-object v0
.end method

.method public getSnapshotBlackList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2273
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotBlackList:Ljava/util/Set;

    return-object v0
.end method

.method public getSnapshotWhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSnapshotWhiteList:Ljava/util/Set;

    return-object v0
.end method

.method public getSupportedInternalApiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedInternalApiList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedWebviewApiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1972
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebviewApiList:Ljava/util/List;

    return-object v0
.end method

.method public getTaoBaoAppInfo(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 2237
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2238
    .local v0, "defValue":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->taoBaoAppInfo:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->taoBaoAppInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    .line 2242
    .local v2, "appInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 2243
    return-object v0

    .line 2245
    :cond_1
    return-object v2

    .line 2239
    .end local v2    # "appInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTelephonyNameMCCMNC()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2445
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTelephonyNameMCCMNC:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTemplateAppWaitTime()I
    .locals 1

    .line 2341
    iget v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTemplateAppWaitTime:I

    return v0
.end method

.method public getTinyAppMenuAboutMsgWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2411
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->tinyAppMenuAboutMsgWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getTinyShareDefaultTemplateBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2419
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyShareDefaultTemplateBlackList:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getUSeCustomShareContent()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUSeCustomShareContent:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getUcFailFallbackAppBlacklist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUcFailFallbackAppSet:Ljava/util/Set;

    return-object v0
.end method

.method public getUpdateMenuInterval()Ljava/lang/String;
    .locals 1

    .line 2337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUpdateMenuInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getUseOldMenuStyleAppids()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseOldMenuStyleAppids:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getUseTinySharePadBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2415
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinySharePadBlackList:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getUseTlsWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2261
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTlsWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getUseWholePackageAppIdSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseWholePackageAppIdSet:Ljava/util/Set;

    return-object v0
.end method

.method public getWebViewJSAPIDomainWhiteList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->webViewJSAPIDomainWhiteList:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getWebViewNBAppIdList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebViewNBAppIdList:Ljava/util/Set;

    return-object v0
.end method

.method public getWebviewJsapiWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewJsapiWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public getWebviewOpenAppIdList()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mWebviewOpenAppIdList:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getWhiteJsApiJsonArray()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->whiteJsApiJsonArray:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public isCloseWebviewSchema()Z
    .locals 1

    .line 2233
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mCloseWebviewSchema:Z

    return v0
.end method

.method public isEdgeEnable()Z
    .locals 1

    .line 2360
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEdgeEnable:Z

    return v0
.end method

.method public isEnableTemplateApp()Z
    .locals 1

    .line 2188
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableTemplateApp:Z

    return v0
.end method

.method public isNavigateAppDebug()Z
    .locals 1

    .line 2164
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isNavigateAppDebug:Z

    return v0
.end method

.method public isSupportedWebview()Z
    .locals 1

    .line 1981
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportedWebview:Z

    return v0
.end method

.method public isTinyFavoriteTipATest(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 2424
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyFavoriteTipAB:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 2425
    .local v3, "aTest":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v2

    const-string v4, "all"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2426
    return v1

    .line 2428
    .end local v3    # "aTest":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTinyFavoriteTipAB:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "B"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 2429
    .local v0, "bTest":Lcom/alibaba/fastjson/JSONArray;
    move-object v0, v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2430
    return v5

    .line 2432
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2433
    return v1

    .line 2435
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 2436
    return v5

    .line 2438
    :cond_3
    return v1

    .line 2439
    .end local v0    # "bTest":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v2

    .line 2440
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public isUseNativeShareSwitch()Z
    .locals 1

    .line 2140
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShareNativeConfig:Z

    return v0
.end method

.method public isUseNewDebugServer()Z
    .locals 1

    .line 2168
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseNewDebugServer:Z

    return v0
.end method

.method public isUseRpcMergeForQrCodeShare()Z
    .locals 1

    .line 2160
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->useRpcMergeForQrCodeShare:Z

    return v0
.end method

.method public isUseSysWebView()Z
    .locals 1

    .line 2114
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseSysWebView:Z

    return v0
.end method

.method public isUseTinyAppManagerProcess()Z
    .locals 1

    .line 2172
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mUseTinyAppManagerProcess:Z

    return v0
.end method

.method public isV8WorkerAvailableForApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 2122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mV8WorkerAppWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public isV8WorkerEnabled()Z
    .locals 1

    .line 2118
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mEnableV8Worker:Z

    return v0
.end method

.method public isWebViewShowProgress()Z
    .locals 1

    .line 2210
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->webViewShowProgress:Z

    return v0
.end method

.method public onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2554
    const-string/jumbo v0, "ta_internalAPIList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportedInternalApiList(Ljava/lang/String;)V

    return-void

    .line 2556
    :cond_0
    const-string/jumbo v0, "ta_webviewAppIdWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebviewJsapiWhitelist(Ljava/lang/String;)V

    return-void

    .line 2558
    :cond_1
    const-string/jumbo v0, "ta_favoriteMenuBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2559
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteMenuBlacklist(Ljava/lang/String;)V

    return-void

    .line 2560
    :cond_2
    const-string/jumbo v0, "ta_tradePayCheck"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2561
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTradePaySwitch(Ljava/lang/String;)V

    return-void

    .line 2562
    :cond_3
    const-string/jumbo v0, "ta_canUseWebview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2563
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportWebviewConfig(Ljava/lang/String;)V

    return-void

    .line 2564
    :cond_4
    const-string/jumbo v0, "ta_canInterceptBack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2565
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCanInterceptBackConfig(Ljava/lang/String;)V

    return-void

    .line 2566
    :cond_5
    const-string/jumbo v0, "ta_webviewJsapiList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2567
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSupportedWebviewApiList(Ljava/lang/String;)V

    return-void

    .line 2568
    :cond_6
    const-string/jumbo v0, "ta_navigateWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2569
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNaviToMiniProgramWhitelist(Ljava/lang/String;)V

    return-void

    .line 2570
    :cond_7
    const-string/jumbo v0, "ta_permissionDialogSwitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2571
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPermissionDialogSwitch(Ljava/lang/String;)V

    return-void

    .line 2572
    :cond_8
    const-string/jumbo v0, "ta_shareMenuBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2573
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShareMenuBlacklist(Ljava/lang/String;)V

    return-void

    .line 2574
    :cond_9
    const-string/jumbo v0, "ta_addToDesktopMenuBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2575
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAddToDesktopMenuBlacklist(Ljava/lang/String;)V

    return-void

    .line 2576
    :cond_a
    const-string/jumbo v0, "ta_longClickShowPanel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2577
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldLongClickShowPanel(Ljava/lang/String;)V

    return-void

    .line 2578
    :cond_b
    const-string/jumbo v0, "ta_permissionDialogBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2579
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPermissionDialogWhitelist(Ljava/lang/String;)V

    return-void

    .line 2580
    :cond_c
    const-string/jumbo v0, "ta_checkLifestyleRelation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2581
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAllowedNonSubjectLifestyle(Ljava/lang/String;)V

    return-void

    .line 2582
    :cond_d
    const-string/jumbo v0, "ta_checkNavigateRelation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2583
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAllowedNaviToNonSubjectMiniProgram(Ljava/lang/String;)V

    return-void

    .line 2584
    :cond_e
    const-string/jumbo v0, "ta_goSPDY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2585
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldHttpsUseSpdy(Ljava/lang/String;)V

    return-void

    .line 2586
    :cond_f
    const-string/jumbo v0, "ta_goSPDYBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2587
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initHttpsUseSpdyBlacklist(Ljava/lang/String;)V

    return-void

    .line 2588
    :cond_10
    const-string/jumbo v0, "ta_assistantPanelSwitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2589
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAssistantPanelSwitch(Ljava/lang/String;)V

    return-void

    .line 2590
    :cond_11
    const-string/jumbo v0, "ta_shouldLoginTokenClearText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2591
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShouldLoginTokenClearText(Ljava/lang/String;)V

    return-void

    .line 2592
    :cond_12
    const-string/jumbo v0, "ta_oldLaunchAnimatorList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2593
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initOldLaunchAnimatorList(Ljava/lang/String;)V

    return-void

    .line 2594
    :cond_13
    const-string v0, "h5_white_jsapiList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2595
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initJsapiWhitelist(Ljava/lang/String;)V

    return-void

    .line 2596
    :cond_14
    const-string v0, "h5_enableTinyIgnorePermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2597
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEnableTinyIgnorePermission(Ljava/lang/String;)V

    return-void

    .line 2598
    :cond_15
    const-string/jumbo v0, "use_native_share_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2599
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initShareNativeConfigKey(Ljava/lang/String;)V

    return-void

    .line 2600
    :cond_16
    const-string/jumbo v0, "ta_scene_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2601
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSceneConfig(Ljava/lang/String;)V

    return-void

    .line 2602
    :cond_17
    const-string/jumbo v0, "ta_scene_shutdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2603
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSceneTransformShutdown(Ljava/lang/String;)V

    return-void

    .line 2604
    :cond_18
    const-string/jumbo v0, "ta_rpc_api_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2605
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRpcApiConfig(Ljava/lang/String;)V

    return-void

    .line 2606
    :cond_19
    const-string/jumbo v0, "ta_appx_rpc_whitelist_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2607
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAppxRpcApiConfig(Ljava/lang/String;)V

    return-void

    .line 2608
    :cond_1a
    const-string/jumbo v0, "ta_use_new_debug_server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2609
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseNewDebugServer(Ljava/lang/String;)V

    return-void

    .line 2610
    :cond_1b
    const-string/jumbo v0, "ta_useTinyAppManagerProcess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2611
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTinyAppManagerProcess(Ljava/lang/String;)V

    return-void

    .line 2612
    :cond_1c
    const-string/jumbo v0, "ta_h5TransferTiny"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2613
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initH5TransferTiny(Ljava/lang/String;)V

    return-void

    .line 2614
    :cond_1d
    const-string/jumbo v0, "ta_setMinAppxBlacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2615
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSetMinAppxBlacklist(Ljava/lang/String;)V

    return-void

    .line 2616
    :cond_1e
    const-string/jumbo v0, "ta_webviewOpenAppIdList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2617
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebviewOpenAppIdList(Ljava/lang/String;)V

    return-void

    .line 2618
    :cond_1f
    const-string/jumbo v0, "ta_navigate_alipay_pages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2619
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNavigateAlipayPages(Ljava/lang/String;)V

    return-void

    .line 2620
    :cond_20
    const-string/jumbo v0, "ta_hide_about_item_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2621
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAboutMenuBlacklist(Ljava/lang/String;)V

    return-void

    .line 2622
    :cond_21
    const-string/jumbo v0, "remote_debug_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2623
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRemoteDebugMode(Ljava/lang/String;)V

    return-void

    .line 2624
    :cond_22
    const-string/jumbo v0, "ta_qrcodeshare_use_rpcservice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2625
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseRpcForQrCodeShare(Ljava/lang/String;)V

    return-void

    .line 2626
    :cond_23
    const-string/jumbo v0, "ta_navigate_app_debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2627
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initNavigateAppDebug(Ljava/lang/String;)V

    return-void

    .line 2628
    :cond_24
    const-string/jumbo v0, "ta_http_domain_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2629
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initHttpDomainBlackList(Ljava/lang/String;)V

    return-void

    .line 2630
    :cond_25
    const-string/jumbo v0, "ta_useSysWebView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2631
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseSysWebView(Ljava/lang/String;)V

    return-void

    .line 2632
    :cond_26
    const-string/jumbo v0, "ta_webview_sp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2633
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewShowProgress(Ljava/lang/String;)V

    return-void

    .line 2634
    :cond_27
    const-string/jumbo v0, "ta_maxWorkerCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2635
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWorkerCount(Ljava/lang/String;)V

    return-void

    .line 2636
    :cond_28
    const-string/jumbo v0, "ta_launch_app_jsapi_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2637
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initLaunchAppJspiBlacklist(Ljava/lang/String;)V

    return-void

    .line 2638
    :cond_29
    const-string/jumbo v0, "ta_taobao_app_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2639
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTaoBaoAppInfo(Ljava/lang/String;)V

    return-void

    .line 2640
    :cond_2a
    const-string/jumbo v0, "ta_startPreload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2641
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initStartPreload(Ljava/lang/String;)V

    return-void

    .line 2642
    :cond_2b
    const-string/jumbo v0, "ta_closeAppPair"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2643
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCloseAppPairs(Ljava/lang/String;)V

    return-void

    .line 2644
    :cond_2c
    const-string/jumbo v0, "ta_cookie_part_wl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2645
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCookiePartWhiteList(Ljava/lang/String;)V

    return-void

    .line 2646
    :cond_2d
    const-string/jumbo v0, "ta_fallbackApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2647
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUcFailFallbackAppBlacklist(Ljava/lang/String;)V

    return-void

    .line 2648
    :cond_2e
    const-string/jumbo v0, "ta_add_favorite_alert_whitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2649
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initAddFavoriteAlertWhiteList(Ljava/lang/String;)V

    return-void

    .line 2650
    :cond_2f
    const-string/jumbo v0, "ta_useTlsWhitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2651
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTlsWhiteList(Ljava/lang/String;)V

    return-void

    .line 2652
    :cond_30
    const-string/jumbo v0, "ta_close_webviewSchemaWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2653
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCloseWebviewSchema(Ljava/lang/String;)V

    return-void

    .line 2654
    :cond_31
    const-string/jumbo v0, "ta_useWholePkg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2655
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseWholePkglist(Ljava/lang/String;)V

    return-void

    .line 2656
    :cond_32
    const-string/jumbo v0, "ta_renderJsapiBList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2657
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRenderJsApiBlacklist(Ljava/lang/String;)V

    return-void

    .line 2658
    :cond_33
    const-string/jumbo v0, "ta_injectChInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2659
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initInjectChInfoList(Ljava/lang/String;)V

    return-void

    .line 2660
    :cond_34
    const-string/jumbo v0, "ta_embedwebview_white_domain_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2661
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewJSAPIDomainWhiteList(Ljava/lang/String;)V

    return-void

    .line 2662
    :cond_35
    const-string/jumbo v0, "ta_navi_is_new_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2663
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseOldMenuStyleAppIds(Ljava/lang/String;)V

    return-void

    .line 2664
    :cond_36
    const-string/jumbo v0, "ta_navi_is_show_favorite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2665
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initBarIsShowFavoriteAppIds(Ljava/lang/String;)V

    return-void

    .line 2666
    :cond_37
    const-string/jumbo v0, "ta_navibar_poptip_max_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2667
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initBarShowFavoriteTipsMaxCount(Ljava/lang/String;)V

    return-void

    .line 2668
    :cond_38
    const-string/jumbo v0, "ta_favoriteSynchronisedTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2669
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteSynchronisedTime(Ljava/lang/String;)V

    return-void

    .line 2670
    :cond_39
    const-string/jumbo v0, "ta_favoriteUseRpc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2671
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteUseRpc(Ljava/lang/String;)V

    return-void

    .line 2672
    :cond_3a
    const-string/jumbo v0, "ta_maxAddFavoriteSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2673
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMaxAddFavoriteSize(Ljava/lang/String;)V

    return-void

    .line 2674
    :cond_3b
    const-string/jumbo v0, "ta_queryAllFavoriteCacheTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2675
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteGetAllCacheTime(Ljava/lang/String;)V

    return-void

    .line 2676
    :cond_3c
    const-string/jumbo v0, "ta_queryEmergency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2677
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteQueryEmergency(Ljava/lang/String;)V

    return-void

    .line 2678
    :cond_3d
    const-string/jumbo v0, "ta_spmTAFSwitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2679
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initFavoriteSPMSwitch(Ljava/lang/String;)V

    return-void

    .line 2680
    :cond_3e
    const-string/jumbo v0, "ta_preInitTAFCache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2681
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initPreInitTAFCache(Ljava/lang/String;)V

    return-void

    .line 2682
    :cond_3f
    const-string/jumbo v0, "ta_is_open_recent_app_panel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2683
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initIsOpenRecentAppPanelAppIds(Ljava/lang/String;)V

    return-void

    .line 2684
    :cond_40
    const-string/jumbo v0, "ta_is_update_menu_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2685
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUpdateMenuInternal(Ljava/lang/String;)V

    return-void

    .line 2686
    :cond_41
    const-string/jumbo v0, "ta_enableModuleApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2687
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEnableTemplateApp(Ljava/lang/String;)V

    return-void

    .line 2688
    :cond_42
    const-string/jumbo v0, "ta_is_update_menu_interval_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2689
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMenuConfigUpdateInterval(Ljava/lang/String;)V

    return-void

    .line 2690
    :cond_43
    const-string/jumbo v0, "ta_edge_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2691
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initEdgeConfig(Ljava/lang/String;)V

    return-void

    .line 2692
    :cond_44
    const-string/jumbo v0, "ta_limitControlList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2693
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initLimitControlSet(Ljava/lang/String;)V

    return-void

    .line 2694
    :cond_45
    const-string/jumbo v0, "ta_requestProxyList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2695
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRequestProxySet(Ljava/lang/String;)V

    return-void

    .line 2696
    :cond_46
    const-string/jumbo v0, "ta_compsNeedCheck"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2697
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCompsNeedCheckSet(Ljava/lang/String;)V

    return-void

    .line 2698
    :cond_47
    const-string/jumbo v0, "ta_compsPermissionWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2699
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initCompsPermissionWhiteList(Ljava/lang/String;)V

    return-void

    .line 2700
    :cond_48
    const-string/jumbo v0, "ta_useCustomShareContent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2701
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseCustomShareContent(Ljava/lang/String;)V

    return-void

    .line 2702
    :cond_49
    const-string/jumbo v0, "ta_webviewNBAppIdList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2703
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initWebViewNBAppIdWhiteList(Ljava/lang/String;)V

    return-void

    .line 2704
    :cond_4a
    const-string/jumbo v0, "ta_show_about_item_whitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2705
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initMenuAboutMsgWhiteList(Ljava/lang/String;)V

    return-void

    .line 2706
    :cond_4b
    const-string/jumbo v0, "ta_v8AppWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2707
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initV8WorkerAppWhiteList(Ljava/lang/String;)V

    return-void

    .line 2708
    :cond_4c
    const-string/jumbo v0, "ta_useTinySharePadBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2709
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initUseTinySharePadBlackList(Ljava/lang/String;)V

    return-void

    .line 2710
    :cond_4d
    const-string/jumbo v0, "ta_share_template_blist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2711
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTinyShareDefaultTemplateBlackList(Ljava/lang/String;)V

    return-void

    .line 2712
    :cond_4e
    const-string/jumbo v0, "ta_favorite_tip_ab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2713
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTinyFavoriteTipAB(Ljava/lang/String;)V

    return-void

    .line 2714
    :cond_4f
    const-string/jumbo v0, "ta_snapshotWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2715
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshotWhiteList(Ljava/lang/String;)V

    return-void

    .line 2716
    :cond_50
    const-string/jumbo v0, "ta_snapshotBlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2717
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshotBlackList(Ljava/lang/String;)V

    return-void

    .line 2718
    :cond_51
    const-string/jumbo v0, "ta_snapshot2WhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2719
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initSnapshot2WhiteList(Ljava/lang/String;)V

    return-void

    .line 2720
    :cond_52
    const-string/jumbo v0, "ta_telephony_name_pair_mccmnc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2721
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTelephonyNameMCCMNC(Ljava/lang/String;)V

    return-void

    .line 2722
    :cond_53
    const-string/jumbo v0, "ta_preferConfigWaitTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2723
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initTemplateAppWaitTime(Ljava/lang/String;)V

    return-void

    .line 2724
    :cond_54
    const-string/jumbo v0, "ta_root_device_whitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2725
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->initRootCheckWhiteList(Ljava/lang/String;)V

    .line 2727
    :cond_55
    return-void
.end method

.method public shouldHttpsUseSpdy()Z
    .locals 1

    .line 2026
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldHttpsUseSpdy:Z

    return v0
.end method

.method public shouldLoginTokenUseClearText()Z
    .locals 1

    .line 2071
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLoginTokenClearText:Z

    return v0
.end method

.method public shouldLongClickShowPanel()Z
    .locals 1

    .line 2098
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mShouldLongClickShowPanel:Z

    return v0
.end method

.method public supportRemoteDebugMode()Z
    .locals 1

    .line 2197
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mSupportRemoteDebugMode:Z

    return v0
.end method

.method public tradePayCheck()Z
    .locals 1

    .line 1926
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->mTradePayCheck:Z

    return v0
.end method

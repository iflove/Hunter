.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Param;
.super Ljava/lang/Object;
.source "H5Param.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5Param$OptionType;,
        Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    }
.end annotation


# static fields
.field public static final ABOUT_BLANK:Ljava/lang/String; = "about:blank"

.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALLOWS_BOUNCE_VERTICAL:Ljava/lang/String; = "abv"

.field public static final ANTI_PHISHING:Ljava/lang/String; = "ap"

.field public static final APPX_PRELOAD_SUCCESS:Ljava/lang/String; = "appx_preload_success"

.field public static final APP_CHANNEL:Ljava/lang/String; = "app_channel"

.field public static final APP_FROM:Ljava/lang/String; = "appFrom"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final APP_MAP_HOST:I = 0x1

.field public static final APP_OFFLINE:I = 0x0

.field public static final APP_ONLINE:I = 0x2

.field public static final APP_SUB_URL:Ljava/lang/String; = "subUrl"

.field public static final APP_TYPE:Ljava/lang/String; = "appType"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final ASYNCINDEX:Ljava/lang/String; = "asyncIndex"

.field public static final AUTH_CODE_KEY:Ljava/lang/String; = "nebulaAuthCodeKey"

.field public static final AUTO_SHARE:Ljava/lang/String; = "autoShare"

.field public static final BACKBTN_IMAGE:Ljava/lang/String; = "bbi"

.field public static final BACKBTN_TEXTCOLOR:Ljava/lang/String; = "bbtc"

.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "bc"

.field public static final BACKGROUND_IMAGE_COLOR:Ljava/lang/String; = "backgroundImageColor"

.field public static final BACKGROUND_IMAGE_URL:Ljava/lang/String; = "backgroundImageUrl"

.field public static final BACK_BEHAVIOR:Ljava/lang/String; = "bb"

.field public static final BAR_BUTTON_THEME:Ljava/lang/String; = "bbt"

.field public static final BGIC:Ljava/lang/String; = "bgic"

.field public static final BGIU:Ljava/lang/String; = "bgiu"

.field public static final BIZ_SCENARIO:Ljava/lang/String; = "bz"

.field public static final BOUNCE_TOP_COLOR:Ljava/lang/String; = "btc"

.field public static final CAN_DESTROY:Ljava/lang/String; = "cd"

.field public static final CAN_PULL_DOWN:Ljava/lang/String; = "pd"

.field public static final CDN_HOST:Ljava/lang/String; = "cdnBaseUrl"

.field public static final CHECK_SUB_URL_FAILED:Ljava/lang/String; = "check_sub_url_failed"

.field public static final CHINFO:Ljava/lang/String; = "chInfo"

.field public static final CHINFO_MUTABLE:Ljava/lang/String; = "chInfoMutable"

.field public static final CLIENT_CONFIG:Ljava/lang/String; = "clientConfig"

.field public static final CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final CLOSE_AFTER_PAY_FINISH:Ljava/lang/String; = "cf"

.field public static final CLOSE_BUTTON_TEXT:Ljava/lang/String; = "cb"

.field public static final CREATEPAGESENCE:Ljava/lang/String; = "createPageSence"

.field public static final CREATE_PAGE:Ljava/lang/String; = "createPage"

.field public static final CUBE_CACHE_USE_QUERY:Ljava/lang/String; = "spaCacheUseQuery"

.field public static final CUBE_SPA_ENABLECUBE:Ljava/lang/String; = "enableCube"

.field public static final CUBE_SPA_RUNTIMEREQUIERD:Ljava/lang/String; = "cubeRuntimeRequired"

.field public static final CUSTOM_PARAMS:Ljava/lang/String; = "customParams"

.field public static final DEFAULT_BACKGROUND_IMAGE_COLOR:I = -0x1

.field public static final DEFAULT_BACKGROUND_IMAGE_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_ALLOWS_BOUNCE_VERTICAL:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_ANTI_PHISHING:Z = true

.field public static final DEFAULT_LONG_BACKBTN_IMAGE:Ljava/lang/String; = "default"

.field public static final DEFAULT_LONG_BACKBTN_TEXTCOLOR:I = -0x1000000

.field public static final DEFAULT_LONG_BACKGROUND_COLOR:I = -0x1

.field public static final DEFAULT_LONG_BACK_BEHAVIOR:Ljava/lang/String; = "back"

.field public static final DEFAULT_LONG_BAR_BUTTON_THEME:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_BIZ_SCENARIO:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_BOUNCE_TOP_COLOR:I = -0xa0a07

.field public static final DEFAULT_LONG_CAN_PULL_DOWN:Z = true

.field public static final DEFAULT_LONG_CLOSE_AFTER_PAY_FINISH:Z = true

.field public static final DEFAULT_LONG_CLOSE_BUTTON_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_ENABLE_PROXY:Z = false

.field public static final DEFAULT_LONG_ENABLE_SCROLLBAR:Z = true

.field public static final DEFAULT_LONG_ENABLE_TABBAR:Ljava/lang/String; = "default"

.field public static final DEFAULT_LONG_FULLSCREEN:Z = false

.field public static final DEFAULT_LONG_INTERCEPT_JUMP:Z = true

.field public static final DEFAULT_LONG_LANDSCAPE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NAV_SEARCH_BAR_MAX_LENGTH:I = 0x0

.field public static final DEFAULT_LONG_NAV_SEARCH_BAR_PLACEHOLDER:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NAV_SEARCH_BAR_SEARCH_PLACEHOLDER:Z = false

.field public static final DEFAULT_LONG_NAV_SEARCH_BAR_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NAV_SEARCH_BAR_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NB_APP_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NB_OFFLINE:Ljava/lang/String; = "async"

.field public static final DEFAULT_LONG_NB_OFFMODE:Ljava/lang/String; = "force"

.field public static final DEFAULT_LONG_NB_UPDATE:Ljava/lang/String; = "async"

.field public static final DEFAULT_LONG_NB_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_NB_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_OB_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_PREFETCH_LOCATION:Z = false

.field public static final DEFAULT_LONG_PRESSO_LOGIN:Ljava/lang/String; = "YES"

.field public static final DEFAULT_LONG_PRESSO_LOGIN_BINDINGPAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_PRESSO_LOGIN_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_PREVENT_AUTOLOGINLOOP:Z = false

.field public static final DEFAULT_LONG_PULL_REFRESH:Z = false

.field public static final DEFAULT_LONG_READ_TITLE:Z = true

.field public static final DEFAULT_LONG_SAFE_PAY_CONTEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_SAFE_PAY_ENABLE:Z = true

.field public static final DEFAULT_LONG_SHARETOKENPARAMS:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_SHOW_DOMAIN:Z = true

.field public static final DEFAULT_LONG_SHOW_FAVORITES:Z = false

.field public static final DEFAULT_LONG_SHOW_LOADING:Z = false

.field public static final DEFAULT_LONG_SHOW_OPTION_MENU:Z = true

.field public static final DEFAULT_LONG_SHOW_PROGRESS:Z = false

.field public static final DEFAULT_LONG_SHOW_REPORT_BTN:Z = false

.field public static final DEFAULT_LONG_SHOW_TITLE_BAR:Z = true

.field public static final DEFAULT_LONG_SHOW_TITLE_LOADING:Z = false

.field public static final DEFAULT_LONG_SHOW_TOOLBAR:Z = false

.field public static final DEFAULT_LONG_SMART_TOOLBAR:Z = false

.field public static final DEFAULT_LONG_SSO_LOGIN_ENABLE:Z = true

.field public static final DEFAULT_LONG_TABBARJSON:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_TABITEM_COUNT:I = -0x1

.field public static final DEFAULT_LONG_TITLE_COLOR:I = -0x1000000

.field public static final DEFAULT_LONG_TITLE_IMAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_TITLE_PENETRATE:Ljava/lang/String; = "NO"

.field public static final DEFAULT_LONG_TOOLBAR_MENU:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_TRANSPARENT:Z = false

.field public static final DEFAULT_LONG_TRANSPARENT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_TRANSPARENT_TITLE_TEXTAUTO:Ljava/lang/String; = "NO"

.field public static final DEFAULT_LONG_TRANS_ANIMATE:Z = false

.field public static final DEFAULT_LONG_UP_STRATEGY:Ljava/lang/String; = "try"

.field public static final DEFAULT_LONG_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_LONG_WEBVIEW_OPENURL_METHOD:Ljava/lang/String; = "GET"

.field public static final DEFAULT_LONG_WEBVIEW_OPENURL_POST_PARAMS:Ljava/lang/String; = ""

.field public static final DEFAULT_PULL_INTERCEPT_DISTANCE:I = 0x0

.field public static final DEFAULT_SEG_SELECTED_INDEX:I = 0x0

.field public static final DEFAULT_TITLE:Ljava/lang/String; = "dt"

.field public static final DELAY_RENDER:Ljava/lang/String; = "dr"

.field public static final ENABLE_CUBE:Ljava/lang/String; = "enableCube"

.field public static final ENABLE_CUBEVIEW:Ljava/lang/String; = "enableCubeView"

.field public static final ENABLE_DSL:Ljava/lang/String; = "enableDSL"

.field public static final ENABLE_FALLBACK:Ljava/lang/String; = "enableFallback"

.field public static final ENABLE_MULTI_PROCESS:Ljava/lang/String; = "enableMultiProcess"

.field public static final ENABLE_POLY_FILL_WORKER:Ljava/lang/String; = "enablePolyfillWorker"

.field public static final ENABLE_PROXY:Ljava/lang/String; = "ep"

.field public static final ENABLE_SCROLLBAR:Ljava/lang/String; = "es"

.field public static final ENABLE_TABBAR:Ljava/lang/String; = "enableTabBar"

.field public static final FAV_DESC:Ljava/lang/String; = "fav_desc"

.field public static final FAV_EXTRA:Ljava/lang/String; = "fav_extra"

.field public static final FAV_FROM_SOURCE:Ljava/lang/String; = "fav_fromSource"

.field public static final FAV_GID:Ljava/lang/String; = "fav_gid"

.field public static final FAV_IDENTIFY:Ljava/lang/String; = "fav_identify"

.field public static final FAV_LOG_ID:Ljava/lang/String; = "fav_logId"

.field public static final FAV_SRC:Ljava/lang/String; = "fav_src"

.field public static final FAV_THUMB:Ljava/lang/String; = "fav_thumb"

.field public static final FAV_TITLE:Ljava/lang/String; = "fav_title"

.field public static final FAV_UID:Ljava/lang/String; = "fav_uid"

.field public static final FEEDBACK_EXT_PARAMS:Ljava/lang/String; = "feedBackExtParams"

.field public static final FIRST_INIT_NOT_INIT_GLOBAL_APP:Ljava/lang/String; = "firstInitNotInitGlobalPackage"

.field public static final FIRST_INIT_USE_ANDROID_WEBVIEW:Ljava/lang/String; = "firstInitAndroidWebview"

.field public static final FONT_SIZE:Ljava/lang/String; = "h5_font_size"

.field public static final FORCE:Ljava/lang/String; = "force"

.field public static final FROM_TYPE:Ljava/lang/String; = "fromType"

.field public static final FULLSCREEN:Ljava/lang/String; = "fs"

.field public static final FUNC:Ljava/lang/String; = "func"

.field public static final H5ACTIVITY_END_ANIMATION:Ljava/lang/String; = "endAnimation"

.field public static final H5ACTIVITY_START_ANIMATION:Ljava/lang/String; = "startAnimation"

.field public static final H5_ACTION_JSAPI_PAY_FINISH:Ljava/lang/String; = "mspJsApiPayFinish"

.field public static final H5_ACTION_UC_INIT_FINISH:Ljava/lang/String; = "h5_action_uc_init_finish"

.field public static final H5_ACTION_UC_INIT_FINISH_COMPLETELY:Ljava/lang/String; = "h5_action_uc_init_finish_completely"

.field public static final H5_BUG_ME_STARTUP:Ljava/lang/String; = "h5bugMeStartUp"

.field public static final H5_PAGE_CREATE_WEBVIEW:Ljava/lang/String; = "h5PageCreateWebView"

.field public static final H5_SESSION_POP_PARAM:Ljava/lang/String; = "h5_session_pop_param"

.field public static final H5_SESSION_RESUME_PARAM:Ljava/lang/String; = "h5_session_resume_param"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final INSTALL_VERSION:Ljava/lang/String; = "installVersion"

.field public static final INTERCEPT_JUMP:Ljava/lang/String; = "ij"

.field public static final IN_PAGERENDER_TYPE:Ljava/lang/String; = "inPageRenderType"

.field public static final IN_SUBPACKAGE:Ljava/lang/String; = "inSubPackage"

.field public static final IS_NEBULA_APP:Ljava/lang/String; = "isNebulaApp"

.field public static final IS_V8_WORKER:Ljava/lang/String; = "isV8Worker"

.field public static final KEEP_CALLBACK:Ljava/lang/String; = "keepCallback"

.field public static final KEYBOARD_HEIGHT:Ljava/lang/String; = "keyboardHeight"

.field public static final KICK_OUT:Ljava/lang/String; = "kickOut"

.field public static final LANDSCAPE:Ljava/lang/String; = "ls"

.field public static final LAUNCHER_MODE:Ljava/lang/String; = "launchMode"

.field public static final LAUNCHER_PARAM:Ljava/lang/String; = "launchParams"

.field public static final LEFT_TITLEBAR_SHOW:Ljava/lang/String; = "leftTitlebarShow"

.field public static final LONG_ALLOWS_BOUNCE_VERTICAL:Ljava/lang/String; = "allowsBounceVertical"

.field public static final LONG_ANTI_PHISHING:Ljava/lang/String; = "antiPhishing"

.field public static final LONG_BACKBTN_IMAGE:Ljava/lang/String; = "backBtnImage"

.field public static final LONG_BACKBTN_TEXTCOLOR:Ljava/lang/String; = "backBtnTextColor"

.field public static final LONG_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final LONG_BACK_BEHAVIOR:Ljava/lang/String; = "backBehavior"

.field public static final LONG_BAR_BUTTON_THEME:Ljava/lang/String; = "barButtonTheme"

.field public static final LONG_BIZ_SCENARIO:Ljava/lang/String; = "bizScenario"

.field public static final LONG_BIZ_TYPE:Ljava/lang/String; = "bizType"

.field public static final LONG_BOUNCE_TOP_COLOR:Ljava/lang/String; = "bounceTopColor"

.field public static final LONG_CAN_DESTROY:Ljava/lang/String; = "canDestroy"

.field public static final LONG_CAN_PULL_DOWN:Ljava/lang/String; = "canPullDown"

.field public static final LONG_CLOSE_AFTER_PAY_FINISH:Ljava/lang/String; = "closeAfterPayFinish"

.field public static final LONG_CLOSE_ALL_ACTIVITY__ANIMATION:Ljava/lang/String; = "closeAllActivityAnimation"

.field public static final LONG_CLOSE_BUTTON_TEXT:Ljava/lang/String; = "closeButtonText"

.field public static final LONG_DEFAULT_TITLE:Ljava/lang/String; = "defaultTitle"

.field public static final LONG_DELAY_RENDER:Ljava/lang/String; = "delayRender"

.field public static final LONG_DOWNGRADE_VERSION:Ljava/lang/String; = "downgradeVersion"

.field public static final LONG_ENABLE_PROXY:Ljava/lang/String; = "enableProxy"

.field public static final LONG_ENABLE_SCROLLBAR:Ljava/lang/String; = "enableScrollBar"

.field public static final LONG_ENABLE_TABBAR:Ljava/lang/String; = "enableTabBar"

.field public static final LONG_FALLBACK_APP_ID:Ljava/lang/String; = "fallbackAppId"

.field public static final LONG_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final LONG_INTERCEPT_JUMP:Ljava/lang/String; = "interceptJump"

.field public static final LONG_ISPRERENDER:Ljava/lang/String; = "isPrerender"

.field public static final LONG_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final LONG_NAV_SEARCH_BAR_MAX_LENGTH:Ljava/lang/String; = "navSearchBar_maxLength"

.field public static final LONG_NAV_SEARCH_BAR_PLACEHOLDER:Ljava/lang/String; = "navSearchBar_placeholder"

.field public static final LONG_NAV_SEARCH_BAR_SEARCH_PLACEHOLDER:Ljava/lang/String; = "navSearchBar_searchPlaceholder"

.field public static final LONG_NAV_SEARCH_BAR_TYPE:Ljava/lang/String; = "navSearchBar_type"

.field public static final LONG_NAV_SEARCH_BAR_VALUE:Ljava/lang/String; = "navSearchBar_value"

.field public static final LONG_NB_APP_TYPE:Ljava/lang/String; = "nbapptype"

.field public static final LONG_NB_OFFLINE:Ljava/lang/String; = "nboffline"

.field public static final LONG_NB_OFFMODE:Ljava/lang/String; = "nboffmode"

.field public static final LONG_NB_UPDATE:Ljava/lang/String; = "nbupdate"

.field public static final LONG_NB_URL:Ljava/lang/String; = "nburl"

.field public static final LONG_NB_VERSION:Ljava/lang/String; = "nbversion"

.field public static final LONG_OB_VERSION:Ljava/lang/String; = "obversion"

.field public static final LONG_PACKAGE_LOADING_SHOWN:Ljava/lang/String; = "packageLoadingShown"

.field public static final LONG_PREFETCH_LOCATION:Ljava/lang/String; = "prefetchLocation"

.field public static final LONG_PRESSO_LOGIN:Ljava/lang/String; = "preSSOLogin"

.field public static final LONG_PRESSO_LOGIN_BINDINGPAGE:Ljava/lang/String; = "preSSOLoginBindingPage"

.field public static final LONG_PRESSO_LOGIN_URL:Ljava/lang/String; = "preSSOLoginUrl"

.field public static final LONG_PREVENT_AUTOLOGINLOOP:Ljava/lang/String; = "preventAutoLoginLoop"

.field public static final LONG_PULL_REFRESH:Ljava/lang/String; = "pullRefresh"

.field public static final LONG_PUSHWINDOW_WITH_TRANS_ANIM:Ljava/lang/String; = "pushWindowWithTransAnim"

.field public static final LONG_READ_TITLE:Ljava/lang/String; = "readTitle"

.field public static final LONG_REPORTURL:Ljava/lang/String; = "reportUrl"

.field public static final LONG_SAFEPAY_CONTEXT:Ljava/lang/String; = "safePayContext"

.field public static final LONG_SAFEPAY_ENABLE:Ljava/lang/String; = "safePayEnabled"

.field public static final LONG_SEG_COLOR_ACTIVE:Ljava/lang/String; = "segColorActive"

.field public static final LONG_SEG_COLOR_NORMAL:Ljava/lang/String; = "segColorNormal"

.field public static final LONG_SEG_SELECTED_INDEX:Ljava/lang/String; = "segSelectedIndex"

.field public static final LONG_SEG_TITLES:Ljava/lang/String; = "segTitles"

.field public static final LONG_SEG_WIDTHS:Ljava/lang/String; = "segWidths"

.field public static final LONG_SHARETOKENPARAMS:Ljava/lang/String; = "shareTokenParams"

.field public static final LONG_SHOW_DOMAIN:Ljava/lang/String; = "showDomain"

.field public static final LONG_SHOW_FAVORITES:Ljava/lang/String; = "showFavorites"

.field public static final LONG_SHOW_LOADING:Ljava/lang/String; = "showLoading"

.field public static final LONG_SHOW_OPTION_MENU:Ljava/lang/String; = "showOptionMenu"

.field public static final LONG_SHOW_PROGRESS:Ljava/lang/String; = "showProgress"

.field public static final LONG_SHOW_REPORT_BTN:Ljava/lang/String; = "showReportBtn"

.field public static final LONG_SHOW_THIRDDISCLAIMER:Ljava/lang/String; = "showThirdDisclaimer"

.field public static final LONG_SHOW_TITLEBAR:Ljava/lang/String; = "showTitleBar"

.field public static final LONG_SHOW_TITLE_LOADING:Ljava/lang/String; = "showTitleLoading"

.field public static final LONG_SHOW_TOOLBAR:Ljava/lang/String; = "showToolBar"

.field public static final LONG_SMART_TOOLBAR:Ljava/lang/String; = "smartToolBar"

.field public static final LONG_SSO_LOGIN_ENABLE:Ljava/lang/String; = "ssoLoginEnabled"

.field public static final LONG_TABBARJSON:Ljava/lang/String; = "tabBarJson"

.field public static final LONG_TABITEM_COUNT:Ljava/lang/String; = "tabItemCount"

.field public static final LONG_THIRD_PARTY_IDENTIFY:Ljava/lang/String; = "thirdPartyIdentify"

.field public static final LONG_TITLE_BAR_COLOR:Ljava/lang/String; = "titleBarColor"

.field public static final LONG_TITLE_COLOR:Ljava/lang/String; = "titleColor"

.field public static final LONG_TITLE_IMAGE:Ljava/lang/String; = "titleImage"

.field public static final LONG_TITLE_PENETRATE:Ljava/lang/String; = "titlePenetrate"

.field public static final LONG_TITLE_SCROLLDISTANCE:Ljava/lang/String; = "scrollDistance"

.field public static final LONG_TOOLBAR_MENU:Ljava/lang/String; = "toolbarMenu"

.field public static final LONG_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final LONG_TRANSPARENT_TITLE:Ljava/lang/String; = "transparentTitle"

.field public static final LONG_TRANSPARENT_TITLE_TEXTAUTO:Ljava/lang/String; = "transparentTitleTextAuto"

.field public static final LONG_TRANS_ANIMATE:Ljava/lang/String; = "transAnimate"

.field public static final LONG_UC_INIT_LOADING_SHOWN:Ljava/lang/String; = "ucInitLoadingShown"

.field public static final LONG_UP_STRATEGY:Ljava/lang/String; = "upstrategy"

.field public static final LONG_URL:Ljava/lang/String; = "url"

.field public static final LONG_URL_IN_BASE64:Ljava/lang/String; = "urlInBase64"

.field public static final LONG_URL_WITH_ENTRY_KEY:Ljava/lang/String; = "entry"

.field public static final LONG_WALLET_APP_ICON:Ljava/lang/String; = "NebulaWalletAppIcon"

.field public static final LONG_WALLET_APP_NAME:Ljava/lang/String; = "NebulaWalletAppName"

.field public static final LONG_WEBVIEW_OPENURL_METHOD:Ljava/lang/String; = "openUrlMethod"

.field public static final LONG_WEBVIEW_OPENURL_POST_PARAMS:Ljava/lang/String; = "openUrlPostParams"

.field public static final MAP_HOST:Ljava/lang/String; = "mapHost"

.field public static final MENU_COMPLAIN:Ljava/lang/String; = "ppchatReportAbuse"

.field public static final MENU_COPY:Ljava/lang/String; = "copy"

.field public static final MENU_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final MENU_FONT:Ljava/lang/String; = "h5MenuActionOfFont"

.field public static final MENU_ICON:Ljava/lang/String; = "icon"

.field public static final MENU_NAME:Ljava/lang/String; = "name"

.field public static final MENU_OPEN_IN_BROWSER:Ljava/lang/String; = "openInBrowser"

.field public static final MENU_REFRESH:Ljava/lang/String; = "refresh"

.field public static final MENU_REPORT:Ljava/lang/String; = "report"

.field public static final MENU_SHARE:Ljava/lang/String; = "ppchatShare"

.field public static final MENU_SHARE_FRIEND:Ljava/lang/String; = "shareFriend"

.field public static final MENU_TAG:Ljava/lang/String; = "tag"

.field public static final MINI_PROGRAM_WEBVIEW_TAG:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-TAG"

.field public static final MINI_SERVICE:Ljava/lang/String; = "miniservice"

.field public static final MONITOR_PERFORMANCE:Ljava/lang/String; = "monitorH5Performance"

.field public static final MSG_TYPE:Ljava/lang/String; = "msgType"

.field public static final MULTI_APP_TAG:Ljava/lang/String; = "multiAppTag"

.field public static final NAV_SEARCH_BAR_MAX_LENGTH:Ljava/lang/String; = "nsbml"

.field public static final NAV_SEARCH_BAR_PLACEHOLDER:Ljava/lang/String; = "nsbp"

.field public static final NAV_SEARCH_BAR_SEARCH_PLACEHOLDER:Ljava/lang/String; = "nsbsp"

.field public static final NAV_SEARCH_BAR_TYPE:Ljava/lang/String; = "nsbt"

.field public static final NAV_SEARCH_BAR_VALUE:Ljava/lang/String; = "nsbv"

.field public static final NB_APP_TYPE:Ljava/lang/String; = "nat"

.field public static final NB_OFFLINE:Ljava/lang/String; = "nol"

.field public static final NB_OFFMODE:Ljava/lang/String; = "nolm"

.field public static final NB_UPDATE:Ljava/lang/String; = "nup"

.field public static final NB_URL:Ljava/lang/String; = "nbu"

.field public static final NB_VERSION:Ljava/lang/String; = "nbv"

.field public static final NEBULA_APP:Ljava/lang/String; = "NebulaApp"

.field public static final NEBULA_FORCE_OFFLINE:Ljava/lang/String; = "nebula_force_offline"

.field public static final NEBULA_LOADING_VERSION:Ljava/lang/String; = "nebula_loading_version"

.field public static final NEBULA_START_ANIMATION:Ljava/lang/String; = "nebulaStartAnimation"

.field public static final NEBULA_VERSION:Ljava/lang/String; = "NebulaVersion"

.field public static final OB_VERSION:Ljava/lang/String; = "opv"

.field public static final OFFLINE_HOST:Ljava/lang/String; = "offlineHost"

.field public static final ONLINE_HOST:Ljava/lang/String; = "onlineHost"

.field public static final ONU:Ljava/lang/String; = "onu"

.field public static final OPEN_APP_ID:Ljava/lang/String; = "openAppId"

.field public static final ORIGIN_FROM_EXTERNAL:Ljava/lang/String; = "isOriginStartFromExternal"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PAGE_UPDATED:Ljava/lang/String; = "pageUpdated"

.field public static final PARAM:Ljava/lang/String; = "param"

.field public static final PITD:Ljava/lang/String; = "pitd"

.field public static final POP_MENU_TYPE:Ljava/lang/String; = "popMenuType"

.field public static final PREFETCH_LOCATION:Ljava/lang/String; = "pl"

.field public static final PRESSO_LOGIN:Ljava/lang/String; = "ps"

.field public static final PRESSO_LOGIN_BINDINGPAGE:Ljava/lang/String; = "psb"

.field public static final PRESSO_LOGIN_URL:Ljava/lang/String; = "psu"

.field public static final PREVENT_AUTOLOGINLOOP:Ljava/lang/String; = "preventAutoLoginLoop"

.field public static final PRE_AUTH:Ljava/lang/String; = "preAuth"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final PUBLIC_ID:Ljava/lang/String; = "publicId"

.field public static final PULL_INTERCEPT_DISTANCE:Ljava/lang/String; = "pullInterceptDistance"

.field public static final PULL_REFRESH:Ljava/lang/String; = "pr"

.field public static final PULL_REFRESH_STYLE:Ljava/lang/String; = "pullRefreshStyle"

.field public static final READ_TITLE:Ljava/lang/String; = "rt"

.field public static final REDIRECT_FROM_HOMEPAGE:Ljava/lang/String; = "redirectFromHomepage"

.field public static final REFERER:Ljava/lang/String; = "Referer"

.field public static final RELEASE_TYPE:Ljava/lang/String; = "release_type"

.field public static final REPORT_ABNORMAL:Ljava/lang/String; = "reportH5Abnormal"

.field public static final SAFEPAY_CONTEXT:Ljava/lang/String; = "sc"

.field public static final SAFEPAY_ENABLE:Ljava/lang/String; = "pe"

.field public static final SCAN_APP:Ljava/lang/String; = "scanApp"

.field public static final SCENEPARAMS_SHARETOKEN:Ljava/lang/String; = "sceneparams_sharetoken"

.field public static final SEG_COLOR_ACTIVE:Ljava/lang/String; = "sca"

.field public static final SEG_COLOR_NORMAL:Ljava/lang/String; = "scn"

.field public static final SEG_SELECTED_INDEX:Ljava/lang/String; = "ssi"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SHARETOKENPARAMS:Ljava/lang/String; = "stp"

.field public static final SHOP_ID:Ljava/lang/String; = "shopId"

.field public static final SHOW_ACTIVITY_FINISH_ANIMATION:Ljava/lang/String; = "nebula_showActivityFinishAnimation"

.field public static final SHOW_DOMAIN:Ljava/lang/String; = "sd"

.field public static final SHOW_FAVORITES:Ljava/lang/String; = "sf"

.field public static final SHOW_LOADING:Ljava/lang/String; = "sl"

.field public static final SHOW_OPTION_MENU:Ljava/lang/String; = "so"

.field public static final SHOW_PROGRESS:Ljava/lang/String; = "sp"

.field public static final SHOW_REPORT_BTN:Ljava/lang/String; = "sr"

.field public static final SHOW_TITLEBAR:Ljava/lang/String; = "st"

.field public static final SHOW_TITLE_LOADING:Ljava/lang/String; = "tl"

.field public static final SHOW_TOOLBAR:Ljava/lang/String; = "sb"

.field public static final SMART_TOOLBAR:Ljava/lang/String; = "tb"

.field public static final SNAPSHOT:Ljava/lang/String; = "snapshot"

.field public static final SOURRCE_PACKAGE_NAME:Ljava/lang/String; = "sourcePackageName"

.field public static final SSO_LOGIN_ENABLE:Ljava/lang/String; = "le"

.field public static final START_URL:Ljava/lang/String; = "start_up_url"

.field public static final TABBARJSON:Ljava/lang/String; = "tabBarJson"

.field public static final TABITEM_COUNT:Ljava/lang/String; = "tabItemCount"

.field public static final THIRD_PARTY_IDENTIFY:Ljava/lang/String; = "tpi"

.field public static final TINY_PARAM_STRATEGY:Ljava/lang/String; = "TinyParamStrategy"

.field public static final TINY_SOURCE_TYPE_TAG:Ljava/lang/String; = "tinySource"

.field public static final TIP_CONTENT:Ljava/lang/String; = "tip_content"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_BAR_COLOR:Ljava/lang/String; = "tbc"

.field public static final TITLE_COLOR:Ljava/lang/String; = "tc"

.field public static final TITLE_IMAGE:Ljava/lang/String; = "ti"

.field public static final TITLE_PENETRATE:Ljava/lang/String; = "tp"

.field public static final TITLE_SCROLLDISTANCE:Ljava/lang/String; = "sds"

.field public static final TOOLBAR_MENU:Ljava/lang/String; = "tm"

.field public static final TRANSPARENT:Ljava/lang/String; = "tt"

.field public static final TRANSPARENT_TITLE:Ljava/lang/String; = "ttb"

.field public static final TRANSPARENT_TITLE_TEXTAUTO:Ljava/lang/String; = "ttta"

.field public static final TRANS_ANIMATE:Ljava/lang/String; = "tsam"

.field public static final UP_STRATEGY:Ljava/lang/String; = "ups"

.field public static final URL:Ljava/lang/String; = "u"

.field public static final USE_SW:Ljava/lang/String; = "useSW"

.field public static final USE_SYS_WEBVIEW:Ljava/lang/String; = "useSysWebView"

.field public static final WAIT_RENDER:Ljava/lang/String; = "waitRender"

.field public static final WEBVIEW_DEGRADE:Ljava/lang/String; = "webViewDegrade"

.field public static final WEBVIEW_FONT_SIZE_INVALID:I = -0x1

.field public static final WEBVIEW_FONT_SIZE_LARGER:I = 0x96

.field public static final WEBVIEW_FONT_SIZE_LARGEST:I = 0xc8

.field public static final WEBVIEW_FONT_SIZE_NORMAL:I = 0x64

.field public static final WEBVIEW_FONT_SIZE_SMALLER:I = 0x4b

.field public static final WEBVIEW_OPENURL_METHOD:Ljava/lang/String; = "openUrlMethod"

.field public static final WEBVIEW_OPENURL_POST_PARAMS:Ljava/lang/String; = "openUrlPostParams"

.field public static final autoAdaptToContentSize:Ljava/lang/String; = "autoAdaptToContentSize"

.field public static final hasPackage:Ljava/lang/String; = "hasPackage"

.field public static final isH5app:Ljava/lang/String; = "isH5app"

.field public static final isTinyApp:Ljava/lang/String; = "isTinyApp"

.class public final Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;
.super Ljava/lang/Object;
.source "H5Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonEvents"
.end annotation


# static fields
.field public static final ACTION_SHEET:Ljava/lang/String; = "actionSheet"

.field public static final ADD_EVENT_CAL:Ljava/lang/String; = "addEventCal"

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final CAN_PULL_DOWN:Ljava/lang/String; = "canPullDown"

.field public static final CHECK_JS_API:Ljava/lang/String; = "checkJSAPI"

.field public static final CLEAR_ALL_COOKIES:Ljava/lang/String; = "clearAllCookies"

.field public static final CLEAR_AP_DATA_STORAGE:Ljava/lang/String; = "clearAPDataStorage"

.field public static final CLEAR_RENDER:Ljava/lang/String; = "clearRender"

.field public static final CLOSE_WEBVIEW:Ljava/lang/String; = "closeWebview"

.field public static final CONFIRM:Ljava/lang/String; = "confirm"

.field public static final DATE_PICKER:Ljava/lang/String; = "datePicker"

.field public static final EXIT_SESSION:Ljava/lang/String; = "exitSession"

.field public static final FINISH_RENDER:Ljava/lang/String; = "finishRender"

.field public static final FIRE_PULL_TO_REFRESH:Ljava/lang/String; = "firePullToRefresh"

.field public static final GET_AP_DATA_STORAGE:Ljava/lang/String; = "getAPDataStorage"

.field public static GET_CAMERA_AUTHORIZED_STATUS:Ljava/lang/String; = null

.field public static final GET_CLIPBOARD:Ljava/lang/String; = "getClipboard"

.field public static final GET_COOKIE:Ljava/lang/String; = "getCookie"

.field public static final GET_MTOP_TOKEN:Ljava/lang/String; = "getMtopToken"

.field public static final GET_NETWORK_TYPE:Ljava/lang/String; = "getNetworkType"

.field public static final GET_SESSION_DATA:Ljava/lang/String; = "getSessionData"

.field public static final GET_SHARE_DATA:Ljava/lang/String; = "getSharedData"

.field public static final GET_TITLE_COLOR:Ljava/lang/String; = "getTitleColor"

.field public static H5_AL_GETSHARECONTENT_RESULT:Ljava/lang/String; = null

.field public static H5_AL_JSAPI_RESULT_ERROR:Ljava/lang/String; = null

.field public static H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String; = null

.field public static H5_AL_PAY_BEFORE_INTERCEPT:Ljava/lang/String; = null

.field public static final H5_AL_PAY_RESULT:Ljava/lang/String; = "H5_AL_PAY_RESULT"

.field public static final H5_AL_PAY_START:Ljava/lang/String; = "H5_AL_PAY_START"

.field public static H5_AL_SESSION_AUTOLOGIN:Ljava/lang/String; = null

.field public static H5_AL_SESSION_ENTRYRPC_ERROR:Ljava/lang/String; = null

.field public static H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String; = null

.field public static H5_AL_SESSION_FALLBACK:Ljava/lang/String; = null

.field public static H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String; = null

.field public static H5_AL_SESSION_TO_NATIVE:Ljava/lang/String; = null

.field public static H5_AL_SHARE_RESULT:Ljava/lang/String; = null

.field public static H5_DEV_CONSOLE:Ljava/lang/String; = null

.field public static H5_DEV_CONSOLE_EXCEPTION:Ljava/lang/String; = null

.field public static H5_DEV_JS_API_TO_NATIVE:Ljava/lang/String; = null

.field public static H5_DEV_JS_API_TO_WEB:Ljava/lang/String; = null

.field public static H5_DEV_NETWORK_FINISH:Ljava/lang/String; = null

.field public static H5_DEV_NETWORK_SRART:Ljava/lang/String; = null

.field public static H5_DEV_SCREENSHOT_UPLOAD:Ljava/lang/String; = null

.field public static H5_DEV_WEBVIEW_CREATE:Ljava/lang/String; = null

.field public static H5_DEV_WEBVIEW_RELEASE:Ljava/lang/String; = null

.field public static final H5_DOWNLOAD_APK_RESULT:Ljava/lang/String; = "H5_DOWNLOAD_APK_RESULT"

.field public static H5_FAVORITES_RESULT:Ljava/lang/String; = null

.field public static final H5_FILE_DOWNLOAD:Ljava/lang/String; = "H5_FILE_DOWNLOAD"

.field public static final H5_GET_CAMERA_SUPPORTED_PREVIEW_SIZE:Ljava/lang/String; = "h5CameraSupportedPreviewSize"

.field public static final H5_GET_DOWNLOAD_INFO:Ljava/lang/String; = "getDownloadInfo"

.field public static H5_LONG_CLICK:Ljava/lang/String; = null

.field public static final H5_NETWORK_CHANGE:Ljava/lang/String; = "h5NetworkChange"

.field public static H5_OPEN_IN_BROWSER:Ljava/lang/String; = null

.field public static final H5_PAGE_ABNORMAL:Ljava/lang/String; = "h5PageAbnormal"

.field public static final H5_PAGE_BACK:Ljava/lang/String; = "h5PageBack"

.field public static final H5_PAGE_BACKGROUND:Ljava/lang/String; = "h5PageBackground"

.field public static final H5_PAGE_BACK_BEHAVIOR:Ljava/lang/String; = "h5PageBackBehavior"

.field public static H5_PAGE_BIZREADY:Ljava/lang/String; = null

.field public static final H5_PAGE_CLOSE:Ljava/lang/String; = "h5PageClose"

.field public static final H5_PAGE_CLOSED:Ljava/lang/String; = "h5PageClosed"

.field public static final H5_PAGE_DEV_DEBUG:Ljava/lang/String; = "h5PageDevDebug"

.field public static final H5_PAGE_DOWNLOAD:Ljava/lang/String; = "h5PageDownload"

.field public static final H5_PAGE_DOWNLOAD_APK:Ljava/lang/String; = "h5PageDownloadApk"

.field public static final H5_PAGE_DO_LOAD_URL:Ljava/lang/String; = "h5PageDoLoadUrl"

.field public static final H5_PAGE_ERROR:Ljava/lang/String; = "h5PageError"

.field public static final H5_PAGE_FINISHED:Ljava/lang/String; = "h5PageFinished"

.field public static final H5_PAGE_FINISHED_SYNC:Ljava/lang/String; = "h5PageFinishedSync"

.field public static final H5_PAGE_FIRST_VISUALLY_RENDER:Ljava/lang/String; = "h5PageFirstVisuallyRender"

.field public static final H5_PAGE_FONT_SIZE:Ljava/lang/String; = "h5PageFontSize"

.field public static final H5_PAGE_INTERCEPT_SCHEME:Ljava/lang/String; = "h5PageInterceptScheme"

.field public static final H5_PAGE_JSAPI_LOGIN:Ljava/lang/String; = "H5_PAGE_JSAPI_LOGIN"

.field public static final H5_PAGE_JS_CALL:Ljava/lang/String; = "h5PageJsCall"

.field public static final H5_PAGE_JS_PARAM:Ljava/lang/String; = "h5PageJsParam"

.field public static final H5_PAGE_JUMP_PP:Ljava/lang/String; = "h5PageJumpPP"

.field public static final H5_PAGE_JUMP_PP_DOWNLOAD:Ljava/lang/String; = "h5PageJumpPPDownload"

.field public static final H5_PAGE_JUMP_PP_DOWNLOAD_SUCCESS:Ljava/lang/String; = "h5PageJumpPPDownloadSuccess"

.field public static final H5_PAGE_LOADER:Ljava/lang/String; = "H5_PAGE_LOADER"

.field public static final H5_PAGE_LOAD_DATA:Ljava/lang/String; = "h5PageLoadData"

.field public static final H5_PAGE_LOAD_RESOURCE:Ljava/lang/String; = "h5PageLoadResource"

.field public static final H5_PAGE_LOAD_URL:Ljava/lang/String; = "h5PageLoadUrl"

.field public static final H5_PAGE_LONG_CLICK:Ljava/lang/String; = "h5PageLongClick"

.field public static final H5_PAGE_PAUSE:Ljava/lang/String; = "h5PagePause"

.field public static final H5_PAGE_PHYSICAL_BACK:Ljava/lang/String; = "h5PagePhysicalBack"

.field public static final H5_PAGE_PROGRESS:Ljava/lang/String; = "h5PageProgress"

.field public static final H5_PAGE_QUERY_PP:Ljava/lang/String; = "h5PageQueryPP"

.field public static final H5_PAGE_QUERY_PP_COST:Ljava/lang/String; = "h5PageQueryPPCost"

.field public static final H5_PAGE_RECEIVED_TITLE:Ljava/lang/String; = "h5PageReceivedTitle"

.field public static final H5_PAGE_RELOAD:Ljava/lang/String; = "h5PageReload"

.field public static final H5_PAGE_RENDER:Ljava/lang/String; = "h5PageRender"

.field public static final H5_PAGE_RESUME:Ljava/lang/String; = "h5PageResume"

.field public static final H5_PAGE_SCRIPT_READY:Ljava/lang/String; = "h5PageScriptReady"

.field public static final H5_PAGE_SHOULD_LOAD_DATA:Ljava/lang/String; = "h5PageShouldLoadData"

.field public static final H5_PAGE_SHOULD_LOAD_URL:Ljava/lang/String; = "h5PageShouldLoadUrl"

.field public static final H5_PAGE_SHOW_CLOSE:Ljava/lang/String; = "h5PageShowClose"

.field public static final H5_PAGE_START:Ljava/lang/String; = "h5PageStart"

.field public static final H5_PAGE_STARTED:Ljava/lang/String; = "h5PageStarted"

.field public static final H5_PAGE_STARTED_SYNC:Ljava/lang/String; = "h5PageStartedSync"

.field public static final H5_PAGE_UPDATED:Ljava/lang/String; = "h5PageUpdated"

.field public static H5_RESOURCE_LOST:Ljava/lang/String; = null

.field public static final H5_RPC_FAILED:Ljava/lang/String; = "H5_RPC_FAILED"

.field public static final H5_SESSION_EXIT:Ljava/lang/String; = "h5SessionExit"

.field public static final H5_SESSION_PAUSE:Ljava/lang/String; = "h5SessionPause"

.field public static final H5_SESSION_RESUME:Ljava/lang/String; = "h5SessionResume"

.field public static final H5_SESSION_START:Ljava/lang/String; = "h5SessionStart"

.field public static final H5_SET_CAN_PULL_DOWN:Ljava/lang/String; = "setCanPullDown"

.field public static final H5_SET_WEBVIEW_TOP:Ljava/lang/String; = "setWebViewTop"

.field public static H5_SHARE_RESULT:Ljava/lang/String; = null

.field public static final H5_SHOW_TIPS:Ljava/lang/String; = "showTips"

.field public static final H5_START_DOWNLOAD:Ljava/lang/String; = "startDownload"

.field public static final H5_STOP_DOWNLOAD:Ljava/lang/String; = "stopDownload"

.field public static H5_SWITCH_SESSIONTAB:Ljava/lang/String; = null

.field public static final H5_SYNC_GLOBAL_BLACKLIST:Ljava/lang/String; = "syncH5GlobalBlackList"

.field public static H5_TAOBAOSSO_RESULT:Ljava/lang/String; = null

.field public static H5_TAOBAOSSO_TIME:Ljava/lang/String; = null

.field public static final H5_TITLEBAR_OPTIONS:Ljava/lang/String; = "optionMenu"

.field public static final H5_TITLEBAR_SEGCONTROL:Ljava/lang/String; = "segControlClick"

.field public static final H5_TITLEBAR_SUBTITLE:Ljava/lang/String; = "subtitleClick"

.field public static final H5_TITLEBAR_TITLE:Ljava/lang/String; = "titleClick"

.field public static final H5_TITLEBAR_TRANSSTATE_CHANGE:Ljava/lang/String; = "h5_titlebar_transstate_change"

.field public static final H5_TOOLBAR_BACK:Ljava/lang/String; = "h5ToolbarBack"

.field public static final H5_TOOLBAR_CLOSE:Ljava/lang/String; = "h5ToolbarClose"

.field public static H5_TOOLBAR_COPYLINK_BT:Ljava/lang/String; = null

.field public static final H5_TOOLBAR_MENU:Ljava/lang/String; = "h5ToolbarMenu"

.field public static final H5_TOOLBAR_MENU_BT:Ljava/lang/String; = "h5ToolbarMenuBt"

.field public static final H5_TOOLBAR_RELOAD:Ljava/lang/String; = "h5ToolbarReload"

.field public static final H5_VC_OVERLIMIT:Ljava/lang/String; = "H5_VC_OverLimit"

.field public static final HIDE_BACK_BUTTON:Ljava/lang/String; = "hideBackButton"

.field public static HIDE_CLOSE_BUTTON:Ljava/lang/String; = null

.field public static final HIDE_FAVORITES:Ljava/lang/String; = "hideFavorites"

.field public static final HIDE_LOADING:Ljava/lang/String; = "hideLoading"

.field public static final HIDE_OPTION_MENU:Ljava/lang/String; = "hideOptionMenu"

.field public static final HIDE_REPORT_BTN:Ljava/lang/String; = "hideReportBtn"

.field public static final HIDE_TITLE_BAR:Ljava/lang/String; = "hideTitlebar"

.field public static final HIDE_TITLE_LOADING:Ljava/lang/String; = "hideTitleLoading"

.field public static final HIDE_TOOL_BAR:Ljava/lang/String; = "hideToolbar"

.field public static final IS_INSTALLED_APP:Ljava/lang/String; = "isInstalledApp"

.field public static final JS_API_ON_COMPLETE:Ljava/lang/String; = "jsapiOnComplete"

.field public static final JS_API_ON_INVOKE:Ljava/lang/String; = "jsapiOnInvoke"

.field public static final KEY_BOARD_BECOME_INVISIBLE:Ljava/lang/String; = "keyboardBecomeInvisible"

.field public static final KEY_BOARD_BECOME_VISIBLE:Ljava/lang/String; = "keyboardBecomeVisible"

.field public static final OPEN_IN_BROWSER:Ljava/lang/String; = "openInBrowser"

.field public static final POP_TO:Ljava/lang/String; = "popTo"

.field public static final POP_WINDOW:Ljava/lang/String; = "popWindow"

.field public static final PREFETCH_LOCATION:Ljava/lang/String; = "prefetchLocation"

.field public static final PRE_RENDER:Ljava/lang/String; = "preRender"

.field public static final PULL_REFRESH:Ljava/lang/String; = "pullRefresh"

.field public static final PUSH_WINDOW:Ljava/lang/String; = "pushWindow"

.field public static final READ_TITLE:Ljava/lang/String; = "readTitle"

.field public static final REMOVE_AP_DATA_STORAGE:Ljava/lang/String; = "removeAPDataStorage"

.field public static final REMOVE_BACKGROUND_IMAGE:Ljava/lang/String; = "removeBackgroundImage"

.field public static final REMOVE_EVENT_CAL:Ljava/lang/String; = "removeEventCal"

.field public static final REMOVE_SHARE_DATA:Ljava/lang/String; = "removeSharedData"

.field public static RESTART_TINY_APP:Ljava/lang/String; = null

.field public static final RESTORE_PULL_TO_REFRESH:Ljava/lang/String; = "restorePullToRefresh"

.field public static final RSA:Ljava/lang/String; = "rsa"

.field public static final SEND_SMS:Ljava/lang/String; = "sendSMS"

.field public static final SET_AP_DATA_STORAGE:Ljava/lang/String; = "setAPDataStorage"

.field public static final SET_BACKGROUND_IMAGE:Ljava/lang/String; = "setBackgroundImage"

.field public static final SET_CLIPBOARD:Ljava/lang/String; = "setClipboard"

.field public static final SET_OPTION_MENU:Ljava/lang/String; = "setOptionMenu"

.field public static final SET_SESSION_DATA:Ljava/lang/String; = "setSessionData"

.field public static final SET_SHARE_DATA:Ljava/lang/String; = "setSharedData"

.field public static final SET_TITLE:Ljava/lang/String; = "setTitle"

.field public static final SET_TITLE_COLOR:Ljava/lang/String; = "setTitleColor"

.field public static final SET_TITLE_SEGCONTROL:Ljava/lang/String; = "setTitleSegControl"

.field public static final SET_TOOL_MENU:Ljava/lang/String; = "setToolbarMenu"

.field public static final SHOW_ALERT:Ljava/lang/String; = "showAlert"

.field public static final SHOW_BACK_BUTTON:Ljava/lang/String; = "showBackButton"

.field public static final SHOW_DOMAIN:Ljava/lang/String; = "showDomain"

.field public static final SHOW_FAVORITES:Ljava/lang/String; = "showFavorites"

.field public static final SHOW_LOADING:Ljava/lang/String; = "showLoading"

.field public static final SHOW_OPTION_MENU:Ljava/lang/String; = "showOptionMenu"

.field public static final SHOW_POP_MENU:Ljava/lang/String; = "showPopMenu"

.field public static final SHOW_PROGRESS_BAR:Ljava/lang/String; = "showProgressBar"

.field public static final SHOW_REPORT_BTN:Ljava/lang/String; = "showReportBtn"

.field public static final SHOW_TITLE_BAR:Ljava/lang/String; = "showTitlebar"

.field public static final SHOW_TITLE_LOADING:Ljava/lang/String; = "showTitleLoading"

.field public static final SHOW_TOOL_BAR:Ljava/lang/String; = "showToolbar"

.field public static final START_PACKAGE:Ljava/lang/String; = "startPackage"

.field public static final START_PULL_DOWN_REFRESH:Ljava/lang/String; = "startPullDownRefresh"

.field public static final START_SHARE:Ljava/lang/String; = "startShare"

.field public static final TOAST:Ljava/lang/String; = "toast"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WATCH_SHAKE:Ljava/lang/String; = "watchShake"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 348
    const-string v0, "H5_FAVORITES_RESULT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_FAVORITES_RESULT:Ljava/lang/String;

    .line 349
    const-string v0, "H5_LONG_CLICK"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_LONG_CLICK:Ljava/lang/String;

    .line 350
    const-string v0, "H5_AL_GETSHARECONTENT_RESULT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_GETSHARECONTENT_RESULT:Ljava/lang/String;

    .line 353
    const-string v0, "H5_AL_PAY_BEFORE_INTERCEPT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_PAY_BEFORE_INTERCEPT:Ljava/lang/String;

    .line 354
    const-string v0, "H5_TAOBAOSSO_RESULT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_RESULT:Ljava/lang/String;

    .line 355
    const-string v0, "H5_TAOBAOSSO_TIME"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_TIME:Ljava/lang/String;

    .line 357
    const-string v0, "H5_AL_SESSION_ENTRYRPC_ERROR"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRYRPC_ERROR:Ljava/lang/String;

    .line 359
    const-string v0, "H5_AL_JSAPI_RESULT_ERROR"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_JSAPI_RESULT_ERROR:Ljava/lang/String;

    .line 361
    const-string v0, "H5_AL_SHARE_RESULT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SHARE_RESULT:Ljava/lang/String;

    .line 362
    const-string v0, "H5_SHARE_RESULT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SHARE_RESULT:Ljava/lang/String;

    .line 363
    const-string v0, "H5_AL_SESSION_FROM_NATIVE"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String;

    .line 364
    const-string v0, "H5_AL_SESSION_TO_NATIVE"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    .line 366
    const-string v0, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    .line 368
    const-string v0, "H5_AL_SESSION_AUTOLOGIN"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_AUTOLOGIN:Ljava/lang/String;

    .line 369
    const-string v0, "H5_OPEN_IN_BROWSER"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    .line 370
    const-string v0, "H5_TOOLBAR_COPYLINK_BT"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TOOLBAR_COPYLINK_BT:Ljava/lang/String;

    .line 372
    const-string v0, "H5_AL_SESSION_ENTRY_ERROR"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    .line 373
    const-string v0, "H5_AL_SESSION_FALLBACK"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FALLBACK:Ljava/lang/String;

    .line 376
    const-string v0, "h5_dev_console"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE:Ljava/lang/String;

    .line 377
    const-string v0, "h5_dev_console_exception"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE_EXCEPTION:Ljava/lang/String;

    .line 378
    const-string v0, "h5_dev_js_api_to_web"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_JS_API_TO_WEB:Ljava/lang/String;

    .line 379
    const-string v0, "h5_dev_js_api_to_native"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_JS_API_TO_NATIVE:Ljava/lang/String;

    .line 380
    const-string v0, "h5_dev_webview_create"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_CREATE:Ljava/lang/String;

    .line 381
    const-string v0, "h5_dev_webview_release"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_RELEASE:Ljava/lang/String;

    .line 382
    const-string v0, "h5_dev_net_work_start"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_SRART:Ljava/lang/String;

    .line 383
    const-string v0, "h5_dev_net_work_finish"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_FINISH:Ljava/lang/String;

    .line 384
    const-string v0, "h5_dev_screenshot_upload"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_SCREENSHOT_UPLOAD:Ljava/lang/String;

    .line 386
    const-string v0, "h5ResourceLost"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_RESOURCE_LOST:Ljava/lang/String;

    .line 387
    const-string v0, "getCameraAuthorizedStatus"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->GET_CAMERA_AUTHORIZED_STATUS:Ljava/lang/String;

    .line 390
    const-string/jumbo v0, "restartTinyApp"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->RESTART_TINY_APP:Ljava/lang/String;

    .line 393
    const-string v0, "hideCloseButton"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->HIDE_CLOSE_BUTTON:Ljava/lang/String;

    .line 394
    const-string v0, "h5_switch_sessiontab"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SWITCH_SESSIONTAB:Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "page.bizReady"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_PAGE_BIZREADY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

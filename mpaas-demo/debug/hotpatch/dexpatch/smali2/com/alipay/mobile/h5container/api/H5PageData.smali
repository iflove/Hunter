.class public Lcom/alipay/mobile/h5container/api/H5PageData;
.super Ljava/lang/Object;
.source "H5PageData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BRIDGE_READY:Ljava/lang/String; = "bridgeReady"

.field public static final BUGME_ENV_PREVIEW:Ljava/lang/String; = "preview"

.field public static final CHECK_CALL_BACK_HANDLE_RESPONSE:I = 0x2

.field public static final CHECK_CALL_BACK_PAGE_START:I = 0x0

.field public static final CHECK_CALL_BACK_RESOURCE_FINISH_LOAD:I = 0x3

.field public static final CHECK_CALL_BACK_SHOULD_INTERCEPT_REQUEST:I = 0x1

.field private static final CREATE_SCENARIO_ARRAY:[Ljava/lang/String;

.field public static final CREATE_SCENARIO_INIT:I = 0x3

.field public static final CREATE_SCENARIO_INIT_UC:I = 0x2

.field public static final CREATE_SCENARIO_INIT_UC_UNZIP:I = 0x1

.field public static final CREATE_SCENARIO_INIT_UC_UNZIP_BG:I = 0x0

.field public static final CREATE_SCENARIO_LOAD:I = 0x6

.field public static final CREATE_SCENARIO_NEW:I = 0x4

.field public static final CREATE_SCENARIO_PUSH:I = 0x5

.field public static final CUBE_RENDER_TYPE:Ljava/lang/String; = "cubeRender"

.field public static final DEFAULT_ERROR_CODE:I = 0x1b58

.field public static final FROM_TYPE_HERF_CHANGE:Ljava/lang/String; = "hrefChange"

.field public static final FROM_TYPE_PUSH_WINDOW:Ljava/lang/String; = "pushWindow"

.field public static final FROM_TYPE_START_APP:Ljava/lang/String; = "startApp"

.field public static final FROM_TYPE_SUB_VIEW:Ljava/lang/String; = "subView"

.field public static final IS_ENTRANCE:Ljava/lang/String; = "isEntrance"

.field public static final IS_H5ACTIVITY:Ljava/lang/String; = "isH5Activity"

.field public static final IS_NEBULAX:Ljava/lang/String; = "isNebulaX"

.field public static final IS_OFFLINE_APP:Ljava/lang/String; = "isOfflineApp"

.field public static final JS_ERRORS:Ljava/lang/String; = "jsErrors"

.field public static final KEY_UC_START:Ljava/lang/String; = "start"

.field public static final KEY_UC_T0:Ljava/lang/String; = "t0"

.field public static final KEY_UC_T1:Ljava/lang/String; = "t1"

.field public static final KEY_UC_T2:Ljava/lang/String; = "t2"

.field public static final KEY_UC_T2_PAINT:Ljava/lang/String; = "t2Paint"

.field public static final KEY_UC_T2_TRACE:Ljava/lang/String; = "t2Trace"

.field public static final KEY_UC_T3:Ljava/lang/String; = "t3"

.field private static final MAX_LOG_LENGTH:I = 0x2800

.field public static final TAG:Ljava/lang/String; = "H5PageData"

.field public static final WEBVIEW_ERROR_CODE:Ljava/lang/String; = "webViewErrorCode"

.field public static final WEBVIEW_ERROR_DESC:Ljava/lang/String; = "webViewErrorDesc"

.field public static createAppTime:J

.field public static sAppDownloadDelaySeconds:J

.field public static sCreateScene:I

.field public static sCreateTimestamp:J

.field public static sUcFirstWebView:Z

.field public static sUsePackagePreload:Z

.field public static sUseUCParallelInit:Z

.field public static sUseWebViewPool:Z

.field public static swFirstJsApiCallTime:J

.field public static ucCacheSdcardLimit:Ljava/lang/String;

.field public static walletServiceStart:J


# instance fields
.field private abTestUsedTime:I

.field private aliRequestResNum:I

.field private cubeRenderType:Ljava/lang/String;

.field private eagleId:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private errorSpdyCode:I

.field private errorSpdyMsg:Ljava/lang/String;

.field private isNebulaX:Z

.field private isSpdy:Z

.field private jsApiDetail:Ljava/lang/String;

.field private jsApiPerExtra:Ljava/lang/String;

.field private mAboutBlankNum:I

.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mAppear:J

.field private mAppearFromNative:J

.field private mBugmeEnv:Ljava/lang/String;

.field private mBugmeNext:Z

.field private mCheckFuncStatusList:[I

.field private mComplete:J

.field private mContainerVisible:J

.field private mCreate:J

.field private mCreateScenario:I

.field private mCssLoadNum:I

.field private mCssLoadSize:J

.field private mCssReqNum:I

.field private mCssSize:J

.field private mCustomParams:Ljava/lang/String;

.field private mEnd:J

.field private mErrorCode:I

.field private mEtype:Ljava/lang/String;

.field private final mExtraMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstByte:J

.field private mFirstVisuallyRender:J

.field private mFromType:Ljava/lang/String;

.field private mH1RequestCount:I

.field private mH2RequestCount:I

.field private mH5SessionToken:Ljava/lang/String;

.field private mH5Token:Ljava/lang/String;

.field private mHtmlLoadSize:J

.field private mHtmlSize:J

.field private mImageSizeLimit60Urls:Ljava/lang/String;

.field private mImgLoadNum:I

.field private mImgLoadSize:J

.field private mImgReqNum:I

.field private mImgSize:J

.field private mIsLocal:Ljava/lang/String;

.field private mIsTinyApp:Ljava/lang/String;

.field private mJsLoadNum:I

.field private mJsLoadSize:J

.field private mJsReqNum:I

.field private mJsSize:J

.field private mJsapiList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5JsCallData;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponseTimestamp:J

.field private mLottieLoadingAnimEnd:J

.field private mLottieLoadingAnimStart:J

.field private mMultiProcessMode:I

.field private mNavUrl:Ljava/lang/String;

.field private mNavigationStart:J

.field private mNetRequestInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNum1000:I

.field private mNum300:I

.field private mNum302:I

.field private mNum304:I

.field private mNum400:I

.field private mNum404:I

.field private mNum500:I

.field private mOpenAppId:Ljava/lang/String;

.field private mOtherLoadNum:I

.field private mOtherLoadSize:J

.field private mOtherReqNum:I

.field private mOtherSize:J

.field private mPageIndex:I

.field private mPageLoad:J

.field private mPageLoadSize:J

.field private mPageNetLoad:J

.field private mPageSize:J

.field private mPageToken:Ljava/lang/String;

.field private mPageUrl:Ljava/lang/String;

.field private mParentAppId:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mPublicId:Ljava/lang/String;

.field private mReferUrl:Ljava/lang/String;

.field private mReferer:Ljava/lang/String;

.field private mReleaseType:Ljava/lang/String;

.field private mRequestLoadNum:I

.field private mRequestNum:I

.field private mResPkgInfo:Ljava/lang/String;

.field private mServerResponse:J

.field private mSessionId:Ljava/lang/String;

.field private mShopId:Ljava/lang/String;

.field private mSizeLimit200:I

.field private mSizeLimit200Urls:Ljava/lang/String;

.field private mSizeLimit60:I

.field private mSizeLoadLimit200:I

.field private mSizeLoadLimit60:I

.field private mSpdyRequestCount:I

.field private mSrcClick:J

.field private mStart:J

.field public mStartElapsedRealtime:J

.field private mStartUrl:Ljava/lang/String;

.field private mStatusCode:I

.field private mStype:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUCCorePerfExtra:Ljava/lang/String;

.field private mUcFistWebView:Z

.field private mUrlList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsePushWindowAnim:Z

.field private mVisible:Ljava/lang/String;

.field private mWebViewIndex:I

.field private mWebViewType:Ljava/lang/String;

.field private multimediaID:Ljava/lang/String;

.field private netErrorJsNum:I

.field private netErrorOtherNum:I

.field private netJsReqNum:I

.field private netJsSize:J

.field private netJsTime:J

.field private netOtherReqNum:I

.field private netOtherSize:J

.field private netOtherTime:J

.field private preConnectRequest:Z

.field private preRender:I

.field private reloadType:I

.field private requestId:Ljava/lang/String;

.field private showErrorPage:Z

.field private spmId:Ljava/lang/String;

.field private ucCacheResNum:I

.field private usePreRequest:Z

.field private useSnapshot:Z

.field private useWebViewPool:Z

.field private warningTipSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xContentVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    const-string v0, "init_uc_unzip_bg"

    const-string v1, "init_uc_unzip"

    const-string v2, "init_uc"

    const-string v3, "init"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "push"

    const-string v6, "load"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageData;->CREATE_SCENARIO_ARRAY:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseUCParallelInit:Z

    .line 33
    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUsePackagePreload:Z

    .line 34
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    .line 35
    const/4 v1, -0x1

    sput v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    .line 36
    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseWebViewPool:Z

    .line 37
    const-wide/16 v1, 0x3c

    sput-wide v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sAppDownloadDelaySeconds:J

    .line 38
    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUcFirstWebView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartElapsedRealtime:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    .line 85
    const-string v0, "NO"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsLocal:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsapiList:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNetRequestInfo:Ljava/util/Map;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUsePushWindowAnim:Z

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->xContentVersion:Ljava/lang/String;

    .line 120
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->usePreRequest:Z

    .line 122
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->preConnectRequest:Z

    .line 124
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useWebViewPool:Z

    .line 130
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->isSpdy:Z

    .line 136
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->showErrorPage:Z

    .line 149
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUcFistWebView:Z

    .line 153
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUCCorePerfExtra:Ljava/lang/String;

    .line 159
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useSnapshot:Z

    .line 161
    const-string/jumbo v1, "production"

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeEnv:Ljava/lang/String;

    .line 163
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeNext:Z

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    .line 190
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCheckFuncStatusList:[I

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->warningTipSet:Ljava/util/HashSet;

    .line 206
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->clear()V

    .line 208
    sget-boolean v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseWebViewPool:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useWebViewPool:Z

    .line 209
    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseWebViewPool:Z

    .line 210
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getEndType()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const-string/jumbo v0, "nav"

    .local v0, "type":Ljava/lang/String;
    goto :goto_0

    .line 315
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "pause"

    .line 317
    .restart local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private getStartType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const-string v1, "H5PageData"

    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v0, "open"

    .line 292
    .local v0, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 293
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    goto :goto_0

    .line 295
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string/jumbo v0, "nav"

    .line 297
    .restart local v0    # "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "lastUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "nav : lastUrl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    .line 300
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 301
    .end local v2    # "lastUrl":Ljava/lang/String;
    goto :goto_0

    .line 302
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "resume"

    .line 303
    .restart local v0    # "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .restart local v2    # "lastUrl":Ljava/lang/String;
    iput-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    .line 306
    .end local v2    # "lastUrl":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStartType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-object v0
.end method

.method public static setInitScenario(JI)V
    .locals 3
    .param p0, "create"    # J
    .param p2, "scenario"    # I

    .line 432
    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setInitScenario fail, sCreateScene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sCreateTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void

    .line 438
    :cond_0
    sput p2, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    .line 439
    sput-wide p0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    .line 440
    return-void
.end method


# virtual methods
.method public addJsapiInfo(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5JsCallData;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alipay/mobile/h5container/api/H5JsCallData;

    .line 1101
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsapiList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    return-void
.end method

.method public addNetRequestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "netInfo"    # Ljava/lang/String;

    .line 1113
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNetRequestInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    return-void
.end method

.method public appendJsApiDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsApiDetail"    # Ljava/lang/String;

    .line 1264
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1265
    .local v1, "detailBytes":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    array-length v0, v1

    const/16 v2, 0x2800

    if-le v0, v2, :cond_0

    .line 1266
    const-string v0, "H5PageData"

    const-string v2, "detailBytes.length > MAX_LOG_LENGTH, return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    return-void

    .line 1269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public appendJsApiPerExtra(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiPerExtra:Ljava/lang/String;

    .line 1401
    return-void
.end method

.method public appendUCCorePerfExtra(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "ucCorePerf"    # Ljava/lang/String;
    .param p2, "limitKB"    # I

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "append ucCorePerf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    if-lez p2, :cond_0

    .line 1482
    mul-int/lit16 v0, p2, 0x400

    .line 1483
    .local v0, "limit":I
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUCCorePerfExtra:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1484
    .local v2, "srcBytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1485
    .local v3, "appendBytes":[B
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    if-le v4, v0, :cond_0

    .line 1487
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ucCorePerf.length >"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const/4 v1, 0x0

    return v1

    .line 1491
    .end local v0    # "limit":I
    .end local v2    # "srcBytes":[B
    .end local v3    # "appendBytes":[B
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUCCorePerfExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUCCorePerfExtra:Ljava/lang/String;

    .line 1492
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 5

    .line 218
    const-string v0, "H5PageData"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "NO"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsLocal:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit200:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit60:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit60:I

    .line 222
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200Urls:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImageSizeLimit60Urls:Ljava/lang/String;

    .line 223
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherReqNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgReqNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsReqNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssReqNum:I

    .line 224
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageIndex:I

    .line 225
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssSize:J

    .line 226
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStype:Ljava/lang/String;

    .line 227
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestLoadNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadNum:I

    .line 228
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum1000:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum500:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum400:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum404:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum300:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum304:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum302:I

    .line 230
    const/16 v4, 0x1b58

    iput v4, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mErrorCode:I

    .line 231
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartElapsedRealtime:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppearFromNative:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEnd:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mComplete:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppear:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstByte:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageSize:J

    .line 232
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoadSize:J

    .line 233
    const-string v4, "N"

    iput-object v4, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mVisible:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProxy:Ljava/lang/String;

    .line 234
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAboutBlankNum:I

    .line 235
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstVisuallyRender:J

    .line 236
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSpdyRequestCount:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH1RequestCount:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH2RequestCount:I

    .line 237
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoad:J

    .line 238
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mContainerVisible:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSrcClick:J

    .line 239
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFromType:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5SessionToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5Token:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mToken:Ljava/lang/String;

    .line 241
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavigationStart:J

    .line 242
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mResPkgInfo:Ljava/lang/String;

    .line 243
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorOtherNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorJsNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherReqNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsReqNum:I

    .line 244
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsSize:J

    .line 245
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->xContentVersion:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->requestId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->eagleId:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->multimediaID:Ljava/lang/String;

    .line 248
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    .line 249
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyCode:I

    .line 250
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyMsg:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->spmId:Ljava/lang/String;

    .line 252
    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->aliRequestResNum:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheResNum:I

    .line 253
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiPerExtra:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->warningTipSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 255
    return-void
.end method

.method public clone()Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .line 214
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->clone()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    return-object v0
.end method

.method public getAbTestUsedTime()I
    .locals 1

    .line 967
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->abTestUsedTime:I

    return v0
.end method

.method public getAboutBlankNum()I
    .locals 1

    .line 900
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAboutBlankNum:I

    return v0
.end method

.method public getAliRequestResNum()I
    .locals 1

    .line 1356
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->aliRequestResNum:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppear()J
    .locals 2

    .line 353
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppear:J

    return-wide v0
.end method

.method public getAppearFromNative()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppearFromNative:J

    return-wide v0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1468
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1469
    .local v1, "val":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1471
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1472
    :catchall_0
    move-exception v0

    .line 1473
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1476
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return p2
.end method

.method public getBugmeEnv()Ljava/lang/String;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeEnv:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckFuncStatus()I
    .locals 4

    .line 1392
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCheckFuncStatusList:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1393
    .local v0, "val":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCheckFuncStatusList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1394
    mul-int/lit8 v3, v0, 0xa

    aget v2, v2, v1

    add-int v0, v3, v2

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public getComplete()J
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mComplete:J

    return-wide v0
.end method

.method public getContainerVisible()J
    .locals 2

    .line 1045
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mContainerVisible:J

    return-wide v0
.end method

.method public getCreate()J
    .locals 2

    .line 409
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreate:J

    return-wide v0
.end method

.method public getCreateScenario()Ljava/lang/String;
    .locals 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCreateScenario: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, ""

    .line 416
    .local v0, "scenario":Ljava/lang/String;
    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    if-ltz v2, :cond_0

    .line 418
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5PageData;->CREATE_SCENARIO_ARRAY:[Ljava/lang/String;

    aget-object v1, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 421
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v2

    .line 420
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "getCreateScenario"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getCssLoadNum()I
    .locals 1

    .line 708
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadNum:I

    return v0
.end method

.method public getCssLoadSize()J
    .locals 2

    .line 596
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadSize:J

    return-wide v0
.end method

.method public getCssReqNum()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssReqNum:I

    return v0
.end method

.method public getCssSize()J
    .locals 2

    .line 660
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssSize:J

    return-wide v0
.end method

.method public getCubeRenderType()Ljava/lang/String;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cubeRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrlContext()Landroid/os/Bundle;
    .locals 5

    .line 1416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1417
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1418
    .local v3, "pageUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1419
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "cleanUrl"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string/jumbo v1, "onlineHost"

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "onlineHost":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1422
    .local v2, "isOnline":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1423
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1425
    :cond_0
    const-string/jumbo v4, "online"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1427
    .end local v1    # "onlineHost":Ljava/lang/String;
    .end local v2    # "isOnline":Z
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    return-object v0
.end method

.method public getCustomParams()Ljava/lang/String;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCustomParams:Ljava/lang/String;

    return-object v0
.end method

.method public getEagleId()Ljava/lang/String;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->eagleId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .line 385
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEnd:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorSpdyCode()I
    .locals 1

    .line 1281
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyCode:I

    return v0
.end method

.method public getErrorSpdyMsg()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstByte()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstByte:J

    return-wide v0
.end method

.method public getFirstVisuallyRender()J
    .locals 2

    .line 999
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstVisuallyRender:J

    return-wide v0
.end method

.method public getFromType()Ljava/lang/String;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFromType:Ljava/lang/String;

    return-object v0
.end method

.method public getH5SessionToken()Ljava/lang/String;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5SessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Token()Ljava/lang/String;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5Token:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlLoadSize()J
    .locals 2

    .line 604
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlLoadSize:J

    return-wide v0
.end method

.method public getHtmlSize()J
    .locals 2

    .line 684
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlSize:J

    return-wide v0
.end method

.method public getImageSizeLimit60Urls()Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImageSizeLimit60Urls:Ljava/lang/String;

    return-object v0
.end method

.method public getImgLoadNum()I
    .locals 1

    .line 716
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadNum:I

    return v0
.end method

.method public getImgLoadSize()J
    .locals 2

    .line 580
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadSize:J

    return-wide v0
.end method

.method public getImgReqNum()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgReqNum:I

    return v0
.end method

.method public getImgSize()J
    .locals 2

    .line 668
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgSize:J

    return-wide v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1452
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1453
    .local v1, "val":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1455
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1456
    :catchall_0
    move-exception v0

    .line 1457
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1460
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return p2
.end method

.method public getIsLocal()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTinyApp()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsTinyApp:Ljava/lang/String;

    return-object v0
.end method

.method public getJsApiDetail()Ljava/lang/String;
    .locals 3

    .line 1257
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiDetail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsLoadNum()I
    .locals 1

    .line 700
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadNum:I

    return v0
.end method

.method public getJsLoadSize()J
    .locals 2

    .line 588
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadSize:J

    return-wide v0
.end method

.method public getJsReqNum()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsReqNum:I

    return v0
.end method

.method public getJsSize()J
    .locals 2

    .line 652
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsSize:J

    return-wide v0
.end method

.method public getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsapiList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5JsCallData;

    return-object v0
.end method

.method public getJsapiInfoList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5JsCallData;",
            ">;"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsapiList:Ljava/util/Map;

    return-object v0
.end method

.method public getLastResponseTimestamp()J
    .locals 5

    .line 1333
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLastResponseTimestamp:J

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 1334
    return-wide v2

    .line 1336
    :cond_0
    return-wide v0
.end method

.method public getLottieLoadingAnimEnd()J
    .locals 2

    .line 1384
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLottieLoadingAnimEnd:J

    return-wide v0
.end method

.method public getLottieLoadingAnimStart()J
    .locals 2

    .line 1368
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLottieLoadingAnimStart:J

    return-wide v0
.end method

.method public getMultiProcessMode()I
    .locals 1

    .line 1344
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mMultiProcessMode:I

    return v0
.end method

.method public getMultimediaID()Ljava/lang/String;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->multimediaID:Ljava/lang/String;

    return-object v0
.end method

.method public getNavUrl()Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationStart()J
    .locals 2

    .line 1121
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavigationStart:J

    return-wide v0
.end method

.method public getNetErrorJsNum()I
    .locals 1

    .line 1153
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorJsNum:I

    return v0
.end method

.method public getNetErrorOtherNum()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorOtherNum:I

    return v0
.end method

.method public getNetJsReqNum()I
    .locals 1

    .line 1137
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsReqNum:I

    return v0
.end method

.method public getNetJsSize()J
    .locals 2

    .line 1169
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsSize:J

    return-wide v0
.end method

.method public getNetJsTime()J
    .locals 2

    .line 1185
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsTime:J

    return-wide v0
.end method

.method public getNetOtherReqNum()I
    .locals 1

    .line 1145
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherReqNum:I

    return v0
.end method

.method public getNetOtherSize()J
    .locals 2

    .line 1177
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherSize:J

    return-wide v0
.end method

.method public getNetOtherTime()J
    .locals 2

    .line 1193
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherTime:J

    return-wide v0
.end method

.method public getNetRequestInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNetRequestInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getNum1000()I
    .locals 1

    .line 836
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum1000:I

    return v0
.end method

.method public getNum300()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum300:I

    return v0
.end method

.method public getNum302()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum302:I

    return v0
.end method

.method public getNum304()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum304:I

    return v0
.end method

.method public getNum400()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum400:I

    return v0
.end method

.method public getNum404()I
    .locals 1

    .line 812
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum404:I

    return v0
.end method

.method public getNum500()I
    .locals 1

    .line 828
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum500:I

    return v0
.end method

.method public getOpenAppId()Ljava/lang/String;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOpenAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherLoadNum()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadNum:I

    return v0
.end method

.method public getOtherLoadSize()J
    .locals 2

    .line 572
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadSize:J

    return-wide v0
.end method

.method public getOtherReqNum()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherReqNum:I

    return v0
.end method

.method public getOtherSize()J
    .locals 2

    .line 676
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherSize:J

    return-wide v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 464
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageIndex:I

    return v0
.end method

.method public getPageInfo()Ljava/lang/String;
    .locals 3

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 341
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, "^publicId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPublicId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "^viewId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageUrl:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^refviewId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageLoad()J
    .locals 2

    .line 1033
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoad:J

    return-wide v0
.end method

.method public getPageLoadSize()J
    .locals 2

    .line 564
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoadSize:J

    return-wide v0
.end method

.method public getPageNetLoad()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageNetLoad:J

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 692
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageSize:J

    return-wide v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentAppId()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mParentAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreRender()I
    .locals 1

    .line 1061
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->preRender:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferUrl()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferer:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReleaseType:Ljava/lang/String;

    return-object v0
.end method

.method public getReloadType()I
    .locals 1

    .line 1313
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->reloadType:I

    return v0
.end method

.method public getRequestCountByProtocal(Ljava/lang/String;)I
    .locals 1
    .param p1, "protocal"    # Ljava/lang/String;

    .line 1003
    const-string/jumbo v0, "spdy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSpdyRequestCount:I

    return v0

    .line 1005
    :cond_0
    const-string v0, "h2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH2RequestCount:I

    return v0

    .line 1008
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH1RequestCount:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLoadNum()I
    .locals 1

    .line 732
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestLoadNum:I

    return v0
.end method

.method public getRequestNum()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestNum:I

    return v0
.end method

.method public getResPkgInfo()Ljava/lang/String;
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mResPkgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getServerResponse()J
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mServerResponse:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mShopId:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeLimit200()I
    .locals 1

    .line 756
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200:I

    return v0
.end method

.method public getSizeLimit200Urls()Ljava/lang/String;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200Urls:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeLimit60()I
    .locals 1

    .line 740
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit60:I

    return v0
.end method

.method public getSizeLoadLimit200()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit200:I

    return v0
.end method

.method public getSizeLoadLimit60()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit60:I

    return v0
.end method

.method public getSpmId()Ljava/lang/String;
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->spmId:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcClick()J
    .locals 2

    .line 1037
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSrcClick:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    return-wide v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStatusCode:I

    return v0
.end method

.method public getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1437
    .local v1, "val":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1439
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1440
    :catchall_0
    move-exception v0

    .line 1441
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "H5PageData"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1444
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object p2
.end method

.method public getStype()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStype:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUCCorePerfExtra()Ljava/lang/String;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUCCorePerfExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getUcCacheResNum()I
    .locals 1

    .line 1348
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheResNum:I

    return v0
.end method

.method public getUrlList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getVisible()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mVisible:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningTipSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->warningTipSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mWebViewIndex:I

    return v0
.end method

.method public getWebViewType()Ljava/lang/String;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mWebViewType:Ljava/lang/String;

    return-object v0
.end method

.method public getXContentVersion()Ljava/lang/String;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->xContentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getsApiPerExtra()Ljava/lang/String;
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsApiPerExtra:Ljava/lang/String;

    return-object v0
.end method

.method public isNebulaX()Z
    .locals 1

    .line 1516
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->isNebulaX:Z

    return v0
.end method

.method public isPreConnectRequest()Z
    .locals 1

    .line 1233
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->preConnectRequest:Z

    return v0
.end method

.method public isShowErrorPage()Z
    .locals 1

    .line 1305
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->showErrorPage:Z

    return v0
.end method

.method public isSpdy()Z
    .locals 1

    .line 1273
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->isSpdy:Z

    return v0
.end method

.method public isUcFistWebView()Z
    .locals 1

    .line 1376
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUcFistWebView:Z

    return v0
.end method

.method public isUsePreRequest()Z
    .locals 1

    .line 1225
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->usePreRequest:Z

    return v0
.end method

.method public isUsePushWindowAnim()Z
    .locals 1

    .line 1504
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUsePushWindowAnim:Z

    return v0
.end method

.method public isUseSnapshot()Z
    .locals 1

    .line 1532
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useSnapshot:Z

    return v0
.end method

.method public isUseWebViewPool()Z
    .locals 1

    .line 1241
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useWebViewPool:Z

    return v0
.end method

.method public isValid()Z
    .locals 5

    .line 258
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPageEnded(Ljava/lang/String;)V
    .locals 5
    .param p1, "eType"    # Ljava/lang/String;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEnd:J

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getEndType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    .line 281
    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppear:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 282
    const-string v0, "Y"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mVisible:Ljava/lang/String;

    return-void

    .line 284
    :cond_1
    const-string v0, "N"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mVisible:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartElapsedRealtime:J

    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageUrl:Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStartType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStype:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public putBooleanExtra(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1464
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    return-void
.end method

.method public putIntExtra(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1448
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    return-void
.end method

.method public putStringExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1432
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    return-void
.end method

.method public resetPageToken()V
    .locals 1

    .line 270
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageToken:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setAbTestUsedTime(I)V
    .locals 0
    .param p1, "abTestUsedTime"    # I

    .line 974
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->abTestUsedTime:I

    .line 975
    return-void
.end method

.method public setAboutBlankNum(I)V
    .locals 0
    .param p1, "aboutBlankNum"    # I

    .line 904
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAboutBlankNum:I

    .line 905
    return-void
.end method

.method public setAliRequestResNum(I)V
    .locals 0
    .param p1, "aliRequestResNum"    # I

    .line 1360
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->aliRequestResNum:I

    .line 1361
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 856
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppId:Ljava/lang/String;

    .line 857
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .line 880
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppVersion:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setAppear(J)V
    .locals 0
    .param p1, "appear"    # J

    .line 357
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppear:J

    .line 358
    return-void
.end method

.method public setAppearFromNative(J)V
    .locals 0
    .param p1, "appearFromNative"    # J

    .line 365
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppearFromNative:J

    .line 366
    return-void
.end method

.method public setBugmeEnv(Ljava/lang/String;)V
    .locals 0
    .param p1, "bugmeEnv"    # Ljava/lang/String;

    .line 1540
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeEnv:Ljava/lang/String;

    .line 1541
    return-void
.end method

.method public setBugmeNext(Z)V
    .locals 0
    .param p1, "bugmeNext"    # Z

    .line 1548
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeNext:Z

    .line 1549
    return-void
.end method

.method public setComplete(J)V
    .locals 0
    .param p1, "complete"    # J

    .line 381
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mComplete:J

    .line 382
    return-void
.end method

.method public setContainerVisible(J)V
    .locals 0
    .param p1, "mContainerVisible"    # J

    .line 1049
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mContainerVisible:J

    .line 1050
    return-void
.end method

.method public setCreate(JI)V
    .locals 4
    .param p1, "create"    # J
    .param p3, "scenario"    # I

    .line 443
    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    const-string v1, "H5PageData"

    if-ltz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "use sCreateScene: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sCreateTimestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget p3, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    .line 447
    sget-wide p1, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    .line 448
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    .line 449
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    .line 453
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    if-ltz v0, :cond_1

    if-ge v0, p3, :cond_1

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCreate fail, mCreate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCreateScenario: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 459
    :cond_1
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreate:J

    .line 460
    iput p3, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    .line 461
    return-void
.end method

.method public setCreateScenario(I)V
    .locals 0
    .param p1, "createScenario"    # I

    .line 427
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCreateScenario:I

    .line 428
    return-void
.end method

.method public setCssLoadNum(I)V
    .locals 0
    .param p1, "cssLoadNum"    # I

    .line 712
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadNum:I

    .line 713
    return-void
.end method

.method public setCssLoadSize(J)V
    .locals 0
    .param p1, "cssLoadSize"    # J

    .line 600
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssLoadSize:J

    .line 601
    return-void
.end method

.method public setCssReqNum(I)V
    .locals 0
    .param p1, "cssReqNum"    # I

    .line 616
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssReqNum:I

    .line 617
    return-void
.end method

.method public setCssSize(J)V
    .locals 0
    .param p1, "cssSize"    # J

    .line 664
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCssSize:J

    .line 665
    return-void
.end method

.method public setCubeRenderType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cubeRenderType"    # Ljava/lang/String;

    .line 1528
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cubeRenderType:Ljava/lang/String;

    .line 1529
    return-void
.end method

.method public setCustomParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "customParams"    # Ljava/lang/String;

    .line 896
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCustomParams:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setEagleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eagleId"    # Ljava/lang/String;

    .line 1213
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->eagleId:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method public setEnd(J)V
    .locals 0
    .param p1, "end"    # J

    .line 389
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEnd:J

    .line 390
    return-void
.end method

.method public setErrorCode(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mErrorCode:I

    .line 494
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 1325
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorMsg:Ljava/lang/String;

    .line 1326
    return-void
.end method

.method public setErrorSpdyCode(I)V
    .locals 0
    .param p1, "errorSpdyCode"    # I

    .line 1285
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyCode:I

    .line 1286
    return-void
.end method

.method public setErrorSpdyMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorSpdyMsg"    # Ljava/lang/String;

    .line 1293
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorSpdyMsg:Ljava/lang/String;

    .line 1294
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "etype"    # Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setFirstByte(J)V
    .locals 0
    .param p1, "firstByte"    # J

    .line 373
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstByte:J

    .line 374
    return-void
.end method

.method public setFirstVisuallyRender(J)V
    .locals 5
    .param p1, "time"    # J

    .line 994
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstVisuallyRender:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 995
    :cond_0
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFirstVisuallyRender:J

    .line 996
    return-void
.end method

.method public setFromType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromType"    # Ljava/lang/String;

    .line 1057
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mFromType:Ljava/lang/String;

    .line 1058
    return-void
.end method

.method public setFunctionHasCallback(I)V
    .locals 2
    .param p1, "funcName"    # I

    .line 1388
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mCheckFuncStatusList:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 1389
    return-void
.end method

.method public setH5SessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mH5SessionToken"    # Ljava/lang/String;

    .line 1097
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5SessionToken:Ljava/lang/String;

    .line 1098
    return-void
.end method

.method public setH5Token(Ljava/lang/String;)V
    .locals 0
    .param p1, "mH5Token"    # Ljava/lang/String;

    .line 1089
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH5Token:Ljava/lang/String;

    .line 1090
    return-void
.end method

.method public setHtmlLoadSize(J)V
    .locals 0
    .param p1, "htmlLoadSize"    # J

    .line 608
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlLoadSize:J

    .line 609
    return-void
.end method

.method public setHtmlSize(J)V
    .locals 0
    .param p1, "htmlSize"    # J

    .line 688
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mHtmlSize:J

    .line 689
    return-void
.end method

.method public setImageSizeLimit60Urls(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageSizeLimit60Urls"    # Ljava/lang/String;

    .line 776
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImageSizeLimit60Urls:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setImgLoadNum(I)V
    .locals 0
    .param p1, "imgLoadNum"    # I

    .line 720
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadNum:I

    .line 721
    return-void
.end method

.method public setImgLoadSize(J)V
    .locals 0
    .param p1, "imgLoadSize"    # J

    .line 584
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgLoadSize:J

    .line 585
    return-void
.end method

.method public setImgReqNum(I)V
    .locals 0
    .param p1, "imgReqNum"    # I

    .line 632
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgReqNum:I

    .line 633
    return-void
.end method

.method public setImgSize(J)V
    .locals 0
    .param p1, "imgSize"    # J

    .line 672
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mImgSize:J

    .line 673
    return-void
.end method

.method public setIsLocal(Ljava/lang/String;)V
    .locals 0
    .param p1, "isLocal"    # Ljava/lang/String;

    .line 928
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsLocal:Ljava/lang/String;

    .line 929
    return-void
.end method

.method public setIsTinyApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "isTinyApp"    # Ljava/lang/String;

    .line 944
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mIsTinyApp:Ljava/lang/String;

    .line 945
    return-void
.end method

.method public setJsLoadNum(I)V
    .locals 0
    .param p1, "jsLoadNum"    # I

    .line 704
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadNum:I

    .line 705
    return-void
.end method

.method public setJsLoadSize(J)V
    .locals 0
    .param p1, "jsLoadSize"    # J

    .line 592
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsLoadSize:J

    .line 593
    return-void
.end method

.method public setJsReqNum(I)V
    .locals 0
    .param p1, "jsReqNum"    # I

    .line 624
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsReqNum:I

    .line 625
    return-void
.end method

.method public setJsSize(J)V
    .locals 0
    .param p1, "jsSize"    # J

    .line 656
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mJsSize:J

    .line 657
    return-void
.end method

.method public setLastResponseTimestamp(J)V
    .locals 0
    .param p1, "timeMillis"    # J

    .line 1329
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLastResponseTimestamp:J

    .line 1330
    return-void
.end method

.method public setLottieLoadingAnimEnd(J)V
    .locals 0
    .param p1, "timeMillis"    # J

    .line 1372
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLottieLoadingAnimEnd:J

    .line 1373
    return-void
.end method

.method public setLottieLoadingAnimStart(J)V
    .locals 0
    .param p1, "timeMillis"    # J

    .line 1364
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mLottieLoadingAnimStart:J

    .line 1365
    return-void
.end method

.method public setMultiProcessMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1340
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mMultiProcessMode:I

    .line 1341
    return-void
.end method

.method public setMultimediaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "multimediaID"    # Ljava/lang/String;

    .line 1253
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->multimediaID:Ljava/lang/String;

    .line 1254
    return-void
.end method

.method public setNavUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "navUrl"    # Ljava/lang/String;

    .line 848
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavUrl:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setNavigationStart(J)V
    .locals 0
    .param p1, "navigationStart"    # J

    .line 1125
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNavigationStart:J

    .line 1126
    return-void
.end method

.method public setNebulaX(Z)V
    .locals 0
    .param p1, "nebulaX"    # Z

    .line 1520
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->isNebulaX:Z

    .line 1521
    return-void
.end method

.method public setNetErrorJsNum(I)V
    .locals 0
    .param p1, "netErrorJsNum"    # I

    .line 1157
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorJsNum:I

    .line 1158
    return-void
.end method

.method public setNetErrorOtherNum(I)V
    .locals 0
    .param p1, "netErrorOtherNum"    # I

    .line 1165
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netErrorOtherNum:I

    .line 1166
    return-void
.end method

.method public setNetJsReqNum(I)V
    .locals 0
    .param p1, "netJsReqNum"    # I

    .line 1141
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsReqNum:I

    .line 1142
    return-void
.end method

.method public setNetJsSize(J)V
    .locals 0
    .param p1, "netJsSize"    # J

    .line 1173
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsSize:J

    .line 1174
    return-void
.end method

.method public setNetJsTime(J)V
    .locals 0
    .param p1, "netJsTime"    # J

    .line 1189
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netJsTime:J

    .line 1190
    return-void
.end method

.method public setNetOtherReqNum(I)V
    .locals 0
    .param p1, "netOtherReqNum"    # I

    .line 1149
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherReqNum:I

    .line 1150
    return-void
.end method

.method public setNetOtherSize(J)V
    .locals 0
    .param p1, "netOtherSize"    # J

    .line 1181
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherSize:J

    .line 1182
    return-void
.end method

.method public setNetOtherTime(J)V
    .locals 0
    .param p1, "netOtherTime"    # J

    .line 1197
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->netOtherTime:J

    .line 1198
    return-void
.end method

.method public setNum1000(I)V
    .locals 0
    .param p1, "num1000"    # I

    .line 840
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum1000:I

    .line 841
    return-void
.end method

.method public setNum300(I)V
    .locals 0
    .param p1, "num300"    # I

    .line 808
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum300:I

    .line 809
    return-void
.end method

.method public setNum302(I)V
    .locals 0
    .param p1, "num302"    # I

    .line 792
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum302:I

    .line 793
    return-void
.end method

.method public setNum304(I)V
    .locals 0
    .param p1, "num304"    # I

    .line 800
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum304:I

    .line 801
    return-void
.end method

.method public setNum400(I)V
    .locals 0
    .param p1, "num400"    # I

    .line 824
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum400:I

    .line 825
    return-void
.end method

.method public setNum404(I)V
    .locals 0
    .param p1, "num404"    # I

    .line 816
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum404:I

    .line 817
    return-void
.end method

.method public setNum500(I)V
    .locals 0
    .param p1, "num500"    # I

    .line 832
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mNum500:I

    .line 833
    return-void
.end method

.method public setOpenAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openAppId"    # Ljava/lang/String;

    .line 952
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOpenAppId:Ljava/lang/String;

    .line 953
    return-void
.end method

.method public setOtherLoadNum(I)V
    .locals 0
    .param p1, "otherLoadNum"    # I

    .line 728
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadNum:I

    .line 729
    return-void
.end method

.method public setOtherLoadSize(J)V
    .locals 0
    .param p1, "otherLoadSize"    # J

    .line 576
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherLoadSize:J

    .line 577
    return-void
.end method

.method public setOtherReqNum(I)V
    .locals 0
    .param p1, "otherReqNum"    # I

    .line 640
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherReqNum:I

    .line 641
    return-void
.end method

.method public setOtherSize(J)V
    .locals 0
    .param p1, "otherSize"    # J

    .line 680
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mOtherSize:J

    .line 681
    return-void
.end method

.method public setPageIndex(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .line 468
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageIndex:I

    .line 469
    return-void
.end method

.method public setPageLoad(J)V
    .locals 0
    .param p1, "pageLoad"    # J

    .line 1029
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoad:J

    .line 1030
    return-void
.end method

.method public setPageLoadSize(J)V
    .locals 0
    .param p1, "pageLoadSize"    # J

    .line 568
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageLoadSize:J

    .line 569
    return-void
.end method

.method public setPageNetLoad(J)V
    .locals 0
    .param p1, "pageNetLoad"    # J

    .line 397
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageNetLoad:J

    .line 398
    return-void
.end method

.method public setPageSize(J)V
    .locals 0
    .param p1, "pageSize"    # J

    .line 696
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageSize:J

    .line 697
    return-void
.end method

.method public setPageToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageToken"    # Ljava/lang/String;

    .line 920
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageToken:Ljava/lang/String;

    .line 921
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageUrl"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageUrl:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setParentAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentAppId"    # Ljava/lang/String;

    .line 864
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mParentAppId:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setPreConnectRequest(Z)V
    .locals 0
    .param p1, "preConnect"    # Z

    .line 1237
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->preConnectRequest:Z

    .line 1238
    return-void
.end method

.method public setPreRender(I)V
    .locals 0
    .param p1, "preRender"    # I

    .line 1065
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->preRender:I

    .line 1066
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 990
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProtocol:Ljava/lang/String;

    .line 991
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;

    .line 552
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProxy:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .line 872
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPublicId:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public setReferUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "referUrl"    # Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setReferUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferUrl:Ljava/lang/String;

    .line 529
    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 2
    .param p1, "referer"    # Ljava/lang/String;

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setReferer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferer:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 936
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReleaseType:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public setReloadType(I)V
    .locals 0
    .param p1, "reloadType"    # I

    .line 1317
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->reloadType:I

    .line 1318
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .line 1221
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->requestId:Ljava/lang/String;

    .line 1222
    return-void
.end method

.method public setRequestLoadNum(I)V
    .locals 0
    .param p1, "requestLoadNum"    # I

    .line 736
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestLoadNum:I

    .line 737
    return-void
.end method

.method public setRequestNum(I)V
    .locals 0
    .param p1, "requestNum"    # I

    .line 648
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mRequestNum:I

    .line 649
    return-void
.end method

.method public setResPkgInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mResPkgInfo"    # Ljava/lang/String;

    .line 1133
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mResPkgInfo:Ljava/lang/String;

    .line 1134
    return-void
.end method

.method public setServerResponse(J)V
    .locals 0
    .param p1, "serverResponse"    # J

    .line 405
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mServerResponse:J

    .line 406
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 1069
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSessionId:Ljava/lang/String;

    .line 1070
    return-void
.end method

.method public setShopId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shopId"    # Ljava/lang/String;

    .line 960
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mShopId:Ljava/lang/String;

    .line 961
    return-void
.end method

.method public setShowErrorPage(Z)V
    .locals 0
    .param p1, "showErrorPage"    # Z

    .line 1309
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->showErrorPage:Z

    .line 1310
    return-void
.end method

.method public setSizeLimit200(I)V
    .locals 0
    .param p1, "sizeLimit200"    # I

    .line 760
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200:I

    .line 761
    return-void
.end method

.method public setSizeLimit200Urls(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeLimit200Urls"    # Ljava/lang/String;

    .line 784
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit200Urls:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setSizeLimit60(I)V
    .locals 0
    .param p1, "sizeLimit60"    # I

    .line 744
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLimit60:I

    .line 745
    return-void
.end method

.method public setSizeLoadLimit200(I)V
    .locals 0
    .param p1, "sizeLoadLimit200"    # I

    .line 768
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit200:I

    .line 769
    return-void
.end method

.method public setSizeLoadLimit60(I)V
    .locals 0
    .param p1, "sizeLoadLimit60"    # I

    .line 752
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSizeLoadLimit60:I

    .line 753
    return-void
.end method

.method public setSpdy(Z)V
    .locals 0
    .param p1, "spdy"    # Z

    .line 1277
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->isSpdy:Z

    .line 1278
    return-void
.end method

.method public setSpmId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSpmId"    # Ljava/lang/String;

    .line 1301
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->spmId:Ljava/lang/String;

    .line 1302
    return-void
.end method

.method public setSrcClick(J)V
    .locals 0
    .param p1, "mSrcClick"    # J

    .line 1041
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSrcClick:J

    .line 1042
    return-void
.end method

.method public setStartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 1508
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartUrl:Ljava/lang/String;

    .line 1509
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 484
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStatusCode:I

    .line 485
    return-void
.end method

.method public setStype(Ljava/lang/String;)V
    .locals 0
    .param p1, "stype"    # Ljava/lang/String;

    .line 536
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStype:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 560
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mTitle:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Ljava/lang/String;

    .line 1081
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mToken:Ljava/lang/String;

    .line 1082
    return-void
.end method

.method public setUcCacheResNum(I)V
    .locals 0
    .param p1, "ucCacheResNum"    # I

    .line 1352
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheResNum:I

    .line 1353
    return-void
.end method

.method public setUcFistWebView()V
    .locals 1

    .line 1380
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sUcFirstWebView:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUcFistWebView:Z

    .line 1381
    return-void
.end method

.method public setUrlList(Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "urlList"    # Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 888
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUrlList:Ljava/util/LinkedList;

    .line 889
    return-void
.end method

.method public setUsePreRequest(Z)V
    .locals 0
    .param p1, "usePreRequest"    # Z

    .line 1229
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->usePreRequest:Z

    .line 1230
    return-void
.end method

.method public setUsePushWindowAnim(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1500
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mUsePushWindowAnim:Z

    .line 1501
    return-void
.end method

.method public setUseSnapshot(Z)V
    .locals 0
    .param p1, "useSnapshot"    # Z

    .line 1536
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useSnapshot:Z

    .line 1537
    return-void
.end method

.method public setUseWebViewPool(Z)V
    .locals 0
    .param p1, "useWebViewPool"    # Z

    .line 1245
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->useWebViewPool:Z

    .line 1246
    return-void
.end method

.method public setVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVisible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mVisible:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setWebViewIndex(I)V
    .locals 0
    .param p1, "webViewIndex"    # I

    .line 476
    iput p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mWebViewIndex:I

    .line 477
    return-void
.end method

.method public setWebViewType(Ljava/lang/String;)V
    .locals 0
    .param p1, "webViewType"    # Ljava/lang/String;

    .line 912
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mWebViewType:Ljava/lang/String;

    .line 913
    return-void
.end method

.method public setXContentVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xContentVersion"    # Ljava/lang/String;

    .line 1205
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->xContentVersion:Ljava/lang/String;

    .line 1206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 322
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^error="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStatusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, "^visible=Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^start="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^appear="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mAppear:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^complete="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mComplete:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^end="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^stype="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^etype="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mEtype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^proxy="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mProxy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^title="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^referer="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mReferer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v0, "^xurl=null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^pageSize="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mPageSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRequestCountByProtocal(Ljava/lang/String;)V
    .locals 5
    .param p1, "protocal"    # Ljava/lang/String;

    .line 1014
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageLoad()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1015
    return-void

    .line 1017
    :cond_0
    const-string/jumbo v0, "spdy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSpdyRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSpdyRequestCount:I

    goto :goto_0

    .line 1019
    :cond_1
    const-string v0, "h2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH2RequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH2RequestCount:I

    goto :goto_0

    .line 1022
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH1RequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH1RequestCount:I

    .line 1024
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h2count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH2RequestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spdycount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mSpdyRequestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h1count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mH1RequestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public useBugmeNext()Z
    .locals 1

    .line 1552
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->mBugmeNext:Z

    return v0
.end method

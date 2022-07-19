.class public Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;
.implements Lcom/alipay/mobile/nebula/webview/APWebViewPerformance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;,
        Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;,
        Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UCWebView"

.field public static final WEBVIEW_VERSION:Ljava/lang/String;

.field private static ifRedirectDNS4UC:Z

.field private static sActualProcessMode:I

.field private static sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

.field private static sFirstWebView:Z

.field private static sHasCheckRenderProcessReady:Z

.field private static sHasDestroyNonIsolateStaticWebView:Z

.field private static sHasReportRenderProcessLaunchFailed:Z

.field private static sIsAppxJsPreloaded:Z

.field private static sNeedReportTrace:Z

.field private static final sPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/mobile/nebulauc/impl/UCWebView;",
            ">;"
        }
    .end annotation
.end field

.field private static sRenderProcessReady:Z

.field private static sUcInitStuffDone:Z

.field private static sWaitPreCreating:Z

.field private static sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# instance fields
.field private apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

.field private context:Landroid/content/Context;

.field private h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

.field private ifRedirectDNS4UCConfigStr:Ljava/lang/String;

.field private isEmbedWebview:Z

.field private isNebulaX:Z

.field private mFirstLoadUrl:Z

.field private mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

.field private mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

.field private mIsMultiProcessPreCreate:Z

.field private mPageStartUnCalled:Z

.field private mScale:F

.field private ucStartupPerformanceCallback:Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;

.field private webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private webView:Lcom/uc/webview/export/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    .line 134
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    .line 140
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    .line 142
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    .line 144
    const/4 v2, 0x0

    sput-object v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 152
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasCheckRenderProcessReady:Z

    .line 154
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    .line 156
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasReportRenderProcessLaunchFailed:Z

    .line 158
    sput v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I

    .line 160
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    .line 162
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasDestroyNonIsolateStaticWebView:Z

    .line 164
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    .line 402
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sFirstWebView:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mPageStartUnCalled:Z

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mFirstLoadUrl:Z

    .line 150
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mIsMultiProcessPreCreate:Z

    .line 170
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isEmbedWebview:Z

    .line 174
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isNebulaX:Z

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 406
    .local v2, "start":J
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    const-string v5, "firstWebView"

    if-nez v4, :cond_0

    .line 407
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    .line 408
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 409
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcReallyInitSuccess:Z

    if-eqz v4, :cond_0

    .line 410
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updatePrivateDataDirectorySuffix()V

    .line 414
    :cond_0
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    sput-boolean v4, Lcom/alipay/mobile/h5container/api/H5PageData;->sUcFirstWebView:Z

    .line 416
    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;

    const/4 v6, 0x0

    invoke-direct {v4, p0, p1, v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .line 418
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->initUCWebView()V

    .line 419
    const-string v4, "h5_ifRedirectDNS4UC"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UCConfigStr:Ljava/lang/String;

    .line 421
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    if-nez v4, :cond_4

    .line 422
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    .line 423
    const-string v4, "H5UCWebView"

    const-string v7, "Do uc init stuff after first UCWebView created!"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v7, "[UcNetworkSetup] new init Timing!"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initNetworkConfig()V

    .line 427
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->disableAR()Z

    move-result v7

    if-nez v7, :cond_1

    .line 428
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->init()V

    .line 430
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerCallback()V

    .line 431
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerController()V

    .line 432
    const-string v7, "h5_ucApolloConfig"

    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 433
    .local v7, "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    const/4 v8, 0x0

    .line 434
    .local v8, "useApollo":Z
    const/4 v9, 0x1

    .line 435
    .local v9, "downloadApolloIn4G":Z
    const/4 v10, 0x0

    .line 436
    .local v10, "downloadApolloInLiteProcess":Z
    if-eqz v7, :cond_2

    .line 437
    const-string v11, "useApollo"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "YES"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 438
    const-string v11, "downloadApolloIn4G"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 439
    const-string v11, "downloadApolloInLiteProcess"

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 442
    :cond_2
    if-nez v7, :cond_3

    goto :goto_0

    .line 444
    :cond_3
    const-string v6, "downloadUrl"

    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 442
    :goto_0
    invoke-static {p1, v8, v6, v9, v10}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J

    .line 447
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->init()V

    .line 448
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->clearUcHttpCache()V

    .line 449
    const-string v6, "h5_ucCommonConfigAfterCreateWebView"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCommonConfig(Ljava/lang/String;)V

    .line 452
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v6

    .line 453
    .local v6, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "h5_action_uc_init_finish_completely"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "result"

    invoke-virtual {v11, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    invoke-virtual {v6, v11}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    nop

    .end local v6    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v11    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 456
    :catchall_0
    move-exception v1

    .line 457
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v6, "sendBroadcast"

    invoke-static {v4, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v7    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "useApollo":Z
    .end local v9    # "downloadApolloIn4G":Z
    .end local v10    # "downloadApolloInLiteProcess":Z
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 463
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    .line 464
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 465
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-string v4, "UcSetupTracing"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 472
    :cond_5
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sFirstWebView:Z

    if-eqz v1, :cond_6

    .line 473
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sFirstWebView:Z

    .line 474
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerCostMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Cost_Nebula_InitUcCreateFirstWebView:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 474
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_6
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    .line 110
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasReportRenderProcessLaunchFailed:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 110
    sput-boolean p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasReportRenderProcessLaunchFailed:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 110
    sput-boolean p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportPageStartUnCalled()V

    return-void
.end method

.method static synthetic access$1200(IZZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 110
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportMultiProcessLaunchStatus(IZZ)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasDestroyNonIsolateStaticWebView:Z

    return v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportCreateIsolateStaticView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/uc/webview/export/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 110
    sget v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 110
    sput p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I

    return p0
.end method

.method static synthetic access$200()Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .locals 1

    .line 110
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    return-object v0
.end method

.method static synthetic access$2000()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 110
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    sput-object p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWebviewForMultiProcess:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    .line 110
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    return v0
.end method

.method static synthetic access$600(Lcom/uc/webview/export/WebView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/uc/webview/export/WebView;
    .param p1, "x1"    # Z

    .line 110
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->renderProcessReady(Lcom/uc/webview/export/WebView;Z)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportReleaseNonIsolateStaticView()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V

    return-void
.end method

.method private checkRenderProcessStatus()V
    .locals 3

    .line 728
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    if-eqz v0, :cond_0

    .line 729
    return-void

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mIsMultiProcessPreCreate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mFirstLoadUrl:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    const-string v0, "firstLoadUrl"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mPageStartUnCalled:Z

    .line 734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mFirstLoadUrl:Z

    .line 735
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasCheckRenderProcessReady:Z

    if-nez v1, :cond_1

    .line 736
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasCheckRenderProcessReady:Z

    .line 737
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$8;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 747
    :cond_1
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    monitor-enter v0

    .line 334
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getInstance(Landroid/content/Context;ZZ)Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 334
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;ZZ)Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNebulaX"    # Z
    .param p2, "isEmbedWebview"    # Z

    const-class v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    monitor-enter v0

    .line 339
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "h5_disable_uc_precreate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    monitor-exit v0

    return-object v1

    .line 345
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_0
    :try_start_1
    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-gtz v1, :cond_1

    .line 346
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 347
    .restart local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    monitor-exit v0

    return-object v1

    .line 352
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_1
    if-eqz p1, :cond_2

    .line 353
    if-eqz p2, :cond_3

    .line 354
    :try_start_2
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 355
    .restart local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    monitor-exit v0

    return-object v1

    .line 360
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isH5Activity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 361
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    monitor-exit v0

    return-object v1

    .line 368
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_3
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 370
    .restart local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    monitor-exit v0

    return-object v1

    .line 374
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_4
    :try_start_5
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_7

    .line 376
    :try_start_6
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 377
    .local v1, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-eqz v2, :cond_6

    .line 378
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 379
    iget-object v2, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 380
    iput-object p0, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .line 381
    const-string v2, "H5UCWebView"

    const-string v3, "WebView get from pool"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseWebViewPool:Z

    .line 383
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    if-eqz v2, :cond_5

    .line 384
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 386
    :cond_5
    monitor-exit v0

    return-object v1

    .line 390
    .end local v1    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_6
    goto :goto_0

    .line 388
    :catchall_0
    move-exception v1

    .line 389
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_7
    const-string v2, "H5UCWebView"

    const-string v3, "WebView get from pool"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_7
    :goto_0
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v1, "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setNebulaX(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 395
    monitor-exit v0

    return-object v1

    .line 338
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "isNebulaX":Z
    .end local p2    # "isEmbedWebview":Z
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initUCWebView()V
    .locals 4

    .line 520
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;-><init>(Lcom/uc/webview/export/WebView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 522
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    .line 523
    .local v0, "coreType":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 534
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/CookieManager;->setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V

    .line 536
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->sWirelessDebugOpening:Z

    if-eqz v1, :cond_0

    const-string v1, "h5_enable_ri_wired_debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    invoke-static {v2}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 541
    invoke-static {v3}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 543
    :cond_0
    return-void

    .line 529
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "abort uc no extension."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_2
    const-string v1, "H5UCWebView"

    const-string v2, "abort uc android webview."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isH5Activity(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1468
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1469
    return v0

    .line 1471
    :cond_0
    instance-of v1, p0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    .line 1472
    move-object v1, p0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v1}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 1476
    :cond_1
    :try_start_0
    const-string v1, "com.alipay.mobile.nebulacore.ui.H5Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1477
    .local v1, "h5ActivityClz":Ljava/lang/Class;
    const-string v2, "H5UCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isH5Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isAssignableFrom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    if-eqz v1, :cond_2

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1483
    .end local v1    # "h5ActivityClz":Ljava/lang/Class;
    :cond_2
    nop

    .line 1484
    return v0

    .line 1481
    :catchall_0
    move-exception v1

    .line 1482
    .local v1, "t":Ljava/lang/Throwable;
    return v0
.end method

.method private static preCreate()V
    .locals 6

    .line 284
    new-instance v0, Landroid/content/MutableContextWrapper;

    .line 285
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "contextWrapper":Landroid/content/MutableContextWrapper;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v2, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    invoke-direct {v3, v2, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    goto :goto_0

    .line 291
    .end local v2    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catchall_0
    move-exception v2

    .line 292
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "H5UCWebView"

    const-string v4, "create uc webView exception."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    const-string v4, "H5_UC_CREATE_FAILED"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    sget-object v5, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 297
    const-string v5, "ucVersion"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ext0"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 294
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move-object v2, v3

    .line 301
    .end local v3    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .local v2, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :goto_0
    if-eqz v2, :cond_1

    .line 302
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 304
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    .line 307
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$4;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$4;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 313
    :cond_0
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    if-nez v3, :cond_1

    .line 314
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 315
    .local v1, "view":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    if-eqz v1, :cond_1

    .line 316
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 331
    .end local v1    # "view":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_1
    :goto_1
    return-void
.end method

.method static preCreateForMultiProcess(I)V
    .locals 3
    .param p0, "delay"    # I

    .line 202
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;-><init>(I)V

    .line 257
    .local v0, "preCreateRunnable":Ljava/lang/Runnable;
    if-lez p0, :cond_0

    .line 258
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 262
    :goto_0
    return-void
.end method

.method static preCreateOnMainWithDelay(I)V
    .locals 3
    .param p0, "delay"    # I

    .line 180
    sget v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-ge v0, v1, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    .line 184
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;-><init>()V

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 199
    return-void

    .line 181
    :cond_1
    :goto_0
    return-void
.end method

.method private static preloadAppXJs()V
    .locals 9

    .line 1553
    const-string v0, "H5UCWebView"

    :try_start_0
    const-string v1, "preloadAppXJs enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v1, "no"

    const-string v2, "h5_preloadAppxJs"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    const-string v1, "preloadAppXJs canceled config off"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    return-void

    .line 1560
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1561
    const-string v1, "preloadAppXJs canceled webview pool empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    return-void

    .line 1565
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1566
    const-string v1, "preloadAppXJs canceled running foreground"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    return-void

    .line 1570
    :cond_2
    const-string v2, "https://appx/af-appx.min.js"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;->getResource(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3

    .line 1571
    const-string v1, "preloadAppXJs canceled appx resource not loaded"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->registerAppXResourceLoadedReceiver()V

    .line 1573
    return-void

    .line 1577
    :cond_3
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 1578
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->shouldPreloadContinue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1579
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$16;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$16;-><init>()V

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->setPreloadContinueCallback(Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1585
    return-void

    .line 1588
    :cond_4
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 1589
    .local v1, "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    if-nez v1, :cond_5

    .line 1590
    return-void

    .line 1592
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1593
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 1594
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;-><init>()V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1596
    const-string v4, "ext:init_mini_framework"

    sget v3, Lcom/alipay/mobile/nebulauc/R$raw;->tinydemo:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView$17;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$17;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    .end local v1    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    goto :goto_0

    .line 1608
    :catchall_0
    move-exception v1

    .line 1609
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "preload appx js error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1611
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private redirectDNS4UC()V
    .locals 11

    .line 1488
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UCConfigStr:Ljava/lang/String;

    const-string v1, "YES"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    if-eqz v0, :cond_0

    .line 1490
    const-string v0, "H5UCWebView"

    const-string v1, "ucwebview loadUrl change dns"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1492
    .local v0, "dns_info":Ljava/util/HashMap;
    const-string v1, "host"

    const-string v2, "uc.ucweb.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    const-string v2, "ip"

    const-string v3, "127.0.0.1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string v4, "ttl"

    const-string v5, "300000"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 1496
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1497
    .local v8, "dns_info2":Ljava/util/HashMap;
    const-string v9, "u.uc123.com"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    invoke-static {v6, v8, v7}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 1501
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1502
    .local v9, "dns_info3":Ljava/util/HashMap;
    const-string v10, "u.ucfly.com"

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    invoke-static {v6, v9, v7}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 1506
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    .line 1509
    .end local v0    # "dns_info":Ljava/util/HashMap;
    .end local v8    # "dns_info2":Ljava/util/HashMap;
    .end local v9    # "dns_info3":Ljava/util/HashMap;
    :cond_0
    return-void
.end method

.method private static registerAppXResourceLoadedReceiver()V
    .locals 4

    .line 1529
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1530
    return-void

    .line 1532
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$15;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$15;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    .line 1544
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "appx_preload_success"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1546
    const-string v0, "H5UCWebView"

    const-string v1, "registerAppXResourceLoadedReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    return-void
.end method

.method static releasePreCreateWebViewForMultiProcess()V
    .locals 1

    .line 265
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasDestroyNonIsolateStaticWebView:Z

    .line 266
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method private static renderProcessReady(Lcom/uc/webview/export/WebView;Z)V
    .locals 3
    .param p0, "webView"    # Lcom/uc/webview/export/WebView;
    .param p1, "isStaticWebView"    # Z

    .line 1512
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 1513
    :cond_0
    const-string v0, "H5UCWebView"

    const-string v1, "renderProcessReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    .line 1515
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView$14;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$14;-><init>(Z)V

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/extension/UCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    .line 1526
    return-void
.end method

.method private static reportCreateIsolateStaticView()V
    .locals 2

    .line 1436
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$12;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$12;-><init>()V

    const-string v1, "UcSetupTracing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1444
    return-void
.end method

.method private static reportMultiProcessLaunchStatus(IZZ)V
    .locals 2
    .param p0, "mode"    # I
    .param p1, "success"    # Z
    .param p2, "isStaticWebview"    # Z

    .line 1380
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    if-eqz v0, :cond_0

    .line 1381
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sNeedReportTrace:Z

    .line 1382
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;

    invoke-direct {v0, p1, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$11;-><init>(ZIZ)V

    const-string v1, "UcSetupTracing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1433
    :cond_0
    return-void
.end method

.method private reportPageStartUnCalled()V
    .locals 4

    .line 679
    const-string v0, "H5_UC_MULTI_PROCESS_PAGE_START_UNCALL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 680
    .local v0, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "configMultiProcessMode"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 681
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "actualMultiProcessMode"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 682
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "multiProcessReady"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 683
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sIsolateSpeedUp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isolateSpeedUp"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 684
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    const-string v3, "ucVersion"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 685
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    const-string v3, "webviewVersion"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 686
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuHardware"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 687
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 688
    return-void
.end method

.method private static reportReleaseNonIsolateStaticView()V
    .locals 2

    .line 1447
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sHasDestroyNonIsolateStaticWebView:Z

    if-eqz v0, :cond_0

    return-void

    .line 1448
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$13;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$13;-><init>()V

    const-string v1, "UcSetupTracing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1456
    return-void
.end method

.method private setInputListener()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 1300
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "kbContext":Landroid/content/Context;
    goto :goto_0

    .line 1302
    .end local v0    # "kbContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .line 1304
    .restart local v0    # "kbContext":Landroid/content/Context;
    :goto_0
    new-instance v1, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 1306
    new-instance v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v1, v0, v2, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    .line 1309
    const-class v2, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->setFallback(Ljava/lang/Class;)V

    .line 1310
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 1311
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V

    .line 1312
    return-void
.end method

.method private setWebViewClient(Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;)V
    .locals 1
    .param p1, "webViewClient"    # Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    .line 1459
    if-nez p1, :cond_0

    .line 1460
    return-void

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_1

    .line 1463
    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1465
    :cond_1
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .line 807
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .line 894
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    .line 895
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearFormData()V

    .line 900
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearHistory()V

    .line 905
    return-void
.end method

.method public clearPageStartUnCalled()V
    .locals 2

    .line 1638
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mPageStartUnCalled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mPageStartUnCalled:Z

    .line 1640
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$19;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$19;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-string v1, "UcSetupTracing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1653
    :cond_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearSslPreferences()V

    .line 910
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 915
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 916
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    return-object v1

    .line 918
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public createWebMessageChannel()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .locals 5

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->createWebMessageChannel()[Lcom/uc/webview/export/WebMessagePort;

    move-result-object v0

    .line 574
    .local v0, "ports":[Lcom/uc/webview/export/WebMessagePort;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;-><init>(Lcom/uc/webview/export/WebMessagePort;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;-><init>(Lcom/uc/webview/export/WebMessagePort;)V

    aput-object v2, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 577
    .end local v0    # "ports":[Lcom/uc/webview/export/WebMessagePort;
    :catchall_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mPageStartUnCalled:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 675
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1371
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stringValueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 773
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ih5EmbedViewJSCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 752
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->flingScroll(II)V

    .line 602
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .line 890
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 7
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .line 1376
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/extension/UCExtension;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v0

    .line 1345
    .local v0, "hitTestResult":Lcom/uc/webview/export/WebView$HitTestResult;
    if-nez v0, :cond_0

    .line 1346
    const/4 v1, 0x0

    return-object v1

    .line 1348
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/uc/webview/export/WebView$HitTestResult;)V

    return-object v1
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 496
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0

    .line 1365
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getStartupPerformanceStatistics(Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1666
    const/4 v0, 0x0

    const-string v1, "H5UCWebView"

    if-nez p1, :cond_0

    .line 1667
    :try_start_0
    const-string v2, "valueCallback is null return  "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    return-void

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1671
    const-string v2, "webview is null   "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1673
    return-void

    .line 1675
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/uc/webview/export/WebView;

    if-nez v2, :cond_2

    .line 1676
    const-string v2, "webview  is not uc webview  "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1678
    return-void

    .line 1680
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1681
    const-string v2, "UCExtension  is null  "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1683
    return-void

    .line 1685
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ucStartupPerformanceCallback:Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;

    if-nez v2, :cond_4

    .line 1686
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ucStartupPerformanceCallback:Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;

    .line 1687
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->add(Landroid/webkit/ValueCallback;)V

    .line 1688
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ucStartupPerformanceCallback:Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/extension/UCExtension;->getStartupPerformanceStatistics(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1690
    :cond_4
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$UCStartupPerformanceCallback;->add(Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :goto_0
    goto :goto_1

    .line 1692
    :catchall_0
    move-exception v2

    .line 1693
    .local v2, "thr":Ljava/lang/Throwable;
    const-string v3, "getStartupPerformanceStatistics error "

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1696
    .end local v2    # "thr":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 552
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 547
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goBack()V

    .line 793
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .line 812
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->goBackOrForward(I)V

    .line 813
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goForward()V

    .line 803
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->invokeZoomPicker()V

    .line 833
    return-void
.end method

.method public isMultiProcessPreCreate()Z
    .locals 1

    .line 1660
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mIsMultiProcessPreCreate:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 722
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->checkRenderProcessStatus()V

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->redirectDNS4UC()V

    .line 725
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "additionalHttpHeaders"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 715
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->checkRenderProcessStatus()V

    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 717
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->redirectDNS4UC()V

    .line 718
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 873
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onResume()V

    .line 881
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .line 817
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 757
    return-void
.end method

.method public postWebMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;Landroid/net/Uri;)V
    .locals 4
    .param p1, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 585
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebMessage;->getPorts()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    move-result-object v0

    .line 586
    .local v0, "ports":[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    const/4 v1, 0x0

    .line 587
    .local v1, "androidPorts":[Lcom/uc/webview/export/WebMessagePort;
    if-eqz v0, :cond_0

    .line 588
    array-length v2, v0

    new-array v2, v2, [Lcom/uc/webview/export/WebMessagePort;

    move-object v1, v2

    .line 589
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 590
    aget-object v3, v0, v2

    check-cast v3, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebMessagePort;->getWebMessagePort()Lcom/uc/webview/export/WebMessagePort;

    move-result-object v3

    aput-object v3, v1, v2

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/uc/webview/export/WebMessage;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/uc/webview/export/WebMessage;-><init>(Ljava/lang/String;[Lcom/uc/webview/export/WebMessagePort;)V

    .line 594
    .local v2, "androidMsg":Lcom/uc/webview/export/WebMessage;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3, v2, p2}, Lcom/uc/webview/export/WebView;->postWebMessage(Lcom/uc/webview/export/WebMessage;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    .end local v0    # "ports":[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .end local v1    # "androidPorts":[Lcom/uc/webview/export/WebMessagePort;
    .end local v2    # "androidMsg":Lcom/uc/webview/export/WebMessage;
    goto :goto_1

    .line 595
    :catchall_0
    move-exception v0

    .line 597
    :goto_1
    return-void
.end method

.method public reload()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    .line 783
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 707
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 708
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    return-object v1

    .line 710
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .line 640
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 698
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 699
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    return-object v1

    .line 701
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 516
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 517
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 1316
    if-nez p1, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    goto :goto_0

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 1321
    :goto_0
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 507
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 616
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .line 827
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setInitialScale(I)V

    .line 828
    return-void
.end method

.method public setMultiProcessMode()V
    .locals 3

    .line 1614
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-nez v0, :cond_0

    return-void

    .line 1615
    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView$18;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$18;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    .line 1634
    return-void
.end method

.method public setMultiProcessPreCreate()V
    .locals 1

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mIsMultiProcessPreCreate:Z

    .line 1657
    return-void
.end method

.method public setNebulaX(Z)V
    .locals 0
    .param p1, "nebulaX"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isNebulaX:Z

    .line 400
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setNetworkAvailable(Z)V

    .line 693
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 1354
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 1355
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .line 491
    iput p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    .line 492
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 502
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .line 620
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 621
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 1325
    if-nez p1, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    goto :goto_0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 1330
    :goto_0
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 567
    invoke-static {p1}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 568
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 3
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 923
    if-nez p1, :cond_0

    .line 924
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 928
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-nez v0, :cond_1

    .line 929
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 1256
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$10;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isNebulaX:Z

    if-eqz v0, :cond_2

    .line 1284
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isEmbedWebview:Z

    if-nez v0, :cond_3

    .line 1285
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setInputListener()V

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isH5Activity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setInputListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :cond_3
    :goto_0
    goto :goto_1

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoft error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UCWebView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    .line 778
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method

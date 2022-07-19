.class public Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
.source "H5BasePage.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Page;
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebula/basebridge/H5BasePage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private mBridgeToken:Ljava/lang/String;

.field private mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

.field private final mPageData:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private final mStartParams:Landroid/os/Bundle;

.field private final mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1212
    new-instance v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Bridge;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;-><init>()V

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 85
    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mStartParams:Landroid/os/Bundle;

    .line 86
    iput-object p2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 89
    .local v0, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getItsOwnNode()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v1

    .line 91
    .local v1, "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 92
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 93
    const-string v3, "appId"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppId(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v3, "tiny"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewType(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "url"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 97
    new-instance v2, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;-><init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    .line 98
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1201
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;-><init>(Landroid/os/Parcel;)V

    .line 1202
    const-class v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mStartParams:Landroid/os/Bundle;

    .line 1203
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1204
    new-instance v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;-><init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    .line 1205
    return-void
.end method

.method private enableUseOldContext()Z
    .locals 3

    .line 73
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 74
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "h5_enableUseOldContext"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 78
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .line 142
    return-void
.end method

.method public applyParamsIfNeed()V
    .locals 0

    .line 646
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 406
    return-void
.end method

.method public clearFormData()V
    .locals 0

    .line 411
    return-void
.end method

.method public clearHistory()V
    .locals 0

    .line 416
    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .line 421
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebMessageChannel()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .locals 1

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 221
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 251
    return-void
.end method

.method public exitPage()Z
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 484
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public exitTabPage()Z
    .locals 1

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public flingScroll(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 166
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .line 401
    return-void
.end method

.method public getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;
    .locals 1

    .line 625
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdvertisementViewTag()Ljava/lang/String;
    .locals 1

    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
    .locals 1

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    return-object v0
.end method

.method public getBridgeToken()Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mBridgeToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    return-object v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    .line 114
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    :cond_1
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 1
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .locals 1

    .line 730
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "biz"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1

    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastTouch()J
    .locals 2

    .line 575
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    .locals 1

    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerformance()Ljava/lang/String;
    .locals 1

    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1

    .line 761
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public getScrollY()I
    .locals 1

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleBarReadyCallBack()Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;
    .locals 1

    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 520
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 0

    .line 127
    return-object p0
.end method

.method public getWebViewId()I
    .locals 1

    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public goBack()V
    .locals 0

    .line 291
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .param p1, "i"    # I

    .line 311
    return-void
.end method

.method public goForward()V
    .locals 0

    .line 301
    return-void
.end method

.method public hasContentBeforeRedirect()Z
    .locals 1

    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public ifContainsEmbedSurfaceView()Z
    .locals 1

    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public ifContainsEmbedView()Z
    .locals 1

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public invokeZoomPicker()V
    .locals 0

    .line 331
    return-void
.end method

.method public isNebulaX()Z
    .locals 1

    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public isTinyApp()Z
    .locals 1

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparentTitleState()Z
    .locals 1

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .line 261
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;
    .param p5, "s4"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 266
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 246
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;
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

    .line 241
    return-void
.end method

.method public onInterceptError(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "errorUrl"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 386
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 391
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public pageIsClose()Z
    .locals 1

    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 256
    return-void
.end method

.method public postWebMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;Landroid/net/Uri;)V
    .locals 0
    .param p1, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 161
    return-void
.end method

.method public reload()V
    .locals 0

    .line 281
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 147
    return-void
.end method

.method public replace(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 726
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public sendExitEvent()V
    .locals 0

    .line 631
    return-void
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 461
    return-void
.end method

.method public setBridgeToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "bridgeToken"    # Ljava/lang/String;

    .line 771
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mBridgeToken:Ljava/lang/String;

    .line 772
    return-void
.end method

.method public setContainsEmbedSurfaceView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .line 621
    return-void
.end method

.method public setContainsEmbedView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .line 611
    return-void
.end method

.method public setContentBeforeRedirect(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 676
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 0
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 436
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 651
    return-void
.end method

.method public setH5Context(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 70
    :cond_0
    return-void
.end method

.method public setH5ErrorHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;

    .line 500
    return-void
.end method

.method public setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
    .locals 0
    .param p1, "h5TitleView"    # Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 706
    return-void
.end method

.method public setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V
    .locals 0
    .param p1, "h5PageHandler"    # Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 495
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 551
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 181
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .param p1, "i"    # I

    .line 326
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 226
    return-void
.end method

.method public setNewEmbedViewRoot(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 661
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "h5ScrollChangedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 556
    return-void
.end method

.method public setPageId(I)V
    .locals 0
    .param p1, "pageId"    # I

    .line 741
    return-void
.end method

.method public setPerformance(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 586
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 137
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .line 536
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "i"    # I

    .line 336
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 701
    return-void
.end method

.method public setTitleBarReadyCallBack(Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;)V
    .locals 0
    .param p1, "h5TitleBarReadyCallback"    # Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

    .line 601
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 546
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 186
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 441
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 152
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 431
    return-void
.end method

.method public setWebViewId(I)V
    .locals 0
    .param p1, "pageId"    # I

    .line 752
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .line 276
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1209
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1210
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

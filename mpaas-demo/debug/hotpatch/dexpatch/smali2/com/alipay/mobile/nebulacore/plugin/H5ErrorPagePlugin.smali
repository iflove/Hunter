.class public Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ErrorPagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 113
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V

    .line 114
    .local v0, "reportData":Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    .line 118
    .local v1, "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizUrl:Ljava/lang/String;

    .line 119
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizCode:Ljava/lang/String;

    .line 120
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizMsg:Ljava/lang/String;

    .line 121
    const-string v2, "nebula_errorpage"

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->bizName:Ljava/lang/String;

    .line 122
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;->webViewVersion:Ljava/lang/String;

    .line 125
    :cond_1
    return-object v0

    .line 115
    .end local v1    # "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 60
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 42
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v1, "startFeedBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->isShowErrorPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->a()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 54
    :goto_0
    return v2

    .line 45
    :cond_2
    :goto_1
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const-string v3, "\u8c03\u7528\u5931\u8d25"

    invoke-interface {p2, v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 46
    return v2

    .line 56
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 37
    const-string v0, "startFeedBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 38
    return-void
.end method

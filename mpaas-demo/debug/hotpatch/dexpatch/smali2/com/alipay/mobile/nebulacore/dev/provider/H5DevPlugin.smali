.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5DevPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DevPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private h:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->f:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 47
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "func":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "invokeJS msgType callback func (.*)"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    move-object v3, v1

    .line 156
    .local v3, "callbackPattern":Ljava/util/regex/Pattern;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 157
    return-object v1

    .line 159
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v4, v1

    .line 160
    .local v4, "matcher":Ljava/util/regex/Matcher;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 163
    :cond_1
    return-object v0

    .line 164
    .end local v0    # "func":Ljava/lang/String;
    .end local v3    # "callbackPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v2

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 218
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 220
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 222
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const/4 v2, 0x0

    .line 223
    .local v2, "parsedUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 224
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_0
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    .line 228
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eq v0, v3, :cond_3

    .line 232
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 233
    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    .line 239
    :cond_2
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    const/4 v4, 0x0

    .line 240
    .local v4, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v4, v3

    if-eqz v3, :cond_3

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->f:Ljava/lang/String;

    .line 244
    .end local v4    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_3
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 246
    .end local v0    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "parsedUrl":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 11
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 252
    if-nez p1, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    const-string v0, "https://hpmweb.alipay.com/vorlon"

    .line 257
    .local v0, "vorlonServer":Ljava/lang/String;
    sget v1, Lcom/alipay/mobile/nebula/R$raw;->h5_dev_vorlon:I

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    const-string v4, "https://hpmweb.alipay.com/bugme/domScript"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vorlon script:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5DevPlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v5, "sync_state"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-interface/range {v4 .. v10}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 265
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->f:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "content"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "func"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 107
    .local v2, "func":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const-string v5, "log"

    invoke-interface {v1, v5, v3, v0, v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v4

    .line 112
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "func":Ljava/lang/String;
    :cond_6
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const-string v5, "error"

    invoke-interface {v1, v5, v2, v0, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v4

    .line 116
    .end local v0    # "content":Ljava/lang/String;
    :cond_7
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_CREATE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v6, "create"

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 118
    return v4

    .line 119
    :cond_8
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_RELEASE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v6, "destroy"

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 121
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 122
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 123
    return v4

    .line 124
    :cond_9
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_JS_API_TO_NATIVE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "subType"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "subType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "request":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "eventId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "originEventId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const-string v10, ""

    move-object v6, v0

    move-object v8, v2

    move-object v9, v1

    invoke-interface/range {v5 .. v10}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v4

    .line 130
    .end local v0    # "subType":Ljava/lang/String;
    .end local v1    # "request":Ljava/lang/String;
    .end local v2    # "originEventId":Ljava/lang/String;
    :cond_a
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_SRART:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "start"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 132
    return v4

    .line 133
    :cond_b
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_FINISH:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "finish"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 135
    return v4

    .line 136
    :cond_c
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_SCREENSHOT_UPLOAD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const-string v2, "upload"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->screenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v4

    .line 139
    :cond_d
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NBDebugReport"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v3

    .line 141
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_e

    .line 142
    const-string v0, "type"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "extra"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 144
    .local v0, "content":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    const-string v6, "sync_state"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 147
    .end local v0    # "content":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    return v4

    .line 149
    .end local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    return v1

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "subType":Ljava/lang/String;
    const-string v3, "h5PageCreateWebView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const-string v2, "create"

    goto :goto_0

    .line 182
    :cond_1
    const-string v3, "h5PageStarted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string v2, "update"

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->pause()V

    goto :goto_0

    .line 187
    :cond_2
    const-string v3, "h5PageFinished"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    const-string v2, "finish"

    .line 189
    const-string v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    const-string v3, "h5_bug_me_dom_debug"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v3

    .line 199
    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 202
    :cond_3
    goto :goto_0

    :cond_4
    const-string v3, "h5PageClose"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->resume()V

    .line 209
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type:page subType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " viewId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5DevPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->d:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, v2

    invoke-interface/range {v4 .. v10}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 214
    :cond_6
    return v1
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 51
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 52
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 56
    const-string v0, "NBDebugReport"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "h5PageCreateWebView"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v0, "h5PageClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_CONSOLE_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_JS_API_TO_NATIVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_SRART:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_FINISH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_SCREENSHOT_UPLOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 78
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->g:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 79
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->release(Ljava/lang/String;)V

    .line 81
    return-void
.end method

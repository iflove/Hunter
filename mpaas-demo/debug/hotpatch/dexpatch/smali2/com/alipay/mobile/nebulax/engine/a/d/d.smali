.class public Lcom/alipay/mobile/nebulax/engine/a/d/d;
.super Lcom/alipay/mobile/nebulax/engine/common/c/a;
.source "NXWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/adapter/NXH5PageAdapter;
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;


# instance fields
.field protected e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/nebulax/engine/a/a;

.field private h:Lcom/alipay/mobile/h5container/api/H5Page;

.field private i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

.field private j:Lcom/alipay/mobile/nebulax/engine/a/d/c;

.field private k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

.field private l:Lcom/alipay/mobile/nebulax/engine/a/d/g;

.field private m:Lcom/alipay/mobile/nebulax/engine/a/d/a;

.field private n:Z

.field private o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private p:Lcom/alipay/mobile/nebulax/engine/a/b/a;

.field private q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private r:Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)V
    .locals 9

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/common/c/a;-><init>(Lcom/alipay/mobile/nebulax/engine/common/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;)V

    .line 81
    const-string v0, "NebulaXEngine.NXWebView"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->n:Z

    .line 130
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->s:Z

    .line 141
    iput-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->r:Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;

    .line 143
    instance-of v2, p3, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_3

    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->g:Lcom/alipay/mobile/nebulax/engine/a/a;

    .line 149
    iget-boolean p1, p5, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->useForEmbed:Z

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->n:Z

    .line 150
    move-object p1, p3

    check-cast p1, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 152
    iget-object v0, p4, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 154
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v3, "bizType"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/d/e;->a()Lcom/alipay/mobile/nebulax/engine/a/d/e;

    move-result-object v3

    iget-boolean v4, p5, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->useForEmbed:Z

    invoke-virtual {v3, v2, p2, v0, v4}, Lcom/alipay/mobile/nebulax/engine/a/d/e;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Z)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/alipay/mobile/nebulax/engine/a/d/a;

    iget-boolean p5, p5, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->useForEmbed:Z

    invoke-direct {v3, p1, p5}, Lcom/alipay/mobile/nebulax/engine/a/d/a;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Z)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->m:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    .line 160
    new-instance p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v8, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->m:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 161
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/b/a;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->m:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    invoke-direct {p1, p0, p2, p5}, Lcom/alipay/mobile/nebulax/engine/a/b/a;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebulax/engine/a/d/a;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->p:Lcom/alipay/mobile/nebulax/engine/a/b/a;

    .line 163
    nop

    .line 164
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    const-string p1, "h5_force_v8worker"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    .line 167
    :cond_0
    const-string p1, "true"

    const-string p2, "enablePolyfillWorker"

    if-nez v1, :cond_1

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 168
    invoke-virtual {p5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object p5

    sget-object v1, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne p5, v1, :cond_2

    const-string p5, "isTinyApp"

    invoke-virtual {v0, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 169
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 171
    :cond_1
    const-class p5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 172
    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isWebWorkerSupported()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 173
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string p2, "degradeToSystemWebView...switch is supported"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string p2, "NXWebView constructed "

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p1, p2, p5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 181
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/a/c;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p1, p3, p2, p5}, Lcom/alipay/mobile/nebulax/engine/a/a/c;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 183
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/d/f;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-direct {p1, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/f;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    .line 184
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "backBehavior"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/f;->a(Ljava/lang/String;)V

    .line 185
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/d/g;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p1, p2, v0, p3, p5}, Lcom/alipay/mobile/nebulax/engine/a/d/g;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->l:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    .line 188
    invoke-direct {p0, p4, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 189
    return-void

    .line 144
    :cond_3
    const-string p1, "NXWebView construct params  node is not a H5Page"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "node must is  H5Page Node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 399
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 400
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 402
    const-string v1, "requestPreAuth"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 401
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v1, "Referer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v1, "publicId"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v1, "preSSOLogin"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 413
    const-string v2, "preSSOLoginBindingPage"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v2, v2, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 415
    const-string v3, "preSSOLoginUrl"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    const-string v3, "ps"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string p1, "psb"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string p1, "psu"

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "start_up_url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 225
    const-string v0, "bizType"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string v0, "publicId"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 2

    .line 589
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/d$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d$3;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 600
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/d/d$4;

    invoke-direct {p2, p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d$4;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 608
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5PageData;)V
    .locals 3

    .line 204
    if-nez p1, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 210
    const-string v0, "errorType"

    const-string v1, "errorRender"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const v0, -0x927c1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send page abnormal event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "h5PageAbnormal"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 215
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 2

    .line 696
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 728
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 2

    .line 192
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v0, "enablePolyfillWorker"

    const-string v1, "false"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 195
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object p2

    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    .line 197
    const/4 p1, 0x0

    sput-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 198
    const/4 p1, 0x0

    const-string p2, "showUCFailDialog"

    invoke-virtual {p0, p2, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 199
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/h5container/api/H5PageData;)V

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 5

    .line 657
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 659
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    return v1

    .line 663
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 664
    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 665
    return v1

    .line 667
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 672
    :cond_2
    const-string v2, "/android_asset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "/android_res"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 675
    :cond_3
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    .line 676
    if-eqz v2, :cond_4

    .line 677
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;->allowFileAccess(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 680
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 681
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileDir : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 683
    return v1

    .line 685
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableAllowFileAccess(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 688
    :catchall_0
    move-exception p1

    .line 689
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    return v1

    .line 673
    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 670
    :cond_7
    :goto_1
    return v1
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NebulaX/1.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private e()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/d$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 581
    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/f;->a(I)V

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string p2, "internal load url null"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal load url,url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "loadUrl"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerLoadUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 440
    const-string v0, "openUrlMethod"

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    const-string v2, "POST"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    const-string p2, "openUrlPostParams"

    invoke-static {p3, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    if-eqz p3, :cond_1

    .line 444
    const-string v2, "GET"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postUrl   url="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->postUrl(Ljava/lang/String;[B)V

    .line 450
    return-void

    .line 453
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "getUrl   url="

    if-nez p3, :cond_3

    .line 454
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 455
    const-string v1, "Referer"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p2, p1, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    goto :goto_0

    .line 459
    :cond_3
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void
.end method

.method public b()Lcom/alipay/mobile/nebulax/engine/a/d/c;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->j:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/f;->a()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v1, "destroy nx view"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/a;->b(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 481
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 485
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 487
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->p:Lcom/alipay/mobile/nebulax/engine/a/b/a;

    .line 488
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 489
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->l:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    .line 490
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d()V

    .line 493
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->j:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a()V

    .line 497
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->j:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    .line 499
    :cond_3
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->m:Lcom/alipay/mobile/nebulax/engine/a/d/a;

    .line 500
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 501
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 502
    return-void
.end method

.method public forceLoad(Ljava/lang/String;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public getCapture(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 770
    return-object v1

    .line 773
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 775
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v2, "getCapture CAPTURE_RANGE_DOCUMENT"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :try_start_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object p1

    .line 778
    if-nez p1, :cond_2

    .line 779
    return-object v1

    .line 781
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    .line 782
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 781
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 783
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 784
    invoke-virtual {p1, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    return-object v2

    .line 786
    :catchall_0
    move-exception p1

    .line 787
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v3, "getCapture CAPTURE_RANGE_DOCUMENT exception!"

    invoke-static {v2, v3, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v2, "getCapture CAPTURE_RANGE_VIEWPORT"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :try_start_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object p1

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 798
    return-object v0

    .line 799
    :catchall_1
    move-exception p1

    .line 800
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v2, "getCapture CAPTURE_RANGE_VIEWPORT exception!"

    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 803
    return-object v1
.end method

.method public getH5WebViewAdapter()Ljava/lang/Object;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->p:Lcom/alipay/mobile/nebulax/engine/a/b/a;

    return-object v0
.end method

.method public getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;
    .locals 0

    .line 643
    return-object p0
.end method

.method public getLegacyH5WebView()Ljava/lang/Object;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method public getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/f;->a(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 306
    return-void
.end method

.method public init()V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v1, "start init nxh5webview "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->b(Landroid/os/Bundle;)Z

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allow webview access from file URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 534
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d()V

    .line 536
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e()V

    .line 538
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->n:Z

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/c;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->j:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    .line 539
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 540
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->r:Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;

    iget-object v6, v1, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->urlVisitListener:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->n:Z

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulax/engine/a/d/b;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->p:Lcom/alipay/mobile/nebulax/engine/a/b/a;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/b/b;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulax/engine/a/b/b;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/b/a;->a(Lcom/alipay/mobile/h5container/api/NXH5WebViewClientAdapter;)V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->i:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->enableLongClick(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 553
    :cond_0
    return-void
.end method

.method public insertJS(Ljava/lang/String;)V
    .locals 2

    .line 343
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-nez v0, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    sput-object p1, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 350
    :cond_1
    return-void
.end method

.method public internalDestroy()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v1, "internalDestroy nx view "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 378
    :cond_0
    return-void
.end method

.method public isH5View()Z
    .locals 1

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public isShouldResumeWebView()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->s:Z

    return v0
.end method

.method public load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nxh5webview start load url,url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerHandleUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 246
    const-string v0, "main"

    const-string v1, "H5PageImpl.loadUrl()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 251
    const-class v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 252
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 253
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->defaultValue(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/a/d/d$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V

    .line 254
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->resolve(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;->shouldLoad(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    const-string p1, "url"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Referer"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v2, "webview on pause exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    const-string v2, "webview on resume exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    :cond_0
    :goto_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V

    .line 357
    :cond_0
    return-void
.end method

.method public runExit(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->l:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    .line 311
    return-void
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 732
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 737
    return-void
.end method

.method public setBackBehavior(Ljava/lang/String;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->k:Lcom/alipay/mobile/nebulax/engine/a/d/f;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/f;->a(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/d$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d$5;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    .line 624
    return-void
.end method

.method public setShouldResumeWebView(Z)V
    .locals 0

    .line 764
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->s:Z

    .line 765
    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    .line 361
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 365
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 366
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    const-string v1, "h5_font_size"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    return-void
.end method

.method public setViewParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setWorkerProxy(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->g:Lcom/alipay/mobile/nebulax/engine/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 323
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->getWorkerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Session;->setServiceWorkerID(Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacy success setServiceWorkerID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->getWorkerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    return-void
.end method

.method public showErrorView(Landroid/view/View;)V
    .locals 0

    .line 301
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d;->q:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    .line 385
    :cond_0
    return-void
.end method

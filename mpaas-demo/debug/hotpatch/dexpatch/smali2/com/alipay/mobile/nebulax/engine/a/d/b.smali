.class public Lcom/alipay/mobile/nebulax/engine/a/d/b;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/a/d/b$a;
    }
.end annotation


# static fields
.field private static s:Ljava/util/concurrent/Executor;

.field private static t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulax/engine/a/d/b$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private E:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

.field private F:I

.field private G:I

.field private H:Z

.field public a:Ljava/lang/String;

.field b:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;

.field private d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

.field private e:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/web/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/os/Handler;

.field private u:Lcom/alibaba/fastjson/JSONArray;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 173
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;Z)V
    .locals 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "NebulaXEngine.NXH5WebViewClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->m:Z

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->o:Z

    .line 165
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->p:Z

    .line 167
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->q:Z

    .line 169
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    .line 179
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->v:Z

    .line 180
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->w:Z

    .line 183
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->x:Z

    .line 193
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->z:Z

    .line 200
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->B:Z

    .line 202
    const-string v0, "YES"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->C:Ljava/lang/String;

    .line 1434
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->H:Z

    .line 212
    iput-boolean p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->z:Z

    .line 213
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 214
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->E:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 216
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    .line 218
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, "isPrerender"

    invoke-static {p3, p4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 219
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_preRender"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 222
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 223
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 224
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    .line 225
    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h:I

    .line 226
    iput v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->i:I

    .line 227
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {p3}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g:Ljava/lang/String;

    .line 228
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    const-string p4, "url"

    invoke-static {p1, p4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageToken(Ljava/lang/String;)V

    .line 230
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    .line 233
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->getView()Landroid/view/View;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 235
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/d/b$1;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 271
    const-string p1, "h5_asyncSendEvent"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    const-string p2, "NO"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->q:Z

    .line 276
    :cond_1
    const-string p1, "h5_fallback_log"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->u:Lcom/alibaba/fastjson/JSONArray;

    .line 277
    new-instance p1, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    invoke-direct {p1}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->i:I

    return p1
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 14

    .line 1437
    move-object v9, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    const/4 v1, 0x0

    if-eqz v5, :cond_d

    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1442
    :cond_0
    iget-boolean v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->H:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 1443
    iput-boolean v2, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->H:Z

    .line 1445
    const/16 v0, -0x14

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1447
    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v4, "setThreadPriority"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1451
    :cond_1
    :goto_0
    nop

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1455
    :try_start_1
    iput-boolean v2, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->w:Z

    .line 1456
    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldInterceptRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1460
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;-><init>()V

    .line 1461
    iput-object v5, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->uri:Landroid/net/Uri;

    .line 1462
    iput-object v6, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->originUrl:Ljava/lang/String;

    .line 1463
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canUseFallback:Z

    .line 1464
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v4

    sget-object v8, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    const/4 v10, 0x0

    if-ne v4, v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canAsyncFallback:Z

    .line 1465
    iput-boolean v3, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->isMainDoc:Z

    .line 1466
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v4

    sget-object v8, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v4, v8, :cond_3

    .line 1467
    sget v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_THIRD_PARTY:I

    iput v4, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->webType:I

    goto :goto_2

    .line 1468
    :cond_3
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v4

    sget-object v8, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v4, v8, :cond_4

    .line 1469
    sget v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_SYSTEM_BUILD_IN:I

    iput v4, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->webType:I

    goto :goto_2

    .line 1470
    :cond_4
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v4

    sget-object v8, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v4, v8, :cond_5

    .line 1471
    sget v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_RN_VIEW:I

    iput v4, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->webType:I

    goto :goto_2

    .line 1473
    :cond_5
    sget v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_THIRD_PARTY:I

    iput v4, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->webType:I

    .line 1477
    :goto_2
    const-class v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    iget-object v8, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v4, v8}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object v4

    .line 1479
    if-eqz v4, :cond_7

    .line 1480
    iget-boolean v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->B:Z

    if-eqz v0, :cond_6

    .line 1481
    iput-boolean v10, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->B:Z

    .line 1482
    iget-object v0, v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->mIsLocal:Ljava/lang/String;

    iput-object v0, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->C:Ljava/lang/String;

    .line 1484
    :cond_6
    iget-object v1, v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v1

    goto :goto_3

    .line 1479
    :cond_7
    move-object v11, v1

    .line 1486
    :goto_3
    if-eqz v4, :cond_8

    :try_start_2
    iget-boolean v0, v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->hasInputException:Z

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    const-string v0, "no"

    const-string v1, "h5_handleInputException"

    .line 1487
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1488
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;

    move-object v1, p1

    invoke-direct {v0, p0, p1, v6}, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    const-wide/16 v12, 0x14

    invoke-static {v0, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 1550
    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_6

    .line 1496
    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1497
    invoke-direct {p0, v6, v11}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V

    .line 1500
    :cond_9
    if-eqz v11, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 1503
    :goto_5
    if-nez v8, :cond_c

    .line 1504
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v0, v12, v13, v7}, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;-><init>(JLjava/lang/String;)V

    .line 1505
    if-eqz v6, :cond_b

    if-eqz v3, :cond_b

    .line 1506
    iget-object v1, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1507
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    .line 1509
    :cond_b
    iput-object v6, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    .line 1510
    iget-object v1, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    :cond_c
    nop

    .line 1513
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v10, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;ZLcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1552
    goto :goto_7

    .line 1550
    :catchall_2
    move-exception v0

    .line 1551
    :goto_6
    iget-object v2, v9, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v1

    .line 1553
    :goto_7
    return-object v11

    .line 1438
    :cond_d
    :goto_8
    return-object v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object p0
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1977
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 1978
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1979
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1980
    const-string p2, ".html"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ".htm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1981
    :goto_1
    if-nez p2, :cond_2

    .line 1984
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v0, "!titlePartOfUrl"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1988
    :cond_2
    const/4 p1, 0x0

    .line 1991
    :cond_3
    :goto_2
    return-object p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 6

    .line 1645
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 1648
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "containCORSRes"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putBooleanExtra(Ljava/lang/String;Z)V

    .line 1651
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1652
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestNum()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setRequestNum(I)V

    .line 1653
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 1655
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1657
    :goto_0
    if-eqz v0, :cond_3

    .line 1658
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestLoadNum()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setRequestLoadNum(I)V

    .line 1660
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1661
    if-eqz v0, :cond_4

    .line 1662
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssLoadNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssLoadNum(I)V

    .line 1664
    :cond_4
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssReqNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssReqNum(I)V

    goto :goto_1

    .line 1665
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1666
    if-eqz v0, :cond_6

    .line 1667
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsLoadNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsLoadNum(I)V

    .line 1669
    :cond_6
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsReqNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsReqNum(I)V

    goto :goto_1

    .line 1670
    :cond_7
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1671
    if-eqz v0, :cond_8

    .line 1672
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgLoadNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgLoadNum(I)V

    .line 1674
    :cond_8
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgReqNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgReqNum(I)V

    goto :goto_1

    .line 1676
    :cond_9
    if-eqz v0, :cond_a

    .line 1677
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherLoadNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherLoadNum(I)V

    .line 1679
    :cond_a
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherReqNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherReqNum(I)V

    .line 1681
    :goto_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1569
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_0

    .line 1570
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1571
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextRequestId()I

    move-result v0

    .line 1572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reqId"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const-string v1, "reqUrl"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-string p2, "method"

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "fromLocalPkg"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object p3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_SRART:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1579
    if-eqz p4, :cond_0

    .line 1580
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 1581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const/16 p2, 0xc8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "statusCode"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object p3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_FINISH:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1586
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "try checkDSLError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isUcCheckDsl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 1290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1291
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1316
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/Object;I)V
    .locals 6

    .line 1178
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewEvent empty page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    nop

    .line 1182
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    goto :goto_0

    .line 1183
    :catch_0
    move-exception p2

    .line 1184
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 1187
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWebViewEvent empty page blankTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v1, 0x3

    const-string v2, "pageLoad|emptyScreen"

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    .line 1189
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->o:Z

    .line 1190
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1194
    :cond_0
    const-string v1, "activity isBackgroundRunning or screenOff"

    const/4 v4, 0x6

    if-ne p2, v4, :cond_7

    .line 1195
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->p:Z

    .line 1196
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1200
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dsl_error"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1202
    :cond_2
    const-class v3, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    invoke-static {v3}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    .line 1203
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;->isBackgroundRunning()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1204
    :cond_4
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-void

    .line 1208
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->whiteScreenSnapshotUpload(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1210
    const/16 v3, 0x10

    if-ne p3, v3, :cond_6

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1211
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isTinyApp"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1212
    const-string v0, "h5_enableTinyBaseColorEmptyScreen"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1213
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    goto :goto_1

    .line 1216
    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1219
    :cond_7
    :goto_1
    const/16 p1, 0x9

    if-ne p2, p1, :cond_d

    .line 1220
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWebViewEvent empty page blankTime 3&6 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->o:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->p:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    sget-boolean p2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p2, :cond_8

    .line 1223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1225
    :cond_8
    const-class p2, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    .line 1226
    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;->isBackgroundRunning()Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1227
    :cond_a
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-void

    .line 1230
    :cond_b
    iget-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->o:Z

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->p:Z

    if-eqz p2, :cond_d

    sget-boolean p2, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    if-nez p2, :cond_d

    .line 1231
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v0, "onWebViewEvent empty page blankTime is report monitor"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1233
    const-string v0, "errorType"

    const-string v1, "ucLongRender"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    if-ne p3, p1, :cond_c

    const p1, -0x927c5

    goto :goto_2

    :cond_c
    const p1, -0x927c6

    .line 1238
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "errorCode"

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p3, "h5PageAbnormal"

    invoke-interface {p1, p3, p2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1242
    :cond_d
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 10

    .line 1006
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadErrorPage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 1008
    return-void

    .line 1011
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dsl_error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Page;->onInterceptError(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    return-void

    .line 1019
    :cond_2
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    .line 1020
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->x:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1021
    invoke-interface {v0, p1, v2, p3, p2}, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;->enableRoute(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1022
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->x:Z

    .line 1023
    return-void

    .line 1026
    :cond_3
    const/16 v0, 0x193

    if-eq p3, v0, :cond_f

    const/16 v0, 0x194

    if-ne p3, v0, :cond_4

    goto/16 :goto_3

    .line 1032
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFailLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1034
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageAbnormal"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1036
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "bizType"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bizType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v2, "Advertisement"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1040
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    return-void

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "transparent"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "transAnimate"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1045
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1046
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "loadErrorPage in transparent case return directly"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p2, "h5PageClose"

    invoke-interface {p1, p2, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1048
    return-void

    .line 1051
    :cond_6
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/LoadErrorPagePoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/LoadErrorPagePoint;

    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/LoadErrorPagePoint;->onLoadErrorPage(Ljava/lang/String;I)V

    .line 1053
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    if-eqz v0, :cond_7

    .line 1054
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 1056
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_loading_failed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {p3, v4}, Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;->getErrorMsg(IZ)Ljava/lang/String;

    move-result-object v3

    .line 1058
    invoke-static {p3, v1}, Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;->getErrorMsg(IZ)Ljava/lang/String;

    move-result-object v5

    .line 1059
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_menu_refresh:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1060
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/nebula/R$string;->h5_network_check:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1062
    iget-object v8, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1063
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_backward:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1065
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_close:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1067
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load error page for: statusCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " errorResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " buttonText:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1071
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setShowErrorPage(Z)V

    .line 1073
    :cond_9
    const-class v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;->isErrorPageEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1074
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    .line 1075
    invoke-interface {p1, p2, p3, v3, v5}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;->onPageLoadError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1076
    return-void

    .line 1080
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1081
    sget v1, Lcom/alipay/mobile/nebula/R$raw;->h5_trans_page_error:I

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1083
    :cond_b
    sget v1, Lcom/alipay/mobile/nebula/R$raw;->h5_page_error:I

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v1

    .line 1086
    :goto_1
    if-nez v1, :cond_c

    .line 1087
    return-void

    .line 1089
    :cond_c
    const-string v4, "####"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    const-string v4, "****"

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&&&&"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    const-string v3, "!!!!"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "$$$$"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    const-string v1, "^^^^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%%%%"

    if-nez v1, :cond_d

    .line 1096
    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 1098
    :cond_d
    invoke-virtual {v0, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1100
    :goto_2
    const-string v0, "@@@@"

    const-string v1, "showNetWorkCheckActivity"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1101
    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v2, p1

    move-object v3, p2

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_e

    .line 1105
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1106
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1107
    const-string p3, "spmId"

    const-string v0, "H5_NONESPM_PAGE"

    invoke-virtual {p2, p3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string p3, "spm"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p3, "reportData"

    invoke-interface {p2, p3, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1111
    :cond_e
    return-void

    .line 1028
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "loadErrorPage 404 or 403, return "

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V
    .locals 5

    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 956
    return-void

    .line 959
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 960
    iget-object v1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    const-string v2, "targetUrl"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMethod:Ljava/lang/String;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget v1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-wide v1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long/2addr v1, v3

    .line 966
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-boolean p1, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz p1, :cond_1

    const-string p1, "YES"

    goto :goto_0

    :cond_1
    const-string p1, "NO"

    :goto_0
    const-string v1, "isMainDoc"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 969
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Landroid/net/Uri;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 9

    .line 1152
    nop

    .line 1153
    const-string v0, "h5_enableTraceVideoAndAudioTrafficInUC"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1157
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAndAudioTrafficUsed size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXMonitorService;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXMonitorService;

    .line 1159
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->getPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v7, "H5_UC"

    const/4 v8, 0x0

    .line 1158
    invoke-interface/range {v0 .. v8}, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXMonitorService;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    goto :goto_0

    .line 1165
    :catchall_0
    move-exception p1

    .line 1166
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "onVideoAndAudioTrafficUsed error :"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1169
    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 2

    .line 1248
    nop

    .line 1249
    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1264
    :pswitch_0
    nop

    .line 1265
    const-string p2, "t3"

    goto :goto_0

    .line 1260
    :pswitch_1
    const-string p2, "main"

    const-string v0, "WEBVIEW_EVENT_TYPE_LOADING_STATUS_T2"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    nop

    .line 1262
    const-string p2, "t2"

    goto :goto_0

    .line 1257
    :pswitch_2
    nop

    .line 1258
    const-string p2, "t1"

    goto :goto_0

    .line 1254
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->G:I

    .line 1255
    return-void

    .line 1251
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->F:I

    .line 1252
    return-void

    .line 1270
    :cond_0
    const-string p2, "t2Trace"

    goto :goto_0

    .line 1267
    :cond_1
    nop

    .line 1268
    const-string p2, "t2Paint"

    .line 1273
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Ljava/lang/Object;)I

    move-result p1

    iget v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->F:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p2, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 1275
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    iget p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->G:I

    iget v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->F:I

    sub-int/2addr p2, v0

    const-string v0, "t0"

    invoke-virtual {p1, v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 1277
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 2177
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2178
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p2, "h5Performance.onPageFinished"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2182
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .locals 7

    .line 1607
    const-class v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    .line 1609
    if-eqz v0, :cond_2

    .line 1611
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "h5_stamper"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1612
    if-eqz v1, :cond_1

    .line 1613
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v2, "h5GetAllResponse is not null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const/4 v1, 0x0

    .line 1615
    const/16 v2, 0x400

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 1617
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1619
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    .line 1620
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1624
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1625
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1627
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v6, "call h5GetAllResponse.setData"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;->setData(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1630
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v0, "response.setData(stream2)"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p2, v4}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1635
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1636
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 1635
    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    .line 1632
    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    .line 1635
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 1632
    :catch_1
    move-exception p1

    .line 1633
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyReportMark exception : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1635
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1636
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1637
    :goto_2
    nop

    .line 1638
    goto :goto_4

    .line 1635
    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1636
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 1639
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "h5GetAllResponse is null"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_2
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportErrorPage errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 978
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 982
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "networkType"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object p1, Lcom/alipay/mobile/nebula/util/H5Log;->CURRENT_DEVICE_SPEC:Ljava/lang/String;

    const-string p2, "deviceInfo"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p2, "h5PageError"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 987
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    sget p2, Lcom/alipay/mobile/nebulacore/api/PageStatus;->ERROR:I

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 989
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedErrorPoint;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedErrorPoint;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedErrorPoint;->onReceivedError(Lcom/alibaba/fastjson/JSONObject;)V

    .line 991
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 911
    const-string v0, "200"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "302"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    const-string v0, "304"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 918
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string p1, "errorMessage"

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string p1, "client"

    const-string p2, "android"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 923
    const-string p2, "data"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object p2

    sget-object p3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_RESOURCE_LOST:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto :goto_1

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1590
    :try_start_0
    const-string v0, "H5_AL_NETWORK_START"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1591
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string v0, "targetUrl"

    .line 1592
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string p2, "method"

    invoke-virtual {p1, p2, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string p2, "isMainDoc"

    .line 1593
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string p2, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 1594
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 1590
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    goto :goto_0

    .line 1596
    :catch_0
    move-exception p1

    .line 1597
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p3, "reqStartLog catch exception "

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1599
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 995
    return-void

    .line 997
    :cond_0
    const/4 v0, 0x0

    .line 998
    if-eqz p1, :cond_1

    .line 999
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1000
    const-string p1, "errorType"

    const-string v1, "longRender"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v1, "h5PageAbnormal"

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1003
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->m:Z

    return p1
.end method

.method private b(Ljava/lang/Object;)I
    .locals 4

    .line 1280
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object p0
.end method

.method private b(Ljava/lang/String;J)V
    .locals 2

    .line 2185
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 2186
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2187
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string p2, "h5Performance.onResourceFinishLoad"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2191
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/a/d/b;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->i:I

    return p0
.end method

.method public static declared-synchronized c()Ljava/util/concurrent/Executor;
    .locals 11

    const-class v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;

    monitor-enter v0

    .line 1557
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->s:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 1558
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v8, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string v2, "H5_InterceptRequest_SingleThreadExecutor"

    invoke-direct {v9, v2}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v10}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->s:Ljava/util/concurrent/Executor;

    .line 1564
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->s:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1556
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->m:Z

    return p0
.end method

.method private e()V
    .locals 6

    .line 890
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 891
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 892
    if-nez v0, :cond_0

    .line 893
    return-void

    .line 895
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 896
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "package_nick"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 900
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appId"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v4, "version"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v1, "packageNick"

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getResPkgInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource"

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 907
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->u:Lcom/alibaba/fastjson/JSONArray;

    return-object p0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/engine/a/d/d;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    return-object p0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 2194
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->w:Z

    if-nez v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "hasOnPageStarted but no hasShouldInterceptRequest! Dump Thread Infos!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/b$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$5;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 2211
    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 2212
    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 2213
    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 2214
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "h5netsupervisor exec onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->exec()V

    .line 2216
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 2

    .line 1967
    const-string v0, "about:blank"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 1971
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUpdateVisitedHistory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isReload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    .line 1973
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->k:Ljava/lang/String;

    .line 1974
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 5

    .line 1389
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1394
    const-string v2, "isTinyApp"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1395
    const-string v2, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1396
    :cond_1
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 1397
    if-eqz v2, :cond_2

    .line 1398
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1401
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1403
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1406
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1407
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->generateBridgeToken(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v1

    .line 1408
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setBridgeToken(Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v1

    .line 1413
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1414
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "startupParams"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1416
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v0

    .line 1415
    invoke-static {v2, v1, v3, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->loadJsBridge(Ljava/util/HashMap;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin set uc bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-object v0

    .line 1420
    :cond_4
    return-object v1

    .line 1390
    :cond_5
    :goto_1
    return-object v1
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    return-object v0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 5

    .line 1320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1321
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFirstVisuallyRender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1324
    if-eqz p1, :cond_0

    .line 1325
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_2

    .line 1332
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1333
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushwindow animation new webview onPause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUsePushWindowAnim(Z)V

    .line 1335
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->setShouldResumeWebView(Z)V

    .line 1336
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->onPause()V

    .line 1337
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/d/b$10;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$10;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    const-wide/16 v3, 0x12c

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1348
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFirstVisuallyRender(J)V

    .line 1349
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v0, "h5PageRender"

    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1351
    :cond_2
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 1356
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 3

    .line 1689
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1691
    const-string p1, "http://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "https://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1692
    :cond_0
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->q:Z

    if-eqz p1, :cond_2

    .line 1693
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 1694
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    .line 1696
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/b$13;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b$13;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1723
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1724
    const-string v0, "url"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    .line 1726
    if-eqz p2, :cond_3

    .line 1727
    const-string v0, "appId"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    const-string v0, "preSSOLogin"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    nop

    .line 1730
    const-string v1, "preSSOLoginBindingPage"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1731
    nop

    .line 1732
    const-string v2, "preSSOLoginUrl"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1733
    const-string v2, "ps"

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    const-string v0, "psb"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    const-string v0, "psu"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :cond_3
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v0, "h5PageLoadResource"

    invoke-interface {p2, v0, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1740
    :cond_4
    :goto_0
    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 22

    .line 1996
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPageFinished "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pageSize "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const-string v5, "about:blank"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2000
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v5, v1, v2}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 2003
    :cond_0
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v5, :cond_11

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 2007
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v5, :cond_2

    .line 2008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportDidFinishedLoadDate(J)V

    .line 2011
    :cond_2
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v5

    cmp-long v11, v5, v9

    if-nez v11, :cond_3

    .line 2012
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v5, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppear(J)V

    .line 2013
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "page appear "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :cond_3
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppearFromNative()J

    move-result-wide v11

    cmp-long v5, v11, v9

    if-nez v5, :cond_5

    .line 2017
    iget-boolean v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->m:Z

    if-eqz v5, :cond_4

    .line 2018
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    sub-long/2addr v11, v13

    .line 2018
    invoke-virtual {v5, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppearFromNative(J)V

    .line 2020
    iput-boolean v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->m:Z

    goto :goto_0

    .line 2022
    :cond_4
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v5, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppearFromNative(J)V

    .line 2024
    :goto_0
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "page appear native "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppearFromNative()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2028
    const-string v11, "url"

    invoke-virtual {v5, v11, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2030
    const-string v13, "title"

    invoke-virtual {v5, v13, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v13

    .line 2032
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v14

    .line 2033
    nop

    .line 2034
    nop

    .line 2035
    const/4 v15, 0x1

    if-eqz v13, :cond_9

    .line 2036
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v16

    .line 2038
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v6

    .line 2040
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 2043
    if-ltz v6, :cond_6

    iget v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h:I

    if-eq v10, v6, :cond_6

    .line 2044
    iput-boolean v15, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    .line 2048
    :cond_6
    iget-boolean v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    if-nez v10, :cond_7

    iget v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h:I

    if-ne v10, v6, :cond_7

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentItem()Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 2049
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2050
    iput-boolean v15, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    .line 2053
    :cond_7
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pageIndex "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " lastPageIndex "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " urlAsOriginal "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " pageUpdated "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    iget-boolean v9, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    if-eqz v9, :cond_8

    .line 2056
    iput v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h:I

    .line 2058
    :cond_8
    iget-object v9, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageIndex(I)V

    .line 2059
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "pageIndex"

    invoke-virtual {v5, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v9, v16

    goto :goto_1

    .line 2035
    :cond_9
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 2062
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "historySize"

    invoke-virtual {v5, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "historySize "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-boolean v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v13, "pageUpdated"

    invoke-virtual {v5, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v13, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->C:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->setIsLocal(Ljava/lang/String;)V

    .line 2070
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v10, v15, v17

    if-nez v10, :cond_a

    .line 2071
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-object v13, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v19

    move-object/from16 v21, v12

    sub-long v12, v15, v19

    invoke-virtual {v10, v12, v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->setComplete(J)V

    goto :goto_2

    .line 2070
    :cond_a
    move-object/from16 v21, v12

    .line 2074
    :goto_2
    sget-boolean v10, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v10, :cond_c

    .line 2075
    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "pageLoad|pageComplete"

    invoke-static {v12, v10}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2076
    const-string v10, "pageLoad|url"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2077
    nop

    .line 2079
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v10

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 2080
    if-eqz v10, :cond_b

    .line 2081
    invoke-interface {v10}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 2080
    :cond_b
    const-string v10, ""

    .line 2083
    :goto_3
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2084
    const-string v13, "alipayVersion"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v13, "brand"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v13, "fingerprint"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v13, "manufacturer"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v13, "model"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "network"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "sdkInt"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const-string v10, "phone"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2092
    instance-of v10, v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    if-nez v10, :cond_c

    .line 2093
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->injectJSParams(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 2097
    :cond_c
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v12

    const-wide/16 v15, 0x0

    cmp-long v1, v12, v15

    if-nez v1, :cond_d

    .line 2098
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageSize(J)V

    .line 2101
    :cond_d
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setHtmlLoadSize(J)V

    .line 2103
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " originalUrl "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " pageIndex "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^appear="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "^complete="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2106
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "^pageSize="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "^create="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2107
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreate()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2108
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^firstByte="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getFirstByte()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^jsSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2109
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^cssSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^imgSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2110
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^htmlSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getHtmlSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^otherSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2111
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherSize()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^requestNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2112
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num404="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum404()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num400="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2113
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum400()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num500="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum500()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num1000="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2114
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum1000()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^sizeLimit60="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2115
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit60()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2105
    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v8, "H5WebViewClient.onPageFinished"

    invoke-static {v8, v1, v7}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2128
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;-><init>()V

    .line 2129
    iput-object v2, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->url:Ljava/lang/String;

    .line 2130
    move-object/from16 v7, v21

    iput-object v7, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->title:Ljava/lang/String;

    .line 2131
    iput v9, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->historySize:I

    .line 2132
    iput v6, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->pageIndex:I

    .line 2133
    iget-boolean v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    iput-boolean v6, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->pageUpdated:Z

    .line 2134
    iget-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->c()I

    move-result v6

    iput v6, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;->backBehavior:I

    .line 2135
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    new-instance v7, Lcom/alipay/mobile/nebulax/engine/a/d/b$3;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$3;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2144
    iget-boolean v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->q:Z

    if-eqz v6, :cond_f

    .line 2145
    iget-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    if-nez v6, :cond_e

    .line 2146
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    .line 2148
    :cond_e
    iget-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;

    invoke-direct {v7, v0, v1, v5}, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 2160
    :cond_f
    iget-object v6, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    sget v7, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 2161
    const-class v6, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;

    invoke-static {v6}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;

    invoke-interface {v6, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;->onPageFinish(Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;)V

    .line 2162
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v6, "h5PageFinished"

    invoke-interface {v1, v6, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2165
    :goto_4
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v6, "h5PageFinishedSync"

    invoke-interface {v1, v6, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2166
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    .line 2167
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFinishLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 2169
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2170
    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;J)V

    .line 2172
    :cond_10
    return-void

    .line 2004
    :cond_11
    :goto_5
    return-void
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->v:Z

    .line 1745
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " originalUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->E:Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;

    if-eqz v1, :cond_0

    .line 1748
    invoke-interface {v1, p2}, Lcom/alipay/mobile/nebulax/engine/api/model/URLVisitListener;->onVisitStart(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/node/DataNode;

    .line 1752
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1753
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1754
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1755
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1756
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "publicId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1757
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bizScenario"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1754
    move-object v2, p2

    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1762
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1764
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, ""

    if-eqz p3, :cond_2

    .line 1765
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H5"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1766
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    .line 1769
    :cond_2
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 1770
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1773
    :cond_3
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez p3, :cond_4

    .line 1774
    return-void

    .line 1777
    :cond_4
    invoke-interface {p3, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->setContainsEmbedView(Z)V

    .line 1778
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->setContainsEmbedSurfaceView(Z)V

    .line 1779
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getPageId()I

    move-result v3

    invoke-interface {p3, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->setPageId(I)V

    .line 1781
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->z:Z

    if-nez p3, :cond_5

    const-string p3, "h5_bug_me_show_icon"

    invoke-static {p3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1782
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1785
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object p3

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {p3, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->addOrGetConsole(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object p3

    .line 1786
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->startup()V

    .line 1788
    const-string p3, "h5_bug_me_debug_switch_keep"

    invoke-static {p3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1789
    const-string p3, "h5_bug_me_super_user"

    invoke-static {p3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1790
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearCache(Z)V

    .line 1796
    :cond_5
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->o:Z

    .line 1797
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->p:Z

    .line 1798
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->j:Z

    .line 1801
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz p3, :cond_6

    .line 1802
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->clear()V

    .line 1803
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->setPageStartTime(J)V

    .line 1807
    :cond_6
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1808
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1809
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNavUrl(Ljava/lang/String;)V

    .line 1813
    :cond_7
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_8

    .line 1814
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageNetLoad()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "}->("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1815
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1814
    invoke-virtual {p3, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setReferer(Ljava/lang/String;)V

    .line 1820
    :cond_8
    nop

    .line 1821
    nop

    .line 1822
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p3

    const-string v3, "fromType"

    if-eqz p3, :cond_b

    .line 1823
    iget-boolean p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->z:Z

    if-nez p3, :cond_a

    .line 1824
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1826
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1827
    const/4 p3, 0x0

    goto :goto_0

    .line 1826
    :cond_9
    const/4 p3, 0x1

    goto :goto_0

    .line 1831
    :cond_a
    const/4 p3, 0x0

    goto :goto_0

    .line 1822
    :cond_b
    const/4 p3, 0x1

    .line 1835
    :goto_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->q:Z

    const-string v5, "url"

    if-eqz v4, :cond_d

    if-eqz p3, :cond_d

    .line 1836
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    if-nez p3, :cond_c

    .line 1837
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    .line 1839
    :cond_c
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->r:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1858
    :cond_d
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1859
    invoke-virtual {p3, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    sget v6, Lcom/alipay/mobile/nebulacore/api/PageStatus;->LOADING:I

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 1861
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v6, "invoke point PageStartedPoint"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-class v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;

    .line 1863
    if-eqz v4, :cond_e

    .line 1864
    invoke-interface {v4, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;->onStarted(Ljava/lang/String;)V

    .line 1866
    :cond_e
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v6, "h5PageStarted"

    invoke-interface {v4, v6, p3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1867
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz p3, :cond_f

    .line 1868
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->resetPageToken()V

    .line 1872
    :cond_f
    :goto_1
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1873
    invoke-virtual {p3, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v6, "h5PageStartedSync"

    invoke-interface {v4, v6, p3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1875
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->D:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 1876
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->clear()V

    .line 1879
    nop

    .line 1880
    instance-of p3, p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz p3, :cond_10

    .line 1881
    move-object p3, p1

    check-cast p3, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewIndex()I

    move-result p3

    goto :goto_2

    .line 1880
    :cond_10
    const/4 p3, 0x0

    .line 1883
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewIndex(I)V

    .line 1884
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 1885
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 1886
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {p3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageStartedLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1888
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 1889
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-wide v6, Lcom/alipay/mobile/h5container/api/H5Flag;->lastTouchTime:J

    .line 1890
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getTrackLastClickTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1889
    invoke-virtual {p3, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSrcClick(J)V

    .line 1893
    :cond_11
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 1894
    iget-boolean p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->z:Z

    if-nez p3, :cond_13

    .line 1895
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_12

    .line 1896
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1897
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1899
    :cond_12
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "hrefChange"

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1901
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v1, -0x1

    invoke-virtual {p3, v3, v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 1902
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v1, 0x6

    invoke-virtual {p3, v3, v4, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 1904
    goto :goto_3

    .line 1906
    :cond_13
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "subView"

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1911
    :cond_14
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 1912
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setToken(Ljava/lang/String;)V

    .line 1914
    :cond_15
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setH5Token(Ljava/lang/String;)V

    .line 1915
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5SessionToken:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setH5SessionToken(Ljava/lang/String;)V

    .line 1917
    const-string p3, "pageUrl"

    invoke-static {p3, p2}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "h5PageStartTime"

    invoke-static {v1, p3}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object p1

    .line 1921
    if-eqz p1, :cond_16

    .line 1922
    nop

    .line 1923
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1922
    const-string p3, "h5HistorySize"

    invoke-static {p3, p1}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :cond_16
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 1927
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sVisitHistoryQueue: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "h5History"

    invoke-static {p3, p1}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    :cond_17
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->t:Lcom/alipay/mobile/nebulax/engine/a/d/b$a;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b$a;->add(Ljava/lang/Object;)Z

    .line 1941
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    aput-object v5, p3, v2

    aput-object p2, p3, v0

    const-string p2, "H5WebViewClient.onPageStarted"

    invoke-static {p2, p1, p3}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1943
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->initDataExceededConfig(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1944
    return-void
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "webViewErrorCode"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "webViewErrorDesc"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failingUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result p3

    if-gez p3, :cond_0

    .line 432
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum1000()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum1000(I)V

    .line 435
    :cond_0
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result p3

    const/16 v0, -0x61

    if-ne p3, v0, :cond_1

    .line 437
    return-void

    .line 440
    :cond_1
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 441
    if-eqz p3, :cond_3

    iget-boolean p3, p3, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz p3, :cond_3

    .line 443
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object p3

    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-eq p3, v0, :cond_2

    .line 444
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 446
    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Z)V

    .line 448
    :cond_3
    const-string p2, "genericError"

    invoke-direct {p0, p4, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result p2

    invoke-direct {p0, p1, p4, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 451
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1362
    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedHttpError statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requestUrl : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez p2, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 461
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceivedHttpError : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 465
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 466
    return-void

    .line 458
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1385
    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 779
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedHeaderPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedHeaderPoint;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedHeaderPoint;->onReceivedResponseHeader(Ljava/util/Map;)V

    .line 780
    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 472
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 473
    const-string v1, "h5_onReceivedSslError"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 473
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 478
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    .line 479
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    .line 480
    if-eqz v1, :cond_1

    .line 481
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 482
    return-void

    .line 486
    :cond_1
    if-nez p3, :cond_2

    .line 487
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "SslError==null"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void

    .line 491
    :cond_2
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 492
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 493
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 494
    nop

    .line 495
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    .line 496
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedSslError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", url is "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p3, :cond_b

    .line 507
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 508
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 509
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 510
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 514
    :cond_5
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 515
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "onlineHost"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 520
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 521
    return-void

    .line 526
    :cond_6
    const-string p3, "h5_close_sslError"

    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 527
    const-string v2, "yes"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 528
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 529
    return-void

    .line 533
    :cond_7
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 534
    const-string v2, "h5_sslError_WhiteList"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {p3, v2}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 537
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 538
    return-void

    .line 542
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->n:J

    sub-long/2addr v2, v4

    .line 543
    const-wide/16 v4, 0x2710

    cmp-long p3, v2, v4

    if-gez p3, :cond_9

    .line 544
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 545
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 546
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 547
    return-void

    .line 549
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->n:J

    .line 550
    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Z)V

    .line 551
    const-string p3, "sslError"

    invoke-direct {p0, v0, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 511
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ignore param check for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void

    .line 555
    :cond_b
    :goto_1
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 556
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 557
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 18

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    iget-object v4, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResourceFinishLoad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 651
    :cond_0
    iget-object v4, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->showWarningTip(J)V

    .line 653
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 654
    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Ljava/lang/String;J)V

    .line 657
    :cond_1
    iget-object v4, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 660
    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->isShowErrorPage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 662
    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    .line 663
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setShowErrorPage(Z)V

    .line 666
    :cond_2
    new-instance v7, Lcom/alipay/mobile/nebulax/engine/a/d/b$7;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$7;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    const-wide/16 v8, 0xbb8

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 681
    :cond_3
    if-eqz v4, :cond_4

    .line 682
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    .line 683
    if-eqz v4, :cond_4

    .line 684
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4, v7}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 688
    :cond_4
    iget-object v4, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 689
    if-nez v4, :cond_5

    .line 690
    return-void

    .line 693
    :cond_5
    iget-boolean v7, v4, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v7, :cond_6

    .line 694
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getHtmlSize()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setHtmlSize(J)V

    .line 695
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageNetLoad(J)V

    .line 696
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " pageNetLoad "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageNetLoad()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_6
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 700
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageLoadSize()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageLoadSize(J)V

    .line 701
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageSize(J)V

    .line 702
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v7

    const-string v9, "|"

    const-wide/32 v10, 0x32000

    const-string v12, "KB)"

    const-string v15, "("

    const/4 v13, 0x1

    cmp-long v14, v7, v5

    if-nez v14, :cond_8

    cmp-long v7, v2, v10

    if-ltz v7, :cond_8

    .line 703
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200()I

    move-result v8

    add-int/2addr v8, v13

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200(I)V

    .line 704
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 705
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 706
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x400

    div-long v10, v2, v16

    long-to-int v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200Urls(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_7
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x400

    div-long v13, v2, v10

    long-to-int v10, v13

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200Urls(Ljava/lang/String;)V

    .line 716
    :cond_8
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 717
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_9

    .line 718
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssLoadSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssLoadSize(J)V

    .line 720
    :cond_9
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssSize(J)V

    goto/16 :goto_3

    .line 721
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 722
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_b

    .line 723
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsLoadSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsLoadSize(J)V

    .line 725
    :cond_b
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsSize(J)V

    goto/16 :goto_3

    .line 726
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 727
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v7

    const-wide/32 v10, 0xf000

    cmp-long v13, v7, v5

    if-nez v13, :cond_f

    .line 728
    cmp-long v5, v2, v10

    if-ltz v5, :cond_d

    .line 729
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLoadLimit60()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLoadLimit60(I)V

    goto :goto_1

    .line 728
    :cond_d
    const/4 v7, 0x1

    .line 731
    :goto_1
    const-wide/32 v5, 0x32000

    cmp-long v8, v2, v5

    if-ltz v8, :cond_e

    .line 732
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLoadLimit200()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLoadLimit200(I)V

    .line 734
    :cond_e
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgLoadSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgLoadSize(J)V

    .line 736
    :cond_f
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgSize(J)V

    .line 737
    cmp-long v5, v2, v10

    if-ltz v5, :cond_11

    .line 738
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit60()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit60(I)V

    .line 739
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 740
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x400

    div-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImageSizeLimit60Urls(Ljava/lang/String;)V

    goto :goto_2

    .line 743
    :cond_10
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x400

    div-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImageSizeLimit60Urls(Ljava/lang/String;)V

    .line 747
    :cond_11
    :goto_2
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pageData.sizeLimit200Urls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 748
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 747
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 750
    :cond_12
    iget-object v7, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_13

    .line 751
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherLoadSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherLoadSize(J)V

    .line 753
    :cond_13
    iget-object v5, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherSize()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherSize(J)V

    .line 756
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long/2addr v5, v7

    .line 757
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 758
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsReqNum()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsReqNum(I)V

    .line 759
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsSize()J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsSize(J)V

    .line 760
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsTime()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsTime(J)V

    goto :goto_4

    .line 762
    :cond_14
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherReqNum()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherReqNum(I)V

    .line 763
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherSize()J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherSize(J)V

    .line 764
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherTime()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherTime(J)V

    .line 766
    :goto_4
    const-wide/32 v1, 0xea60

    cmp-long v3, v5, v1

    if-gez v3, :cond_15

    .line 767
    return-void

    .line 770
    :cond_15
    iget-boolean v1, v4, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v1, :cond_16

    .line 771
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Z)V

    goto :goto_5

    .line 773
    :cond_16
    invoke-direct {v0, v4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    .line 775
    :goto_5
    return-void

    .line 649
    :cond_17
    :goto_6
    return-void
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 561
    const-string p1, "httpcode"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 562
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResourceResponse statusCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->remove(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getUcCacheResNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUcCacheResNum(I)V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 575
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_e

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 578
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 584
    :cond_3
    const-string v0, "mimetype"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    .line 585
    iput p1, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    .line 589
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;

    invoke-direct {p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;-><init>()V

    .line 590
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    iput-boolean v0, p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;->mIsMainDoc:Z

    .line 591
    iget v0, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    iput v0, p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;->mStatusCode:I

    .line 592
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;->mMimeType:Ljava/lang/String;

    .line 593
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;->mUrl:Ljava/lang/String;

    .line 594
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ResourceResponsePoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ResourceResponsePoint;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ResourceResponsePoint;->onResourceResponse(Lcom/alipay/mobile/nebulax/engine/api/extensions/model/ResourceResponseInfo;)V

    .line 597
    iget-boolean p2, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz p2, :cond_4

    .line 601
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 602
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFirstByte(J)V

    .line 604
    :cond_4
    const/16 p2, 0x12e

    const/16 v0, 0x130

    if-ne p1, p2, :cond_5

    .line 605
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum302()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum302(I)V

    goto :goto_0

    .line 606
    :cond_5
    if-ne p1, v0, :cond_6

    .line 607
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum304()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum304(I)V

    .line 610
    :cond_6
    :goto_0
    const/16 p2, 0x12c

    const/16 v2, 0x190

    if-lt p1, p2, :cond_7

    if-ge p1, v2, :cond_7

    if-eq p1, v0, :cond_7

    .line 611
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum300()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum300(I)V

    .line 614
    :cond_7
    const/16 p2, 0x194

    if-ne p1, p2, :cond_8

    .line 615
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum404()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum404(I)V

    .line 618
    :cond_8
    const/16 p2, 0x1f4

    if-lt p1, v2, :cond_9

    if-ge p1, p2, :cond_9

    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum400()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum400(I)V

    .line 622
    :cond_9
    if-lt p1, p2, :cond_a

    .line 623
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum500()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum500(I)V

    .line 626
    :cond_a
    iget p1, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    if-ge p1, v2, :cond_b

    .line 627
    return-void

    .line 630
    :cond_b
    iget-boolean p1, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz p1, :cond_c

    .line 631
    iget-object p1, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    const-string p2, "genericError"

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Z)V

    goto :goto_1

    .line 634
    :cond_c
    iget-object p1, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 635
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetErrorJsNum()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetErrorJsNum(I)V

    .line 636
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsReqNum()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsReqNum(I)V

    goto :goto_1

    .line 638
    :cond_d
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetErrorOtherNum()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetErrorOtherNum(I)V

    .line 639
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherReqNum()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherReqNum(I)V

    .line 642
    :goto_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    .line 643
    return-void

    .line 576
    :cond_e
    :goto_2
    return-void
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0

    .line 1376
    if-eqz p1, :cond_0

    .line 1377
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->setScale(F)V

    .line 1379
    :cond_0
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 1685
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1372
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 1117
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "onWebViewEvent h5Page == null"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-void

    .line 1122
    :cond_0
    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    const/16 v0, 0xe

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x68

    if-eq p2, v0, :cond_1

    const/16 v0, 0x69

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1138
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1125
    :cond_2
    :pswitch_0
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/Object;I)V

    .line 1126
    goto :goto_0

    .line 1134
    :cond_3
    :pswitch_1
    invoke-direct {p0, p3, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    nop

    .line 1143
    :goto_0
    goto :goto_1

    .line 1141
    :catchall_0
    move-exception p1

    .line 1142
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1144
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1425
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1431
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "GET"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 930
    const-string v0, "httpcode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 932
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 934
    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 935
    :cond_1
    return v1

    .line 938
    :cond_2
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    const-wide/16 p1, 0x14

    invoke-static {v2, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 945
    const/16 p1, 0x193

    if-eq v0, p1, :cond_4

    const/16 p1, 0x194

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 951
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 947
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string p2, "404 or 403,shouldInterceptResponse return false "

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return v1
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1366
    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 17

    .line 301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    const-string v0, "needVerifyUrl"

    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v3, v2, v10}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 303
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gao shouldOverrideUrlLoading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-class v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/BeforeShouldLoadUrlPoint;

    invoke-static {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/BeforeShouldLoadUrlPoint;

    invoke-interface {v3, v10}, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/BeforeShouldLoadUrlPoint;->beforeShouldOverrideUrlLoading(Ljava/lang/String;)V

    .line 309
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v11, 0x1

    if-eqz v3, :cond_b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 313
    :cond_0
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNavUrl(Ljava/lang/String;)V

    .line 315
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 316
    const-string v13, "url"

    invoke-virtual {v12, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->interceptSchemeForTiny(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptScheme  url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v11

    .line 324
    :cond_1
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    const-string v14, "stripLandingURL&Deeplink url "

    if-eqz v3, :cond_2

    .line 325
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bingo deeplink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return v11

    .line 329
    :cond_2
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->hasContentBeforeRedirect()Z

    move-result v3

    .line 330
    iget-object v4, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading hasContent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v4, "locationNormal"

    invoke-static {v10, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v15, "appId"

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 332
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 335
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 336
    if-eqz v3, :cond_3

    .line 337
    iget-object v5, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v16

    .line 338
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 339
    const/4 v5, 0x1

    .line 340
    invoke-static {v3, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "publicId"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 341
    const-string v6, "bizScenario"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 339
    const-string v6, "location"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz v16, :cond_3

    .line 343
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bingo deeplink in landing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 345
    return v11

    .line 351
    :cond_3
    instance-of v3, v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 353
    :try_start_0
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 354
    invoke-static {v3, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_4
    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v5, "exception detail"

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    :cond_5
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    .line 363
    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v0

    .line 364
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "historySize"

    invoke-virtual {v12, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_7

    .line 367
    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v15, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "preSSOLogin"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    nop

    .line 370
    const-string v3, "preSSOLoginBindingPage"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    nop

    .line 372
    const-string v5, "preSSOLoginUrl"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    const-string v6, "ps"

    invoke-virtual {v12, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "psb"

    invoke-virtual {v12, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "psu"

    invoke-virtual {v12, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_7
    iget-object v2, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v3, "h5PageShouldLoadUrl"

    invoke-interface {v2, v3, v12}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 378
    nop

    .line 380
    const-class v2, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->A:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 381
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 382
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->defaultValue(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulax/engine/a/d/b$6;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b$6;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    .line 383
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->resolve(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;

    invoke-interface {v2, v12, v10}, Lcom/alipay/mobile/nebulax/engine/api/extensions/url/ShouldLoadUrlPoint;->shouldLoad(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 399
    iget-object v2, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " shouldOverrideUrlLoading is intercepted, url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v2, 0x1

    goto :goto_2

    .line 402
    :cond_8
    const/4 v2, 0x0

    :goto_2
    const-string v3, "force"

    invoke-static {v12, v3, v4}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 403
    iget-object v2, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading is force load ,then load url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v2, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->y:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Referer"

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    const/4 v2, 0x1

    .line 409
    :cond_9
    iget-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-nez v2, :cond_a

    .line 411
    iput-boolean v11, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->B:Z

    .line 412
    const-string v0, "YES"

    iput-object v0, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->C:Ljava/lang/String;

    .line 414
    :cond_a
    return v2

    .line 310
    :cond_b
    :goto_3
    return v11
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 3

    .line 794
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading nonStandardType\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 796
    return v0

    .line 798
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 799
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "appId"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 800
    const-string p3, "h5_shouldOverrideUrlLoading"

    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "no"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 801
    invoke-static {p2, p1, p3, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 802
    return v1

    .line 806
    :cond_1
    return v0
.end method

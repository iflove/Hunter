.class public Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
    }
.end annotation


# static fields
.field public static final DURATION_ERROR:I = 0xea60

.field private static t:Ljava/util/concurrent/Executor;

.field private static u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:Landroid/content/res/Resources;

.field private C:Z

.field private D:I

.field private E:I

.field private F:Z

.field public TAG:Ljava/lang/String;

.field a:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

.field private d:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/web/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private v:Lcom/alibaba/fastjson/JSONArray;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "H5WebViewClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    .line 167
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    .line 169
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    .line 181
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->x:Z

    .line 182
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->y:Z

    .line 185
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->z:Z

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->A:J

    .line 617
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->C:Z

    .line 1450
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->F:Z

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 4
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "H5WebViewClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    .line 167
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    .line 169
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    .line 181
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->x:Z

    .line 182
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->y:Z

    .line 185
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->z:Z

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->A:J

    .line 617
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->C:Z

    .line 1450
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->F:Z

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isPrerender"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preRender"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 205
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 206
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 207
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    .line 208
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:I

    .line 209
    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:I

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageToken(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->w:Ljava/util/List;

    .line 216
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 218
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 252
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 254
    const-string v0, "h5_asyncSendEvent"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "configAsyncSendEvent":Ljava/lang/String;
    const-string v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    .line 259
    :cond_1
    const-string v1, "h5_fallback_log"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->v:Lcom/alibaba/fastjson/JSONArray;

    .line 260
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:I

    return p1
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 19
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "method"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    const-string v1, ".jpg"

    const-string v2, ".png"

    const-string v3, "android-phone-wallet-blessingcard"

    .line 1453
    const/4 v4, 0x0

    if-eqz p2, :cond_e

    iget-object v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p1

    goto/16 :goto_b

    .line 1456
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1459
    .local v17, "start":J
    iget-boolean v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->F:Z

    const/4 v5, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v0, v6, :cond_1

    .line 1460
    iput-boolean v5, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->F:Z

    .line 1462
    const/16 v0, -0x14

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1464
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v6, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v7, "setThreadPriority"

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1468
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 1470
    .local v6, "response":Landroid/webkit/WebResourceResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1472
    .local v7, "url":Ljava/lang/String;
    :try_start_1
    iput-boolean v5, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->y:Z

    .line 1473
    iget-object v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "shouldInterceptRequest "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_5

    :try_start_2
    const-string v0, "https://fucard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    iget-object v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->B:Landroid/content/res/Resources;

    if-nez v0, :cond_2

    .line 1477
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    move-object v10, v4

    .line 1478
    .local v10, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v10, v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v10, v3}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->B:Landroid/content/res/Resources;

    goto :goto_1

    .line 1476
    .end local v10    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_2
    move-object v10, v4

    .line 1481
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v10

    .line 1482
    .local v3, "fucardResPath":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "fucardResFileName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1485
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 1486
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1487
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1489
    :cond_4
    :goto_2
    iget-object v1, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->B:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "com.alipay.mobile.blessingcard:raw/"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1490
    .local v1, "rawId":I
    iget-object v2, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->B:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 1491
    .local v2, "tempStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1492
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v10, "UTF-8"

    invoke-direct {v5, v4, v10, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    .line 1574
    .end local v0    # "fucardResFileName":Ljava/lang/String;
    .end local v1    # "rawId":I
    .end local v2    # "tempStream":Ljava/io/InputStream;
    .end local v3    # "fucardResPath":Ljava/lang/String;
    .end local v4    # "mimeType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_3
    move-object v12, v7

    goto/16 :goto_9

    .line 1496
    :cond_5
    :try_start_3
    iget-object v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1498
    .local v0, "isMainDoc":Z
    iget-object v1, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1499
    :try_start_4
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->clearInputException()V

    .line 1501
    iget-object v10, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v13, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v14, 0x1

    .line 1502
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v3, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    move-object/from16 v11, p2

    move-object v12, v7

    move/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    move-object v6, v1

    .line 1503
    iget-object v1, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    const-string v1, "no"

    const-string v3, "h5_handleInputException"

    .line 1504
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1505
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v10, p1

    :try_start_5
    invoke-direct {v1, v8, v10, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    const-wide/16 v3, 0x14

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1504
    :cond_7
    move-object/from16 v10, p1

    goto :goto_5

    .line 1503
    :cond_8
    move-object/from16 v10, p1

    .line 1518
    :goto_5
    if-eqz v6, :cond_9

    .line 1519
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1520
    invoke-direct {v8, v7, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 1574
    .end local v0    # "isMainDoc":Z
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1525
    .restart local v0    # "isMainDoc":Z
    :cond_9
    :goto_6
    move-object v11, v6

    goto :goto_7

    .line 1498
    :cond_a
    move-object/from16 v10, p1

    move-object v11, v6

    .line 1525
    .end local v6    # "response":Landroid/webkit/WebResourceResponse;
    .local v11, "response":Landroid/webkit/WebResourceResponse;
    :goto_7
    if-eqz v11, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    .line 1528
    .local v2, "hasResponse":Z
    :goto_8
    move-object v12, v7

    .end local v7    # "url":Ljava/lang/String;
    .local v12, "url":Ljava/lang/String;
    move v7, v1

    .end local v2    # "hasResponse":Z
    .local v7, "hasResponse":Z
    if-nez v1, :cond_d

    .line 1529
    :try_start_6
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v9}, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;-><init>(JLjava/lang/String;)V

    .line 1530
    .local v1, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    if-eqz v12, :cond_c

    if-eqz v0, :cond_c

    .line 1531
    iget-object v2, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1532
    iput-boolean v5, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    .line 1534
    :cond_c
    iput-object v12, v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    .line 1535
    iget-object v2, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v2, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    .end local v1    # "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    new-instance v14, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v0

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1576
    .end local v0    # "isMainDoc":Z
    .end local v7    # "hasResponse":Z
    goto :goto_a

    .line 1574
    :catchall_3
    move-exception v0

    move-object v6, v11

    goto :goto_9

    .end local v11    # "response":Landroid/webkit/WebResourceResponse;
    .end local v12    # "url":Ljava/lang/String;
    .restart local v6    # "response":Landroid/webkit/WebResourceResponse;
    .local v7, "url":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move-object v12, v7

    .line 1575
    .end local v7    # "url":Ljava/lang/String;
    .local v0, "throwable":Ljava/lang/Throwable;
    .restart local v12    # "url":Ljava/lang/String;
    :goto_9
    iget-object v1, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v6

    .line 1577
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v6    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v11    # "response":Landroid/webkit/WebResourceResponse;
    :goto_a
    iget-wide v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->A:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v17

    add-long/2addr v0, v2

    iput-wide v0, v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->A:J

    .line 1578
    return-object v11

    .line 1453
    .end local v11    # "response":Landroid/webkit/WebResourceResponse;
    .end local v12    # "url":Ljava/lang/String;
    .end local v17    # "start":J
    :cond_e
    move-object/from16 v10, p1

    .line 1454
    :goto_b
    return-object v4
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 2031
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "title":Ljava/lang/String;
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 2033
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2034
    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2035
    :goto_1
    if-nez v1, :cond_2

    .line 2038
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "!titlePartOfUrl"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2042
    :cond_2
    const/4 v0, 0x0

    .line 2045
    :cond_3
    :goto_2
    return-object v0
.end method

.method private a()V
    .locals 9

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

    const/4 v1, 0x0

    move-object v2, v1

    .line 892
    .local v2, "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 893
    return-void

    .line 895
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v3, v1

    .line 896
    .local v3, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "package_nick"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, "packageNick":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v1

    .line 900
    .local v6, "obj":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "appId"

    invoke-virtual {v5, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v5, "name"

    invoke-virtual {v6, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    const-string v7, "version"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v5, "packageNick"

    invoke-virtual {v6, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getResPkgInfo()Ljava/lang/String;

    move-result-object v5

    const-string v7, "resource"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yes"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "isTinyApp"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "releaseType"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    .line 908
    .local v1, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v5

    if-eqz v5, :cond_1

    .line 909
    iget-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    const-string v7, "icon"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 913
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v4    # "packageNick":Ljava/lang/String;
    .end local v6    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 1970
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1971
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1972
    const-string v0, "h5_showThirdLoadingWhiteList"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 1973
    .local v3, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isTinyApp()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1974
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "no"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1978
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    return-void

    .line 1981
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1982
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "fromJS"

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const/4 v0, 0x1

    const-string v4, "title"

    const-string v5, "\u7b2c\u4e09\u65b9\u9875\u9762\u52a0\u8f7d\u4e2d..."

    if-ne p1, v0, :cond_2

    .line 1985
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1986
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1990
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1991
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isTinyApp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1992
    const-string v0, ""

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v4, "setTitle"

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 1975
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_1
    return-void

    .line 1998
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1670
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 1673
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "containCORSRes"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putBooleanExtra(Ljava/lang/String;Z)V

    .line 1676
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestNum()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setRequestNum(I)V

    .line 1678
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 1680
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v3, v6

    .line 1682
    .local v3, "isLoading":Z
    move v3, v2

    if-eqz v2, :cond_3

    .line 1683
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestLoadNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setRequestLoadNum(I)V

    .line 1685
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1686
    if-eqz v3, :cond_4

    .line 1687
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssLoadNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssLoadNum(I)V

    .line 1689
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssReqNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssReqNum(I)V

    return-void

    .line 1690
    :cond_5
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1691
    if-eqz v3, :cond_6

    .line 1692
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsLoadNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsLoadNum(I)V

    .line 1694
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsReqNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsReqNum(I)V

    return-void

    .line 1695
    :cond_7
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1696
    if-eqz v3, :cond_8

    .line 1697
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgLoadNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgLoadNum(I)V

    .line 1699
    :cond_8
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgReqNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgReqNum(I)V

    return-void

    .line 1701
    :cond_9
    if-eqz v3, :cond_a

    .line 1702
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherLoadNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherLoadNum(I)V

    .line 1704
    :cond_a
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherReqNum()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherReqNum(I)V

    .line 1706
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .line 1594
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    .line 1595
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1596
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextRequestId()I

    move-result v1

    .line 1597
    .local v1, "reqId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reqId"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const-string v2, "reqUrl"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    const-string v2, "method"

    invoke-virtual {v0, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "fromLocalPkg"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_SRART:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1605
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const/4 v4, 0x0

    .line 1606
    .local v4, "responseEvent":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "statusCode"

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_NETWORK_FINISH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1611
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "reqId":I
    .end local v4    # "responseEvent":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 1301
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isUcCheckDsl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 1307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1308
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1333
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/Object;I)V
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "type"    # I

    .line 1181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWebViewEvent empty page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const/4 v0, 0x0

    .line 1185
    .local v0, "blankTime":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1188
    const/4 v1, 0x0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1190
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onWebViewEvent empty page blankTime is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v2, 0x3

    const-string v3, "pageLoad|emptyScreen"

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    .line 1192
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    .line 1193
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    :cond_0
    const-string v2, "activity isBackgroundRunning or screenOff"

    const/4 v5, 0x6

    if-ne v0, v5, :cond_6

    .line 1198
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    .line 1199
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1202
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1203
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dsl_error"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1206
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1211
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->whiteScreenSnapshotUpload(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1213
    const/16 v4, 0x10

    if-ne p3, v4, :cond_4

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1214
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isTinyApp"

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1215
    const-string v4, "h5_enableTinyBaseColorEmptyScreen"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1219
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    goto :goto_2

    .line 1207
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return-void

    .line 1222
    :cond_6
    :goto_2
    const/16 v4, 0x9

    if-ne v0, v4, :cond_b

    .line 1223
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onWebViewEvent empty page blankTime 3&6 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 1226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 1232
    :cond_8
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    if-nez v2, :cond_b

    .line 1233
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v3, "onWebViewEvent empty page blankTime is report monitor"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1235
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v2

    const-string v3, "errorType"

    const-string v5, "ucLongRender"

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    if-ne p3, v4, :cond_9

    const v2, -0x927c5

    goto :goto_3

    :cond_9
    const v2, -0x927c6

    .line 1240
    .local v2, "errorCode":I
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v4, "h5PageAbnormal"

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_5

    .line 1229
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "errorCode":I
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    return-void

    .line 1244
    :cond_b
    :goto_5
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 23
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "errorUrl"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "extInfo"    # Landroid/os/Bundle;

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadErrorPage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " statusCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v1, :cond_0

    .line 1011
    return-void

    .line 1014
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "dsl_error"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1, v11, v12}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->onInterceptError(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1019
    return-void

    .line 1022
    :cond_2
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    const/4 v10, 0x0

    move-object v3, v10

    .line 1023
    .local v3, "routerProvider":Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;
    move-object v13, v1

    .end local v3    # "routerProvider":Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;
    .local v13, "routerProvider":Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;
    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->z:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1024
    move-object/from16 v14, p1

    invoke-interface {v13, v14, v1, v12, v11}, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;->enableRoute(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1025
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->z:Z

    .line 1026
    return-void

    .line 1023
    :cond_3
    move-object/from16 v14, p1

    .line 1029
    :cond_4
    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/view/H5ErrorViewUtils;->ignoreErrorPage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1030
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "ignoreErrorPage by H5ErrorViewUtils.ignoreErrorPage!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void

    .line 1034
    :cond_5
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFailLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1036
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v3, "h5PageAbnormal"

    invoke-virtual {v1, v3, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1038
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "bizType"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1039
    .local v15, "bizType":Ljava/lang/String;
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bizType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v1, "Advertisement"

    invoke-static {v15, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1042
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContentView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    return-void

    .line 1046
    :cond_6
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "transparent"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "transAnimate"

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1047
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1048
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "loadErrorPage in transparent case return directly"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "h5PageClose"

    invoke-virtual {v1, v2, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1050
    return-void

    .line 1052
    :cond_7
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageErrorForTitlebar"

    invoke-virtual {v1, v5, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1054
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 1055
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_loading_failed:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1056
    .local v9, "pageTitle":Ljava/lang/String;
    invoke-static {v12, v4}, Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;->getErrorMsg(IZ)Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "errorResult":Ljava/lang/String;
    invoke-static {v12, v2}, Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;->getErrorMsg(IZ)Ljava/lang/String;

    move-result-object v16

    .line 1058
    .local v16, "subErrorMsg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_menu_refresh:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1059
    .local v7, "buttonText":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_network_check:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1061
    .local v6, "checkButtonText":Ljava/lang/String;
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1062
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_backward:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .local v1, "backButtonText":Ljava/lang/String;
    goto :goto_0

    .line 1064
    .end local v1    # "backButtonText":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_close:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 1067
    .local v5, "backButtonText":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1068
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setShowErrorPage(Z)V

    .line 1073
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/MPH5ErrorPageView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/nebula/provider/MPH5ErrorPageView;

    move-object v1, v10

    .line 1074
    .local v1, "mph5ErrorPageView":Lcom/alipay/mobile/nebula/provider/MPH5ErrorPageView;
    move-object v1, v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/16 v17, 0x0

    .line 1075
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    .end local v5    # "backButtonText":Ljava/lang/String;
    .local v18, "backButtonText":Ljava/lang/String;
    move/from16 v5, p3

    move-object/from16 v19, v6

    .end local v6    # "checkButtonText":Ljava/lang/String;
    .local v19, "checkButtonText":Ljava/lang/String;
    move-object v6, v8

    move-object/from16 v20, v7

    .end local v7    # "buttonText":Ljava/lang/String;
    .local v20, "buttonText":Ljava/lang/String;
    move-object/from16 v7, v16

    move-object/from16 v21, v8

    .end local v8    # "errorResult":Ljava/lang/String;
    .local v21, "errorResult":Ljava/lang/String;
    move-object/from16 v8, p4

    move-object/from16 v22, v9

    .end local v9    # "pageTitle":Ljava/lang/String;
    .local v22, "pageTitle":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-interface/range {v1 .. v9}, Lcom/alipay/mobile/nebula/provider/MPH5ErrorPageView;->enableShowErrorPage(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1076
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v10, 0x0

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, v21

    move-object/from16 v8, v16

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v10}, Lcom/alipay/mobile/nebula/provider/MPH5ErrorPageView;->errorPageCallback(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 1077
    return-void

    .line 1074
    .end local v18    # "backButtonText":Ljava/lang/String;
    .end local v19    # "checkButtonText":Ljava/lang/String;
    .end local v20    # "buttonText":Ljava/lang/String;
    .end local v21    # "errorResult":Ljava/lang/String;
    .end local v22    # "pageTitle":Ljava/lang/String;
    .restart local v5    # "backButtonText":Ljava/lang/String;
    .restart local v6    # "checkButtonText":Ljava/lang/String;
    .restart local v7    # "buttonText":Ljava/lang/String;
    .restart local v8    # "errorResult":Ljava/lang/String;
    .restart local v9    # "pageTitle":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 1081
    .end local v5    # "backButtonText":Ljava/lang/String;
    .end local v6    # "checkButtonText":Ljava/lang/String;
    .end local v7    # "buttonText":Ljava/lang/String;
    .end local v8    # "errorResult":Ljava/lang/String;
    .end local v9    # "pageTitle":Ljava/lang/String;
    .restart local v18    # "backButtonText":Ljava/lang/String;
    .restart local v19    # "checkButtonText":Ljava/lang/String;
    .restart local v20    # "buttonText":Ljava/lang/String;
    .restart local v21    # "errorResult":Ljava/lang/String;
    .restart local v22    # "pageTitle":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;

    move-object v2, v10

    .line 1082
    .local v2, "h5ErrorPageView":Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;
    move-object v2, v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;->enableShowErrorPage()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1083
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, v21

    move-object/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;->errorPageCallback(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void

    .line 1088
    :cond_c
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1089
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->h5_trans_page_error:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "html":Ljava/lang/String;
    goto :goto_1

    .line 1091
    .end local v3    # "html":Ljava/lang/String;
    :cond_d
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->h5_page_error:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v3

    .line 1094
    .restart local v3    # "html":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_e

    .line 1095
    return-void

    .line 1097
    :cond_e
    const-string v4, "####"

    move-object/from16 v9, v20

    .end local v20    # "buttonText":Ljava/lang/String;
    .local v9, "buttonText":Ljava/lang/String;
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1098
    const-string v5, "****"

    move-object/from16 v8, v19

    .end local v19    # "checkButtonText":Ljava/lang/String;
    .local v8, "checkButtonText":Ljava/lang/String;
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v21

    .end local v21    # "errorResult":Ljava/lang/String;
    .local v7, "errorResult":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "&&&&"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1100
    const-string v5, "!!!!"

    move-object/from16 v6, v22

    .end local v22    # "pageTitle":Ljava/lang/String;
    .local v6, "pageTitle":Ljava/lang/String;
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1101
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "$$$$"

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1102
    const-string v5, "^^^^"

    move-object/from16 v10, v18

    .end local v18    # "backButtonText":Ljava/lang/String;
    .local v10, "backButtonText":Ljava/lang/String;
    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1103
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "%%%%"

    if-nez v4, :cond_f

    .line 1104
    invoke-virtual {v3, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1106
    :cond_f
    const-string v4, ""

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    :goto_2
    const-string v4, "@@@@"

    const-string v5, "showNetWorkCheckActivity"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 1109
    .end local v3    # "html":Ljava/lang/String;
    .local v18, "html":Ljava/lang/String;
    const-string v19, "text/html"

    const-string v20, "utf-8"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "pageTitle":Ljava/lang/String;
    .local v21, "pageTitle":Ljava/lang/String;
    move-object/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "errorResult":Ljava/lang/String;
    .local v19, "errorResult":Ljava/lang/String;
    move-object/from16 v7, v20

    move-object/from16 v20, v8

    .end local v8    # "checkButtonText":Ljava/lang/String;
    .local v20, "checkButtonText":Ljava/lang/String;
    move-object/from16 v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_10

    .line 1113
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1114
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 1115
    .local v5, "spm":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const-string v6, "spmId"

    const-string v7, "H5_NONESPM_PAGE"

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v4, "spm"

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v6, "reportData"

    invoke-virtual {v4, v6, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1119
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "spm":Lcom/alibaba/fastjson/JSONObject;
    :cond_10
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 128
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/Bundle;

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 965
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 966
    return-void

    .line 969
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 970
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    const-string v3, "targetUrl"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMethod:Ljava/lang/String;

    const-string v2, "method"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget v0, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-wide v2, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long/2addr v2, v4

    .line 976
    .local v2, "duration":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "duration"

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    iget-boolean v0, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v0, :cond_1

    const-string v0, "YES"

    goto :goto_0

    :cond_1
    const-string v0, "NO"

    :goto_0
    const-string v4, "isMainDoc"

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 979
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 12
    .param p1, "size"    # Ljava/lang/Object;

    .line 1160
    nop

    .line 1161
    const-string v0, "h5_enableTraceVideoAndAudioTrafficInUC"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "enableTraceVideoAndAudioTrafficInUC":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1165
    .local v1, "dataSize":J
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onVideoAndAudioTrafficUsed size :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v3

    .line 1167
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    sget-object v10, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const/4 v11, 0x0

    .line 1166
    move-wide v8, v1

    invoke-virtual/range {v3 .. v11}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJLcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    .end local v1    # "dataSize":J
    return-void

    .line 1169
    :catchall_0
    move-exception v1

    .line 1170
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v3, "onVideoAndAudioTrafficUsed error :"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1173
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .line 1250
    const/4 v0, 0x0

    .line 1252
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1253
    .local v1, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    const/16 v2, 0xd

    if-eq p2, v2, :cond_2

    const/16 v2, 0xe

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1278
    :pswitch_0
    const-string v0, "t3"

    .line 1279
    if-eqz v1, :cond_3

    .line 1280
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_UC_Loading_T3:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    goto :goto_0

    .line 1270
    :pswitch_1
    const-string v2, "main"

    const-string v3, "WEBVIEW_EVENT_TYPE_LOADING_STATUS_T2"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v0, "t2"

    .line 1272
    if-eqz v1, :cond_3

    .line 1273
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_UC_Loading_T2:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 1274
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_UC_Loading_T2_TS:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    goto :goto_0

    .line 1264
    :pswitch_2
    const-string v0, "t1"

    .line 1265
    if-eqz v1, :cond_3

    .line 1266
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_UC_Loading_T1:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    goto :goto_0

    .line 1258
    :pswitch_3
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->E:I

    .line 1259
    if-eqz v1, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_UC_Loading_T0:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->E:I

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 1262
    :cond_0
    return-void

    .line 1255
    :pswitch_4
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    .line 1256
    return-void

    .line 1287
    :cond_1
    const-string v0, "t2Trace"

    goto :goto_0

    .line 1284
    :cond_2
    const-string v0, "t2Paint"

    .line 1285
    nop

    .line 1290
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1291
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 1292
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->E:I

    iget v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->D:I

    sub-int/2addr v3, v4

    const-string v4, "t0"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 1294
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "appIdList"    # Ljava/lang/String;

    .line 815
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    return-void

    .line 818
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 819
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 820
    const-string v0, "h5_pkgresmode"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 822
    .local v3, "joConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "switchheader"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "value":Ljava/lang/String;
    const/4 v4, 0x3

    .line 825
    .local v4, "limit":I
    :try_start_0
    const-string v5, "limit"

    const-string v6, "3"

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 828
    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 830
    return-void

    .line 832
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v1, "list":[Ljava/lang/String;
    move-object v1, v5

    array-length v5, v5

    if-eqz v5, :cond_3

    array-length v5, v1

    if-le v5, v4, :cond_2

    goto :goto_1

    .line 836
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 837
    .local v5, "pkgList":Ljava/util/List;
    const-string v6, "URGENT_DISPLAY"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;

    invoke-direct {v7, p0, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 834
    .end local v5    # "pkgList":Ljava/util/List;
    :cond_3
    :goto_1
    return-void

    .line 887
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "list":[Ljava/lang/String;
    .end local v3    # "joConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "limit":I
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pageSize"    # J

    .line 2230
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    .line 2231
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2232
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "size"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "h5Performance.onPageFinished"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2236
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/webkit/WebResourceResponse;

    .line 1632
    const-class v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    .line 1633
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;

    const/4 v1, 0x0

    .line 1634
    .local v1, "h5GetAllResponse":Lcom/alipay/mobile/h5container/api/H5GetAllResponse;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 1636
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "h5_stamper"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1637
    if-eqz v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "h5GetAllResponse is not null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const/4 v0, 0x0

    .line 1640
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 1642
    .local v2, "buffer":[B
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 1644
    :goto_0
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    if-ltz v3, :cond_0

    .line 1645
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1649
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1650
    .local v3, "stream1":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1652
    .local v5, "stream2":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v7, "call h5GetAllResponse.setData"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-interface {v1, p1, v3}, Lcom/alipay/mobile/h5container/api/H5GetAllResponse;->setData(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1655
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v7, "response.setData(stream2)"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p2, v5}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    .end local v3    # "stream1":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "stream2":Ljava/io/InputStream;
    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1661
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1662
    return-void

    .line 1660
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1657
    :catch_0
    move-exception v3

    .line 1658
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyReportMark exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1660
    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1661
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 1664
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "h5GetAllResponse is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "failingUrl"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 984
    return-void

    .line 986
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 987
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v0, "type"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v0, "url"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 991
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5Log;->CURRENT_DEVICE_SPEC:Ljava/lang/String;

    const-string v3, "deviceInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v3, "h5PageError"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 994
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "failingUrl"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 916
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 917
    const-string v0, "200"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "302"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 918
    const-string v0, "304"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendErrorResource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 923
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 924
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "url"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v0, "error"

    invoke-virtual {v2, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v0, "errorMessage"

    invoke-virtual {v2, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v0, "client"

    const-string v3, "android"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 929
    .local v3, "packet":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "data"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_RESOURCE_LOST:Ljava/lang/String;

    invoke-interface {v0, v4, v3, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto :goto_1

    .line 919
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "packet":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 932
    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isMainDoc"    # Z

    .line 1615
    :try_start_0
    const-string v0, "H5_AL_NETWORK_START"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1616
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "targetUrl"

    .line 1617
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "isMainDoc"

    .line 1618
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1619
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1615
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    return-void

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "reqStartLog catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1624
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isLongRender"    # Z

    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 998
    return-void

    .line 1000
    :cond_0
    const/4 v0, 0x0

    .line 1001
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_1

    .line 1002
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1003
    move-object v0, v1

    const-string v2, "errorType"

    const-string v3, "longRender"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "h5PageAbnormal"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1006
    return-void
.end method

.method private static b(Ljava/lang/Object;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 1297
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method private b(Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pageSize"    # J

    .line 2239
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    .line 2240
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2241
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "size"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "h5Performance.onResourceFinishLoad"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2245
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    return-object v0
.end method

.method public static declared-synchronized getSingleThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 11

    const-class v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    monitor-enter v0

    .line 1582
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->t:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 1583
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

    sput-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->t:Ljava/util/concurrent/Executor;

    .line 1589
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->t:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1581
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->v:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 2021
    const-string v0, "about:blank"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doUpdateVisitedHistory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isReload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    .line 2027
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->l:Ljava/lang/String;

    .line 2028
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 8

    .line 1405
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v1

    .line 1410
    .local v2, "pageParams":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "isTinyApp"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1411
    const-string v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_1

    .line 1412
    :cond_2
    :goto_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    move-object v3, v1

    .line 1413
    .local v3, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 1414
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1417
    .end local v3    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1418
    .local v3, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1419
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/Nebula;->removeKeysFromStartParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1421
    .local v1, "bridgeParams":Ljava/util/HashMap;
    move-object v1, v0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "startupParams"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridgeToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1425
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->generateBridgeToken(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "token":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setBridgeToken(Ljava/lang/String;)V

    goto :goto_2

    .line 1428
    .end local v0    # "token":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridgeToken()Ljava/lang/String;

    move-result-object v0

    .line 1431
    .restart local v0    # "token":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1432
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewId()I

    move-result v5

    .line 1431
    invoke-static {v1, v0, v4, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->loadJsBridge(Ljava/util/HashMap;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, "bridge":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begin set uc bridge "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return-object v4

    .line 1436
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "bridgeParams":Ljava/util/HashMap;
    .end local v4    # "bridge":Ljava/lang/String;
    :cond_5
    return-object v1

    .line 1406
    .end local v2    # "pageParams":Landroid/os/Bundle;
    .end local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :goto_3
    return-object v1
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->l:Ljava/lang/String;

    return-object v0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 6
    .param p1, "webview"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1338
    .local v0, "time":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFirstVisuallyRender "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1341
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_0

    .line 1342
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_2

    .line 1347
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1348
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pushwindow animation new webview onPause "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUsePushWindowAnim(Z)V

    .line 1350
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setShouldResumeWebView(Z)V

    .line 1351
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V

    .line 1352
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$6;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    const-wide/16 v4, 0x12c

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1362
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFirstVisuallyRender(J)V

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "12 H5WebViewClient#onFirstVisuallyRender launch_cost maybe end:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tiny_launch_cost"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v4, "h5PageRender"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1367
    :cond_2
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message2"    # Landroid/os/Message;

    .line 1372
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 1714
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadResource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1716
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1717
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    if-eqz v0, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1719
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1748
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1749
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "url"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1751
    .local v1, "startBundle":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 1752
    const-string v0, "appId"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    const-string v0, "preSSOLogin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "preSSOLogin":Ljava/lang/String;
    nop

    .line 1755
    const-string v3, "preSSOLoginBindingPage"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, "preSSOLoginBindingPage":Ljava/lang/String;
    nop

    .line 1757
    const-string v4, "preSSOLoginUrl"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1758
    .local v4, "preSSOLoginUrl":Ljava/lang/String;
    const-string v5, "ps"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    const-string v5, "psb"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    const-string v5, "psu"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    .end local v0    # "preSSOLogin":Ljava/lang/String;
    .end local v3    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v4    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v3, "h5PageLoadResource"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1765
    .end local v1    # "startBundle":Landroid/os/Bundle;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 18

    .line 2050
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v5, p3

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "onPageFinished "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pageSize "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const-string v3, "about:blank"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2054
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 2057
    :cond_0
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_15

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 2060
    :cond_1
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(I)V

    .line 2062
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v9, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 2063
    if-eqz v4, :cond_2

    .line 2064
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v10, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_OnPageFinished:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v4, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 2065
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v10, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Cost_Nebula_ShouldInterceptTotal:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    iget-wide v11, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->A:J

    invoke-interface {v4, v9, v10, v11, v12}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 2068
    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v4, :cond_3

    .line 2069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportDidFinishedLoadDate(J)V

    .line 2072
    :cond_3
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-nez v4, :cond_4

    .line 2073
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppear(J)V

    .line 2074
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "page appear "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_4
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppearFromNative()J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-nez v4, :cond_6

    .line 2078
    iget-boolean v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    if-eqz v4, :cond_5

    .line 2079
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    sub-long/2addr v11, v13

    .line 2079
    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppearFromNative(J)V

    .line 2081
    iput-boolean v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->n:Z

    goto :goto_0

    .line 2083
    :cond_5
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppearFromNative(J)V

    .line 2085
    :goto_0
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "page appear native "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppearFromNative()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2089
    const-string v11, "url"

    invoke-virtual {v4, v11, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2091
    const-string v13, "title"

    invoke-virtual {v4, v13, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v12

    .line 2093
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v13

    .line 2094
    nop

    .line 2095
    nop

    .line 2096
    const/4 v14, 0x1

    if-eqz v12, :cond_a

    .line 2097
    invoke-interface {v12}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v15

    .line 2099
    invoke-interface {v12}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v3

    .line 2101
    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 2104
    if-ltz v3, :cond_7

    iget v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:I

    if-eq v10, v3, :cond_7

    .line 2105
    iput-boolean v14, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    .line 2109
    :cond_7
    iget-boolean v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    if-nez v10, :cond_8

    iget v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:I

    if-ne v10, v3, :cond_8

    invoke-interface {v12}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentItem()Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 2110
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2111
    iput-boolean v14, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    .line 2114
    :cond_8
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "pageIndex "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " lastPageIndex "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " urlAsOriginal "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " pageUpdated "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-boolean v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    if-eqz v9, :cond_9

    .line 2117
    iput v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:I

    .line 2119
    :cond_9
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageIndex(I)V

    .line 2120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "pageIndex"

    invoke-virtual {v4, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2096
    :cond_a
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 2123
    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "historySize"

    invoke-virtual {v4, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "historySize "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    iget-boolean v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "pageUpdated"

    invoke-virtual {v4, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v9, :cond_b

    .line 2127
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setIsLocal(Ljava/lang/String;)V

    .line 2131
    :cond_b
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v12, v9, v14

    if-nez v12, :cond_c

    .line 2132
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/alipay/mobile/h5container/api/H5PageData;->setComplete(J)V

    .line 2135
    :cond_c
    sget-boolean v9, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v9, :cond_e

    .line 2136
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "pageLoad|pageComplete"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2137
    const-string v9, "pageLoad|url"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2138
    nop

    .line 2140
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v9

    const-class v10, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 2141
    if-eqz v9, :cond_d

    .line 2142
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2141
    :cond_d
    const-string v9, ""

    .line 2144
    :goto_2
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2145
    const-string v12, "alipayVersion"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "brand"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v12, "fingerprint"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v12, "manufacturer"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v12, "model"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "network"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "sdkInt"

    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    const-string v9, "phone"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2153
    instance-of v9, v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    if-nez v9, :cond_e

    .line 2154
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->injectJSParams(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 2158
    :cond_e
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v12, v9, v14

    if-nez v12, :cond_f

    .line 2159
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageSize(J)V

    .line 2162
    :cond_f
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setHtmlLoadSize(J)V

    .line 2164
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " originalUrl "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " pageIndex "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "start="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^appear="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "^complete="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2167
    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "^pageSize="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "^create="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2168
    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreate()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2169
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^firstByte="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getFirstByte()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^jsSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2170
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^cssSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^imgSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2171
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^htmlSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getHtmlSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^otherSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2172
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "^requestNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2173
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num404="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum404()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num400="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2174
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum400()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num500="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum500()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^num1000="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2175
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum1000()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^sizeLimit60="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 2176
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit60()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2166
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v8, "H5WebViewClient.onPageFinished"

    invoke-static {v8, v3, v7}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2181
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    instance-of v7, v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v7, :cond_10

    .line 2182
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    .line 2183
    if-eqz v3, :cond_10

    .line 2184
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onPageFinish()V

    .line 2188
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v7, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$11;

    invoke-direct {v7, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$11;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v3, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2196
    iget-boolean v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    if-eqz v3, :cond_12

    .line 2197
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    if-nez v3, :cond_11

    .line 2198
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    .line 2200
    :cond_11
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$12;

    invoke-direct {v7, v1, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$12;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2209
    :cond_12
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v7, "h5PageFinished"

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2212
    :goto_3
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v7, "h5PageFinishedSync"

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2213
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFinishLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 2215
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2216
    invoke-direct {v1, v2, v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;J)V

    .line 2220
    :cond_13
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    .line 2221
    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_14

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v3, :cond_14

    .line 2222
    const-wide/16 v3, 0x0

    const-string v7, "Nebula"

    move-object/from16 v2, p2

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    :cond_14
    return-void

    .line 2224
    :catchall_0
    move-exception v0

    .line 2226
    return-void

    .line 2058
    :cond_15
    :goto_4
    return-void
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->x:Z

    .line 1770
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageStarted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " originalUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1780
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1782
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1783
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1784
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "publicId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1785
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bizScenario"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1782
    move-object v2, p2

    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1791
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1793
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1794
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "H5"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1795
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1794
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    .line 1798
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 1799
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    :cond_2
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez p3, :cond_3

    .line 1803
    return-void

    .line 1806
    :cond_3
    invoke-virtual {p3, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContainsEmbedView(Z)V

    .line 1807
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContainsEmbedSurfaceView(Z)V

    .line 1808
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getPageId()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setPageId(I)V

    .line 1810
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz p3, :cond_4

    .line 1811
    const-string p3, "h5_bug_me_show_icon"

    invoke-static {p3, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1812
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1813
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object p3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->addOrGetConsole(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object p3

    .line 1814
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->startup()V

    .line 1816
    const-string p3, "h5_bug_me_debug_switch_keep"

    invoke-static {p3, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1817
    const-string p3, "h5_bug_me_super_user"

    invoke-static {p3, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1818
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearCache(Z)V

    .line 1824
    :cond_4
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->p:Z

    .line 1825
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->q:Z

    .line 1826
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->k:Z

    .line 1829
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz p3, :cond_5

    .line 1830
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->clear()V

    .line 1831
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->setPageStartTime(J)V

    .line 1835
    :cond_5
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1836
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1837
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNavUrl(Ljava/lang/String;)V

    .line 1841
    :cond_6
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_7

    .line 1842
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageNetLoad()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "}->("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1843
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1842
    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setReferer(Ljava/lang/String;)V

    .line 1848
    :cond_7
    nop

    .line 1849
    const-string p3, ""

    .line 1850
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    const-string v3, "fromType"

    if-eqz v2, :cond_a

    .line 1851
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_9

    .line 1852
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1854
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 1859
    :cond_9
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1850
    :cond_a
    const/4 v2, 0x1

    .line 1863
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(I)V

    .line 1865
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->r:Z

    const-string v5, "url"

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    .line 1866
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    if-nez v2, :cond_b

    .line 1867
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    .line 1869
    :cond_b
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->s:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1880
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1881
    invoke-virtual {v2, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v6, "h5PageStarted"

    invoke-virtual {v4, v6, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1883
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_d

    .line 1884
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->resetPageToken()V

    .line 1888
    :cond_d
    :goto_2
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1889
    invoke-virtual {v2, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v6, "h5PageStartedSync"

    invoke-virtual {v4, v6, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1892
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->clear()V

    .line 1895
    nop

    .line 1896
    instance-of v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_e

    .line 1897
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewIndex()I

    move-result v2

    goto :goto_3

    .line 1896
    :cond_e
    const/4 v2, 0x0

    .line 1899
    :goto_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewIndex(I)V

    .line 1902
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1903
    if-eqz v2, :cond_f

    .line 1904
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Visit:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, v4, v6}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 1907
    :cond_f
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 1908
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 1909
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageStartedLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1911
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1912
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-wide v6, Lcom/alipay/mobile/h5container/api/H5Flag;->lastTouchTime:J

    .line 1913
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getTrackLastClickTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1912
    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSrcClick(J)V

    .line 1916
    :cond_10
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1917
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_12

    .line 1918
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1919
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1920
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 1922
    :cond_11
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "hrefChange"

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1924
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v4, -0x1

    invoke-virtual {p3, v2, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 1925
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v4, 0x6

    invoke-virtual {p3, v2, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 1927
    goto :goto_4

    .line 1929
    :cond_12
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "subView"

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFromType(Ljava/lang/String;)V

    .line 1934
    :cond_13
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 1935
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setToken(Ljava/lang/String;)V

    .line 1937
    :cond_14
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setH5Token(Ljava/lang/String;)V

    .line 1938
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5SessionToken:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setH5SessionToken(Ljava/lang/String;)V

    .line 1940
    const-string p3, "pageUrl"

    invoke-static {p3, p2}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v2, "h5PageStartTime"

    invoke-static {v2, p3}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1943
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object p1

    .line 1944
    if-eqz p1, :cond_15

    .line 1945
    nop

    .line 1946
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1945
    const-string p3, "h5HistorySize"

    invoke-static {p3, p1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1949
    :cond_15
    sget-object p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->size()I

    move-result p1

    if-lez p1, :cond_16

    .line 1950
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "sVisitHistoryQueue: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    sget-object p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "h5History"

    invoke-static {p3, p1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1953
    :cond_16
    sget-object p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->u:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->add(Ljava/lang/Object;)Z

    .line 1956
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p1, :cond_17

    .line 1957
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 1958
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1959
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "mode"

    invoke-virtual {p3, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "showDisClaimer"

    invoke-virtual {p1, v2, p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1963
    :cond_17
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    aput-object v5, p3, v1

    aput-object p2, p3, v0

    const-string p2, "H5WebViewClient.onPageStarted"

    invoke-static {p2, p1, p3}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1965
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->initDataExceededConfig(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1966
    return-void
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "webViewErrorCode"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "webViewErrorDesc"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError errorCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failingUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v1

    if-gez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum1000()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum1000(I)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v1

    const/16 v2, -0x61

    if-ne v1, v2, :cond_1

    .line 401
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    const/4 v2, 0x0

    move-object v3, v2

    .line 405
    .local v3, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    move-object v3, v1

    if-eqz v1, :cond_3

    iget-boolean v1, v3, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v1, :cond_3

    .line 407
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-eq v1, v4, :cond_2

    .line 408
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 410
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    .line 412
    :cond_3
    const-string v1, "genericError"

    invoke-direct {p0, p4, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v2, "extInfo":Landroid/os/Bundle;
    move-object v2, v1

    const-string v4, "original_method"

    const-string v5, "onReceivedError"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "original_code"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "original_desc"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v1

    invoke-direct {p0, p1, p4, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 419
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apHttpAuthHandler"    # Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .line 1378
    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "statusCode"    # I
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedHttpError statusCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedHttpError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void

    .line 433
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 434
    .local v1, "extInfo":Landroid/os/Bundle;
    move-object v1, v0

    const-string v2, "original_method"

    const-string v3, "onReceivedHttpError"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "original_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "original_desc"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 439
    return-void

    .line 426
    .end local v1    # "extInfo":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .line 1401
    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 2
    .param p1, "responseHeaders"    # Ljava/util/Map;
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

    .line 771
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    const-string v0, "x-ap-pkg-id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 776
    .local v1, "pkgIdList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 777
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;)V

    .line 780
    .end local v1    # "pkgIdList":Ljava/util/List;
    :cond_1
    return-void

    .line 772
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 21
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "handler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v4, v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 445
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 446
    const-string v5, "h5_onReceivedSslError"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 447
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 448
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 446
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 451
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    .line 452
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    move-object v6, v4

    .line 453
    .local v6, "h5ReceivedSslErrorHandler":Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;
    move-object v6, v5

    if-eqz v5, :cond_1

    .line 454
    invoke-interface {v6, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 455
    return-void

    .line 459
    :cond_1
    if-nez v3, :cond_2

    .line 460
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v5, "SslError==null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void

    .line 464
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v5

    .line 465
    .local v5, "errorCode":I
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 466
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 467
    const/4 v7, 0x0

    .line 468
    .local v7, "failingUrl":Ljava/lang/String;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_3

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 473
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v7

    .line 476
    :cond_4
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onReceivedSslError "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", url is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v9, ""

    const-string v10, "original_desc"

    const-string v11, "original_code"

    const-string v12, "onReceivedSslError"

    const-string v13, "original_method"

    if-eqz v8, :cond_b

    .line 480
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v14, v4

    .line 481
    .local v14, "uri":Landroid/net/Uri;
    move-object v14, v8

    if-eqz v8, :cond_a

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 482
    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 483
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v15, "file"

    invoke-static {v15, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_0

    .line 487
    :cond_5
    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, "finalDomain":Ljava/lang/String;
    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v15

    const-string v4, "onlineHost"

    invoke-static {v15, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "onlineHost":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 493
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 494
    return-void

    .line 499
    :cond_6
    const-string v15, "h5_close_sslError"

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, "value":Ljava/lang/String;
    const-string v2, "yes"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 501
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 502
    return-void

    .line 506
    :cond_7
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "domainSuffix":Ljava/lang/String;
    const-string v16, "h5_sslError_WhiteList"

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "regexArray":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 510
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 511
    return-void

    .line 515
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "domainSuffix":Ljava/lang/String;
    .end local v3    # "regexArray":Ljava/lang/String;
    .local v18, "domainSuffix":Ljava/lang/String;
    .local v19, "regexArray":Ljava/lang/String;
    iget-wide v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->o:J

    sub-long v16, v16, v2

    .line 516
    const-wide/16 v2, 0x2710

    cmp-long v20, v16, v2

    if-gez v20, :cond_9

    .line 517
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 518
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 520
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    .line 521
    .local v3, "extInfo":Landroid/os/Bundle;
    move-object v3, v2

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 525
    return-void

    .line 527
    .end local v3    # "extInfo":Landroid/os/Bundle;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->o:J

    .line 528
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    .line 529
    const-string v2, "sslError"

    invoke-direct {v0, v7, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v14

    goto :goto_1

    .line 484
    .end local v4    # "onlineHost":Ljava/lang/String;
    .end local v8    # "finalDomain":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v18    # "domainSuffix":Ljava/lang/String;
    .end local v19    # "regexArray":Ljava/lang/String;
    :cond_a
    :goto_0
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ignore param check for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void

    .line 478
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_b
    move-object v3, v4

    .line 533
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 535
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 536
    .restart local v3    # "extInfo":Landroid/os/Bundle;
    move-object v3, v2

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 540
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 2248
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->y:Z

    if-nez v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "hasOnPageStarted but no hasShouldInterceptRequest! Dump Thread Infos!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 2265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "h5netsupervisor exec onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->exec()V

    .line 2267
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 21
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 621
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResourceFinishLoad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 625
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;

    invoke-virtual {v0, v9, v10}, Lcom/alipay/mobile/nebula/util/H5WarningTipHelper;->showWarningTip(J)V

    .line 627
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {v1, v8, v9, v10}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Ljava/lang/String;J)V

    .line 631
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 634
    .local v3, "isMainDoc":Z
    move v11, v0

    .end local v3    # "isMainDoc":Z
    .local v11, "isMainDoc":Z
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->isShowErrorPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    cmp-long v0, v9, v3

    if-lez v0, :cond_2

    .line 637
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setShowErrorPage(Z)V

    .line 640
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    const-wide/16 v5, 0xbb8

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 655
    :cond_3
    const/4 v0, 0x0

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    .line 656
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    move-object v5, v0

    .line 657
    .local v5, "preConnectProvider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    move-object v5, v2

    if-eqz v2, :cond_4

    .line 658
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v5, v2}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 661
    :cond_4
    iget-boolean v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->C:Z

    if-nez v2, :cond_5

    .line 662
    iput-boolean v12, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->C:Z

    .line 664
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 665
    .local v0, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v0, v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_5

    .line 666
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocFinishLoad:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v2, v6}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 671
    .end local v0    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    .end local v5    # "preConnectProvider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    :cond_5
    move-object v0, v5

    :cond_6
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 672
    .local v0, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    move-object v13, v2

    .end local v0    # "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    .local v13, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    if-nez v2, :cond_7

    .line 673
    return-void

    .line 676
    :cond_7
    iget-boolean v0, v13, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v0, :cond_8

    .line 677
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getHtmlSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setHtmlSize(J)V

    .line 678
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v14

    sub-long/2addr v5, v14

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageNetLoad(J)V

    .line 679
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "url "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pageNetLoad "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageNetLoad()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 683
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageLoadSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageLoadSize(J)V

    .line 684
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageSize(J)V

    .line 685
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v5

    const-string v0, "|"

    const-wide/32 v14, 0x32000

    const-string v2, "KB)"

    const-wide/16 v16, 0x400

    const-string v7, "("

    cmp-long v18, v5, v3

    if-nez v18, :cond_a

    .line 686
    cmp-long v5, v9, v14

    if-ltz v5, :cond_a

    .line 687
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200()I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200(I)V

    .line 688
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 689
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 690
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v9, v16

    long-to-int v15, v14

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200Urls(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_9
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v9, v16

    long-to-int v15, v14

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit200Urls(Ljava/lang/String;)V

    .line 700
    :cond_a
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 701
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_b

    .line 702
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssLoadSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssLoadSize(J)V

    .line 704
    :cond_b
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCssSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCssSize(J)V

    goto/16 :goto_2

    .line 705
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 706
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_d

    .line 707
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsLoadSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsLoadSize(J)V

    .line 709
    :cond_d
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setJsSize(J)V

    goto/16 :goto_2

    .line 710
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 711
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v5

    const-wide/32 v14, 0xf000

    cmp-long v20, v5, v3

    if-nez v20, :cond_11

    .line 712
    cmp-long v5, v9, v14

    if-ltz v5, :cond_f

    .line 713
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLoadLimit60()I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLoadLimit60(I)V

    .line 715
    :cond_f
    const-wide/32 v5, 0x32000

    cmp-long v18, v9, v5

    if-ltz v18, :cond_10

    .line 716
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLoadLimit200()I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLoadLimit200(I)V

    .line 718
    :cond_10
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgLoadSize()J

    move-result-wide v18

    add-long v3, v18, v9

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgLoadSize(J)V

    .line 720
    :cond_11
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImgSize()J

    move-result-wide v4

    add-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImgSize(J)V

    .line 721
    cmp-long v3, v9, v14

    if-ltz v3, :cond_13

    .line 722
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit60()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSizeLimit60(I)V

    .line 723
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 724
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v9, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImageSizeLimit60Urls(Ljava/lang/String;)V

    goto :goto_1

    .line 727
    :cond_12
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v9, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setImageSizeLimit60Urls(Ljava/lang/String;)V

    .line 731
    :cond_13
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pageData.sizeLimit200Urls"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 732
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSizeLimit200Urls()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getImageSizeLimit60Urls()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 734
    :cond_14
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    .line 735
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherLoadSize()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherLoadSize(J)V

    .line 737
    :cond_15
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOtherSize()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOtherSize(J)V

    .line 742
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-lez v0, :cond_16

    .line 743
    const-wide/16 v3, 0x0

    :try_start_0
    const-string v7, "NebulaUC"

    move-object/from16 v2, p2

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 745
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 746
    :cond_16
    :goto_3
    nop

    .line 748
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v13, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long/2addr v2, v4

    .line 749
    .local v2, "duration":J
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 750
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsReqNum()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsReqNum(I)V

    .line 751
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsSize()J

    move-result-wide v4

    add-long/2addr v4, v9

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsSize(J)V

    .line 752
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsTime(J)V

    goto :goto_5

    .line 754
    :cond_17
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherReqNum()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherReqNum(I)V

    .line 755
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherSize()J

    move-result-wide v4

    add-long/2addr v4, v9

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherSize(J)V

    .line 756
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherTime(J)V

    .line 758
    :goto_5
    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    .line 759
    return-void

    .line 762
    :cond_18
    iget-boolean v0, v13, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v0, :cond_19

    .line 763
    invoke-direct {v1, v12}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    return-void

    .line 765
    :cond_19
    invoke-direct {v1, v13}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    .line 767
    return-void

    .line 623
    .end local v2    # "duration":J
    .end local v11    # "isMainDoc":Z
    .end local v13    # "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    :cond_1a
    :goto_6
    return-void
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "hashMap"    # Ljava/util/HashMap;
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

    .line 544
    const-string v0, "httpcode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 545
    .local v0, "statusCode":I
    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResourceResponse statusCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->remove(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getUcCacheResNum()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUcCacheResNum(I)V

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    return-void

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->m:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 558
    .local v2, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_10

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 561
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-eqz v3, :cond_3

    .line 564
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 567
    :cond_3
    const-string v3, "mimetype"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    .line 568
    iput v0, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    .line 569
    iget-boolean v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    const/16 v4, 0x12e

    const/16 v5, 0x190

    if-eqz v3, :cond_6

    .line 570
    const/16 v3, 0x12d

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    if-lt v0, v5, :cond_5

    .line 571
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 573
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorCode(I)V

    .line 574
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFirstByte(J)V

    .line 576
    :cond_6
    const/16 v3, 0x130

    if-ne v0, v4, :cond_7

    .line 577
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum302()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum302(I)V

    goto :goto_0

    .line 578
    :cond_7
    if-ne v0, v3, :cond_8

    .line 579
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum304()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum304(I)V

    .line 582
    :cond_8
    :goto_0
    const/16 v4, 0x12c

    if-lt v0, v4, :cond_9

    if-ge v0, v5, :cond_9

    if-eq v0, v3, :cond_9

    .line 583
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum300()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum300(I)V

    .line 586
    :cond_9
    const/16 v3, 0x194

    if-ne v0, v3, :cond_a

    .line 587
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum404()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum404(I)V

    .line 590
    :cond_a
    const/16 v3, 0x1f4

    if-lt v0, v5, :cond_b

    if-ge v0, v3, :cond_b

    .line 591
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum400()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum400(I)V

    .line 594
    :cond_b
    if-lt v0, v3, :cond_c

    .line 595
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNum500()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNum500(I)V

    .line 598
    :cond_c
    iget v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    if-ge v3, v5, :cond_d

    .line 599
    return-void

    .line 602
    :cond_d
    iget-boolean v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v3, :cond_e

    .line 603
    iget-object v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    const-string v4, "genericError"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    goto :goto_1

    .line 606
    :cond_e
    iget-object v3, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 607
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetErrorJsNum()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetErrorJsNum(I)V

    .line 608
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetJsReqNum()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetJsReqNum(I)V

    goto :goto_1

    .line 610
    :cond_f
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetErrorOtherNum()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetErrorOtherNum(I)V

    .line 611
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNetOtherReqNum()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNetOtherReqNum(I)V

    .line 614
    :goto_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    .line 615
    return-void

    .line 559
    :cond_10
    :goto_2
    return-void
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "v"    # F
    .param p3, "v2"    # F

    .line 1392
    if-eqz p1, :cond_0

    .line 1393
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->setScale(F)V

    .line 1395
    :cond_0
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message2"    # Landroid/os/Message;

    .line 1710
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1388
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 3
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWebViewEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "onWebViewEvent h5Page == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-void

    .line 1130
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

    .line 1146
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/Object;)V

    .line 1151
    :goto_0
    return-void

    .line 1133
    :cond_2
    :pswitch_0
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/Object;I)V

    .line 1134
    return-void

    .line 1142
    :cond_3
    :pswitch_1
    invoke-direct {p0, p3, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    return-void

    .line 1149
    :catchall_0
    move-exception v0

    .line 1150
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1152
    .end local v0    # "throwable":Ljava/lang/Throwable;
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

.method public setCheckingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .line 285
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 286
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "wr"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 1441
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 1447
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "GET"

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 11
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "hashMap"    # Ljava/util/HashMap;
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

    .line 936
    const-string v0, "httpcode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 937
    .local v0, "httpCode":Ljava/lang/String;
    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 938
    .local v7, "requestUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x0

    move v2, v8

    .line 940
    .local v2, "statusCode":I
    move v9, v1

    .end local v2    # "statusCode":I
    .local v9, "statusCode":I
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const/16 v1, 0x190

    if-lt v9, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 941
    :cond_1
    return v8

    .line 944
    :cond_2
    new-instance v10, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v7

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    const-wide/16 v1, 0x14

    invoke-static {v10, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 955
    const/16 v1, 0x193

    if-eq v9, v1, :cond_4

    const/16 v1, 0x194

    if-ne v9, v1, :cond_3

    goto :goto_0

    .line 961
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 957
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "404 or 403,shouldInterceptResponse return false "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return v8
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 16

    .line 290
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    const-string v0, "needVerifyUrl"

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v3, v2, v10}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 292
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gao shouldOverrideUrlLoading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->disconnect()V

    .line 297
    :cond_0
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v11, 0x1

    if-eqz v3, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 301
    :cond_1
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNavUrl(Ljava/lang/String;)V

    .line 302
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:Ljava/lang/String;

    .line 304
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 305
    const-string v3, "url"

    invoke-virtual {v12, v3, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->interceptSchemeForTiny(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptScheme  url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return v11

    .line 313
    :cond_2
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    const-string v13, "stripLandingURL&Deeplink url "

    if-eqz v3, :cond_3

    .line 314
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bingo deeplink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v11

    .line 318
    :cond_3
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasContentBeforeRedirect()Z

    move-result v3

    .line 319
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shouldOverrideUrlLoading hasContent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v4, "locationNormal"

    invoke-static {v10, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v14, "appId"

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 321
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 324
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 325
    if-eqz v3, :cond_4

    .line 326
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v15

    .line 327
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 328
    const/4 v5, 0x1

    .line 329
    invoke-static {v3, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "publicId"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    const-string v6, "bizScenario"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 328
    const-string v6, "location"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz v15, :cond_4

    .line 332
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bingo deeplink in landing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 334
    return v11

    .line 340
    :cond_4
    instance-of v3, v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 342
    :try_start_0
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 343
    invoke-static {v3, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 344
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_5
    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string v5, "exception detail"

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    :cond_6
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    .line 352
    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v4

    .line 353
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "historySize"

    invoke-virtual {v12, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_8

    .line 356
    invoke-static {v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "preSSOLogin"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    nop

    .line 359
    const-string v3, "preSSOLoginBindingPage"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    nop

    .line 361
    const-string v4, "preSSOLoginUrl"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v4, "ps"

    invoke-virtual {v12, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "psb"

    invoke-virtual {v12, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "psu"

    invoke-virtual {v12, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v2, "h5PageShouldLoadUrl"

    invoke-virtual {v0, v2, v12}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 369
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 370
    xor-int/2addr v0, v11

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldOverrideUrlLoading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez v0, :cond_9

    .line 373
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v2, :cond_9

    .line 374
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->reSetLocal()V

    .line 378
    :cond_9
    return v0

    .line 298
    :cond_a
    :goto_2
    return v11
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading nonStandardType\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 796
    return v1

    .line 798
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 799
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "appId":Ljava/lang/String;
    const-string v3, "h5_shouldOverrideUrlLoading"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 801
    invoke-static {p2, v0, v3, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    return v2

    .line 806
    .end local v0    # "appId":Ljava/lang/String;
    :cond_1
    return v1
.end method

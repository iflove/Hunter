.class public Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
.super Ljava/lang/Object;
.source "H5BridgeImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Bridge;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgeImpl"

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static l:[Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/mobile/h5container/api/H5Page;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    const-string v1, "JSPlugin_AlipayH5Share"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    const-string v1, "beforeunload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    const-string/jumbo v1, "nbcomponent.canrender"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    const-string/jumbo v1, "showNetWorkCheckActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    const-string/jumbo v1, "showUCFailDialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    const-string/jumbo v1, "setKeyboardType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    const-string/jumbo v1, "monitorH5Performance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->i:Ljava/util/List;

    const-string v1, "getStartupParams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const-string/jumbo v0, "passportpre.taopiaopiao.com"

    const-string/jumbo v1, "passport.taopiaopiao.com"

    const-string/jumbo v2, "pass.taopiaopiao.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->f:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->g:Ljava/util/List;

    .line 68
    const/16 v0, 0x2710

    iput v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->j:I

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    .line 93
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 94
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->k:Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5BridgeImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method private a()V
    .locals 8

    .line 487
    const-string v0, "h5_Whitespace"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 488
    .local v2, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 490
    .local v3, "whiteChartAppList":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->k:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 492
    .local v4, "apiValue":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const-string v0, "\\|"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->f:Ljava/util/List;

    .line 494
    const-string/jumbo v5, "whitespace_code"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v1, "codeValue":Ljava/lang/String;
    move-object v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 498
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->g:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v1    # "codeValue":Ljava/lang/String;
    .end local v3    # "whiteChartAppList":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "apiValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 321
    const-string v0, "h5_postWebOnUi"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v1

    .line 326
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5BridgeImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 329
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->isDispatcherOnWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 625
    const-string v0, "jsapiOnComplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 626
    const-string v1, "jsapiOnInvoke"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canInterceptJSApi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    return-void

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interceptJSApiComplete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5BridgeImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 637
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v3, "func"

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string/jumbo v1, "param"

    invoke-virtual {v2, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_2

    .line 640
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 642
    :cond_2
    return-void

    .line 627
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 508
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 508
    return v0

    .line 509
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 519
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->l:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 520
    .local v4, "domain":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    const/4 v0, 0x1

    return v0

    .line 519
    .end local v4    # "domain":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return v2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "javascript"    # Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5JSReplaceUtil;->enableReplace()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "IO"

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5JSReplaceUtil;->containAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return v1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$5;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 479
    return v1

    .line 481
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 12

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 353
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getType()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->isKeepCallback()Z

    move-result v6

    .line 356
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 357
    const-string v8, "clientId"

    invoke-virtual {v7, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v8, "func"

    invoke-virtual {v7, v8, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v8, "param"

    invoke-virtual {v7, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v8, "msgType"

    invoke-virtual {v7, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v8, "keepCallback"

    invoke-virtual {v7, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 366
    nop

    .line 367
    nop

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlipayJSBridge._invokeJS("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {p0, v3, v4, v2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    const-string v7, "H5BridgeImpl"

    if-eqz v4, :cond_1

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 375
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_4

    .line 376
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "appId"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    nop

    .line 379
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 380
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8, v4, v10}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v8

    goto :goto_0

    .line 379
    :cond_2
    const/4 v8, 0x0

    .line 383
    :goto_0
    if-eqz v8, :cond_4

    .line 384
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {p1, v4, v8}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result p1

    .line 387
    if-nez p1, :cond_4

    sget-object p1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 389
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 390
    if-eqz p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 392
    if-eqz p1, :cond_3

    .line 393
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 394
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v4, "prevent"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-interface {p1, v0}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5 callback for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_3
    return-void

    .line 407
    :cond_4
    :try_start_0
    const-string/jumbo p1, "native_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v6, :cond_5

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 409
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v8, v10

    .line 410
    sub-long/2addr v8, v0

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " js_native_is cost time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " executeWebTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 413
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object p1

    .line 414
    if-eqz p1, :cond_5

    .line 415
    invoke-virtual {p1, v10, v11}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->setElapse(J)V

    .line 420
    :cond_5
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 422
    if-nez p1, :cond_6

    .line 423
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:(function(){if(typeof AlipayJSBridge === \'object\'){"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "jsapi rep:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_6
    return-void

    .line 430
    :catch_0
    move-exception p1

    .line 431
    const-string v0, "loadUrl exception"

    invoke-static {v7, v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    return-void

    .line 346
    :cond_7
    :goto_1
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 27
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_21

    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 161
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "eventId":Ljava/lang/String;
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    .local v3, "poolEvent":Z
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 165
    .local v4, "callParam":Lcom/alibaba/fastjson/JSONObject;
    const/4 v5, 0x0

    const-string v6, "H5BridgeImpl"

    if-eqz v3, :cond_2

    .line 166
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 167
    .local v5, "callback":Lcom/alipay/mobile/h5container/api/H5CallBack;
    move-object v5, v7

    if-eqz v7, :cond_1

    .line 168
    invoke-interface {v5, v4}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 170
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "H5 callback for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    .end local v5    # "callback":Lcom/alipay/mobile/h5container/api/H5CallBack;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "action":Ljava/lang/String;
    const/4 v8, 0x1

    .line 176
    .local v8, "showLog":Z
    const-string v9, "NBComponent.sendMessage"

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    .line 177
    const-string v9, "actionType"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "draw"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 178
    const/4 v8, 0x0

    .line 180
    :cond_3
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/4 v9, 0x0

    .line 182
    .local v9, "paramStr":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 183
    if-eqz v8, :cond_4

    .line 184
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v9

    .line 186
    :cond_4
    const-string v10, "funcName"

    invoke-virtual {v4, v10, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_5
    if-eqz v8, :cond_6

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "jsapi req name={"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "} eventId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_6
    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->j:I

    if-le v11, v12, :cond_7

    const-string v11, "h5_notLogForMaxReq"

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "no"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 195
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "match size substring "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v11, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->j:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 200
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getEventSource()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fromWork"

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    const/4 v11, 0x0

    .line 201
    .local v11, "isFromWorker":Z
    :goto_0
    new-instance v14, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    invoke-direct {v14}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;-><init>()V

    invoke-virtual {v14, v7}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->setAction(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    move-result-object v14

    move-object v15, v6

    const-wide/16 v5, -0x1

    .line 202
    invoke-virtual {v14, v5, v6}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->setElapse(J)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->setjsApiStart(J)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->setJoMsg(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->setIsFromWorker(Z)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->build()Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object v5

    .line 203
    .local v5, "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 204
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->addJsapiInfo(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5JsCallData;)V

    .line 208
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v13

    instance-of v13, v13, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 211
    .local v10, "isH5Page":Z
    move v10, v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 212
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getEventSource()Ljava/lang/String;

    move-result-object v13

    if-eq v13, v12, :cond_a

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 214
    .local v12, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v17, v14

    .line 215
    .local v17, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v14, v13

    .end local v17    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v14, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "subType"

    invoke-virtual {v13, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v6, "request"

    invoke-virtual {v14, v6, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v6, "eventId"

    invoke-virtual {v14, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_JS_API_TO_NATIVE:Ljava/lang/String;

    invoke-interface {v12, v6, v14}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 221
    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    const/4 v14, 0x0

    :goto_1
    if-eqz p2, :cond_b

    .line 222
    move-object/from16 v6, p2

    move-object v12, v6

    .local v6, "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    goto :goto_2

    .line 224
    .end local v6    # "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :cond_b
    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;

    invoke-direct {v6, v0, v2, v7}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v6

    .line 226
    .local v12, "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :goto_2
    if-eqz v10, :cond_1f

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v13, v14

    .line 228
    .local v13, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v13, v6

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 229
    .local v14, "url":Ljava/lang/String;
    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "appId"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "appId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 232
    .local v6, "shouldInterceptJSApiCallFromTiny":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 233
    move-object/from16 v18, v2

    .end local v2    # "eventId":Ljava/lang/String;
    .local v18, "eventId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    invoke-interface {v2, v1, v0, v12, v13}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->shouldInterceptJSApiCall(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;)I

    move-result v6

    move v2, v6

    goto :goto_3

    .line 232
    .end local v18    # "eventId":Ljava/lang/String;
    .restart local v2    # "eventId":Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v2

    .end local v2    # "eventId":Ljava/lang/String;
    .restart local v18    # "eventId":Ljava/lang/String;
    move v2, v6

    .line 235
    .end local v6    # "shouldInterceptJSApiCallFromTiny":I
    .local v2, "shouldInterceptJSApiCallFromTiny":I
    :goto_3
    if-eqz v8, :cond_d

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    .end local v0    # "appId":Ljava/lang/String;
    .local v19, "appId":Ljava/lang/String;
    const-string/jumbo v0, "shouldInterceptJSApiCall result "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 235
    .end local v19    # "appId":Ljava/lang/String;
    .restart local v0    # "appId":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v0

    .line 238
    .end local v0    # "appId":Ljava/lang/String;
    .restart local v19    # "appId":Ljava/lang/String;
    :goto_4
    const-string v6, " pageurl "

    if-nez v2, :cond_1c

    .line 239
    const/16 v20, 0x0

    .line 240
    .local v20, "h5_newJsapiPermissionConfigStr":Ljava/lang/String;
    const/16 v21, 0x0

    .line 241
    .local v21, "canIntercept":Z
    const-class v22, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/16 v16, 0x0

    move-object/from16 v23, v16

    .line 242
    .local v23, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object/from16 v24, v22

    .end local v23    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v24, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v22, :cond_e

    .line 243
    const-string v0, "h5_newJsapiPermissionConfig"

    move/from16 v23, v3

    move-object/from16 v3, v24

    .end local v24    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v23, "poolEvent":Z
    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 242
    .end local v23    # "poolEvent":Z
    .local v3, "poolEvent":Z
    .restart local v24    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_e
    move/from16 v23, v3

    move-object/from16 v3, v24

    .line 245
    .end local v24    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v23    # "poolEvent":Z
    :goto_5
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/16 v16, 0x0

    .line 246
    .local v16, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v24, v0

    .end local v16    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .local v24, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_f

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 247
    const-string v0, "canIntercept"

    move-object/from16 v16, v3

    move-object/from16 v3, v24

    .end local v24    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .local v16, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v21

    goto :goto_6

    .line 246
    .end local v16    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v24    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    move-object/from16 v16, v3

    move-object/from16 v3, v24

    .line 249
    .end local v24    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_6
    const/4 v0, 0x0

    .line 250
    .local v0, "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    if-eqz v21, :cond_10

    .line 251
    const-class v24, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    .line 252
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    .line 255
    :cond_10
    const/16 v24, 0x2

    .line 257
    .local v24, "status":I
    if-eqz v21, :cond_11

    if-eqz v0, :cond_11

    .line 258
    nop

    .line 259
    move-object/from16 v25, v3

    .end local v3    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .local v25, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 258
    invoke-interface {v0, v14, v7, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->hasPermissionByUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)I

    move-result v24

    move/from16 v3, v24

    goto :goto_7

    .line 257
    .end local v25    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    move-object/from16 v25, v3

    .line 261
    .end local v3    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v3, v24

    .end local v24    # "status":I
    .local v3, "status":I
    :goto_7
    if-eqz v8, :cond_12

    .line 262
    move-object/from16 v24, v0

    .end local v0    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .local v24, "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v26, v4

    .end local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .local v26, "callParam":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "hasPermissionByUrl result "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", url "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 261
    .end local v24    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .end local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v0    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .restart local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    move-object/from16 v24, v0

    move-object/from16 v26, v4

    .line 265
    .end local v0    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .end local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v24    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .restart local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :goto_8
    if-nez v3, :cond_14

    .line 266
    if-eqz v8, :cond_13

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use new permission deny action "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_13
    invoke-interface {v12}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke4NewJSAPIPermission()V

    .line 270
    return-void

    .line 271
    :cond_14
    const/4 v0, 0x1

    if-ne v3, v0, :cond_15

    .line 272
    if-eqz v8, :cond_1b

    .line 273
    const-string/jumbo v0, "use new permission allow"

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 275
    :cond_15
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1a

    .line 276
    if-eqz v8, :cond_16

    .line 277
    const-string/jumbo v0, "use old permission"

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_16
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 281
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 282
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    const/4 v4, 0x1

    .line 283
    .local v4, "oldPermission":Z
    if-eqz v0, :cond_17

    .line 284
    invoke-interface {v0, v7, v14}, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;->hasDomainPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 287
    :cond_17
    if-nez v4, :cond_19

    .line 288
    invoke-interface {v12}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 289
    if-eqz v8, :cond_18

    .line 290
    move-object/from16 v17, v0

    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .local v17, "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v22, v3

    .end local v3    # "status":I
    .local v22, "status":I
    const-string/jumbo v3, "use old permission deny action "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 289
    .end local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v22    # "status":I
    .restart local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .restart local v3    # "status":I
    :cond_18
    move-object/from16 v17, v0

    move/from16 v22, v3

    .line 292
    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v3    # "status":I
    .restart local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .restart local v22    # "status":I
    :goto_9
    return-void

    .line 287
    .end local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v22    # "status":I
    .restart local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .restart local v3    # "status":I
    :cond_19
    move-object/from16 v17, v0

    move/from16 v22, v3

    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v3    # "status":I
    .restart local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .restart local v22    # "status":I
    goto :goto_a

    .line 275
    .end local v4    # "oldPermission":Z
    .end local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v22    # "status":I
    .restart local v3    # "status":I
    :cond_1a
    move/from16 v22, v3

    .line 295
    .end local v3    # "status":I
    .end local v16    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v20    # "h5_newJsapiPermissionConfigStr":Ljava/lang/String;
    .end local v21    # "canIntercept":Z
    .end local v24    # "h5NewJSApiPermissionProvider":Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .end local v25    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1b
    :goto_a
    goto :goto_b

    .end local v23    # "poolEvent":Z
    .end local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "poolEvent":Z
    .local v4, "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_1c
    move/from16 v23, v3

    move-object/from16 v26, v4

    move-object v0, v6

    .end local v3    # "poolEvent":Z
    .end local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v23    # "poolEvent":Z
    .restart local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 296
    if-eqz v8, :cond_1d

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use tinypermission deny action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1d
    return-void

    .line 300
    :cond_1e
    const/4 v0, 0x2

    if-ne v2, v0, :cond_20

    .line 301
    if-eqz v8, :cond_20

    .line 302
    const-string/jumbo v0, "no permissionfile or in whiteJsApiJsonArray"

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 226
    .end local v13    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v14    # "url":Ljava/lang/String;
    .end local v18    # "eventId":Ljava/lang/String;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v23    # "poolEvent":Z
    .end local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .local v2, "eventId":Ljava/lang/String;
    .restart local v3    # "poolEvent":Z
    .restart local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_1f
    move-object/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v26, v4

    .line 307
    .end local v2    # "eventId":Ljava/lang/String;
    .end local v3    # "poolEvent":Z
    .end local v4    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "eventId":Ljava/lang/String;
    .restart local v23    # "poolEvent":Z
    .restart local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_20
    :goto_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1, v12}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 308
    return-void

    .line 159
    .end local v5    # "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "showLog":Z
    .end local v9    # "paramStr":Ljava/lang/String;
    .end local v10    # "isH5Page":Z
    .end local v11    # "isFromWorker":Z
    .end local v12    # "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .end local v18    # "eventId":Ljava/lang/String;
    .end local v23    # "poolEvent":Z
    .end local v26    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_21
    :goto_c
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 621
    const-string v0, "appResume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "eventId"    # Ljava/lang/String;

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 661
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    move-object v1, v7

    move-object v3, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 108
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->c:Ljava/util/Map;

    .line 109
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    .line 110
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 111
    return-void
.end method

.method public sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5CallBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 646
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 649
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual {p0, p1, v1, p3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 651
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 654
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 115
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 120
    return-void

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 124
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 129
    return-void

    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 312
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 317
    return-void

    .line 313
    :cond_1
    :goto_0
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v5, "syncMessage"

    .line 529
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->d:Z

    if-eqz v0, :cond_0

    .line 530
    return-void

    .line 532
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 533
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    const-string v6, "call"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v6

    .line 535
    .local v6, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    if-eqz v4, :cond_1

    .line 536
    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "clientId":Ljava/lang/String;
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b:Ljava/util/Map;

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v0    # "clientId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 542
    .local v0, "isWebEventPriorToWorker":Z
    const-string/jumbo v7, "nbcomponent.webview.onFromMessage"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 543
    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 544
    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 547
    :cond_2
    move v7, v0

    .end local v0    # "isWebEventPriorToWorker":Z
    .local v7, "isWebEventPriorToWorker":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 548
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 550
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    goto :goto_1

    .line 551
    :catch_0
    move-exception v0

    .line 557
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_c

    .line 558
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v8, 0x0

    move-object v9, v8

    .line 559
    .local v9, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v9, v0

    if-eqz v0, :cond_b

    .line 560
    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v0

    move-object v10, v8

    .line 561
    .local v10, "workerId":Ljava/lang/String;
    move-object v10, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "sendToWeb workerId "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "H5BridgeImpl"

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    move-object v12, v8

    .line 564
    .local v12, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v12, v0

    if-eqz v0, :cond_9

    .line 566
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v8

    .line 567
    .local v13, "data":Ljava/util/HashMap;
    move-object v13, v0

    const-string v14, "appId"

    invoke-virtual {v0, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v14, v8

    .line 569
    .local v14, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v14, v0

    const-string v15, "func"

    invoke-virtual {v0, v15, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 570
    const-string/jumbo v15, "param"

    const-string v8, "NBPageUrl"

    move-object/from16 v16, v9

    .end local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .local v16, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    const-string v9, "data"

    if-eqz v3, :cond_6

    .line 573
    :try_start_2
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .local v0, "subData":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v17, v10

    goto :goto_2

    .line 574
    .end local v0    # "subData":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 575
    .local v0, "e":Ljava/lang/Throwable;
    move-object/from16 v17, v10

    .end local v10    # "workerId":Ljava/lang/String;
    .local v17, "workerId":Ljava/lang/String;
    :try_start_3
    const-string v10, "data is not a jsonobj "

    invoke-static {v11, v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    const/4 v10, 0x0

    move-object v0, v10

    .line 578
    .local v0, "subData":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez v0, :cond_5

    .line 579
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v0, v10

    .line 580
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 581
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_4
    invoke-virtual {v3, v9, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_5
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {v14, v15, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    nop

    .end local v0    # "subData":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_3

    .line 588
    .end local v17    # "workerId":Ljava/lang/String;
    .restart local v10    # "workerId":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v10

    .end local v10    # "workerId":Ljava/lang/String;
    .restart local v17    # "workerId":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 589
    .local v5, "tmpParam":Lcom/alibaba/fastjson/JSONObject;
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v0, 0x0

    .line 590
    .restart local v0    # "subData":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v10

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v5, v9, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v14, v15, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v0    # "subData":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "tmpParam":Lcom/alibaba/fastjson/JSONObject;
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableViewId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 595
    const-string/jumbo v0, "viewId"

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_7
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v2, "message"

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string/jumbo v2, "messageId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    .line 601
    invoke-virtual {v12, v13, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto :goto_5

    .line 603
    :cond_8
    invoke-virtual {v12, v13}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    .end local v0    # "message":Ljava/lang/String;
    .end local v13    # "data":Ljava/util/HashMap;
    .end local v14    # "jo":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_5

    .line 605
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v17    # "workerId":Ljava/lang/String;
    .restart local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v10    # "workerId":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 606
    .end local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v10    # "workerId":Ljava/lang/String;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v17    # "workerId":Ljava/lang/String;
    :goto_4
    const-string v2, "catch exception "

    invoke-static {v11, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 564
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v17    # "workerId":Ljava/lang/String;
    .restart local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v10    # "workerId":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v10    # "workerId":Ljava/lang/String;
    .restart local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v17    # "workerId":Ljava/lang/String;
    goto :goto_5

    .line 561
    .end local v12    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v17    # "workerId":Ljava/lang/String;
    .restart local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v10    # "workerId":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v10    # "workerId":Ljava/lang/String;
    .restart local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .restart local v17    # "workerId":Ljava/lang/String;
    goto :goto_5

    .line 559
    .end local v16    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v17    # "workerId":Ljava/lang/String;
    .restart local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_b
    move-object/from16 v16, v9

    .line 612
    .end local v9    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_c
    :goto_5
    if-nez v7, :cond_d

    .line 613
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 615
    :cond_d
    return-void
.end method

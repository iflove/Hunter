.class public Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5AuthPlugin.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field private static b:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/alibaba/fastjson/JSONArray;

.field private static e:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 627
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 628
    return-object v1

    .line 630
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 631
    .local v1, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    move-object v1, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 632
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    return-object v0
.end method

.method private a()Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b()Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 41
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->e(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, ".alipaydev.com"

    const-string v1, ".zhimaxy.net"

    const-string v2, "H5AuthPlugin"

    .line 414
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 415
    .local v4, "manager":Landroid/webkit/CookieManager;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "loginToken="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "cookie":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LoginToken = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ".zmxy.com.cn"

    if-eqz v5, :cond_0

    .line 419
    :try_start_1
    invoke-virtual {v4, v1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    invoke-virtual {v4, v6, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    invoke-virtual {v4, v0, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 426
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "install zhimaxy cookie "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install zmxy cookie "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    const-string v0, "H5_AL_SESSION_ZHIMALOGIN"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "info"

    const-string/jumbo v5, "nologin"

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v4    # "manager":Landroid/webkit/CookieManager;
    :cond_4
    return-void

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x1"    # Z
    .param p1, "x2"    # Ljava/lang/String;

    .line 41
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x1"    # Z
    .param p1, "x2"    # Ljava/lang/String;
    .param p2, "x3"    # Ljava/lang/String;
    .param p3, "x4"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "domainType"    # Ljava/lang/String;

    .line 398
    const-string/jumbo v0, "zmxyDomains"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 400
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 10
    .param p0, "appId"    # Ljava/lang/String;

    .line 356
    const-string v0, "h5_aliAutoLoginSwitch"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "h5AliAutoLoginSwitch":Ljava/lang/String;
    const-string v1, "h5_aliAutoLoginWhiteList"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "h5AliAutoLoginWhiteList":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "newAutoLoginSwitch h5AliAutoLoginSwitch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", h5AliAutoLoginWhiteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5AuthPlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 362
    return v4

    .line 363
    :cond_0
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    const-string/jumbo v2, "newAutoLoginSwitch h5AliAutoLoginSwitch is List, but list is null"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return v5

    .line 370
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    .line 371
    .local v6, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v2

    if-nez v2, :cond_2

    .line 372
    return v5

    .line 374
    :cond_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 375
    .local v2, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 376
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "newAutoLoginSwitch h5AliAutoLoginSwitch List, appId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    return v4

    .line 375
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "size":I
    .end local v6    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "i":I
    :cond_4
    goto :goto_1

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "newAutoLoginSwitch whiteList parse error : invalid h5AliAutoLoginWhiteList value. "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v5

    .line 389
    :cond_5
    return v5
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    move v2, v1

    .line 330
    .local v2, "appIdMatch":Z
    move v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 332
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "appIdItem":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    const/4 v2, 0x1

    .line 335
    goto :goto_1

    .line 331
    .end local v3    # "appIdItem":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 341
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 342
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v3, "urlRegex":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " need sync auto login"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "H5AuthPlugin"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x1

    return v1

    .line 341
    .end local v3    # "urlRegex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    .end local v0    # "j":I
    .end local v2    # "appIdMatch":Z
    :cond_3
    return v1
.end method

.method private a(Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Event;ZZLjava/lang/String;)Z
    .locals 11

    .line 215
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 216
    nop

    .line 217
    const-string v1, "H5AuthPlugin"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    nop

    .line 220
    const-string/jumbo v3, "preventAutoLoginLoop"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aliAutoLogin preventAutoLoginLoop "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v3, :cond_1

    .line 224
    return v2

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 228
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 229
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loginId"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "sourceType"

    const-string v3, "H5"

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "showUi"

    move v3, p2

    invoke-virtual {v6, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    const-string/jumbo v2, "targetUrl"

    move-object v3, p1

    invoke-virtual {v6, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 237
    const-string v4, "appId"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const-string/jumbo v0, "sync auto login"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "forceAuth"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    :cond_2
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$1;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Event;ZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 313
    return v2

    .line 315
    :cond_3
    return v2
.end method

.method private b()Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    .locals 2

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a()Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a()Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    return-object v0
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 2
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 443
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "H5AuthPlugin"

    const-string v1, "clear preRequest for auth cookie."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    const/4 v1, 0x0

    .line 446
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 450
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    :cond_0
    return-void
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 4
    .param p0, "success"    # Z
    .param p1, "originUrl"    # Ljava/lang/String;

    .line 589
    const-string v0, "H5_AUTHMANAGER_RESULT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 590
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "SUCC"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "FAIL"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 595
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 596
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 597
    return-void
.end method

.method private static b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p0, "success"    # Z
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "authUrl"    # Ljava/lang/String;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 600
    const-string v0, "H5_AL_AUTH_AUTORPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 601
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string/jumbo v1, "origUrl"

    const-string/jumbo v2, "result"

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "finalUrl"

    invoke-virtual {v1, v2, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 606
    :goto_0
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 609
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 610
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 406
    const-string v0, "H5AuthPlugin"

    const-string v1, "handleZmxyDomain install cookie"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getOnlineHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v0, "zmxyDomains"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->setFlag(Ljava/lang/String;Z)V

    .line 409
    return v1
.end method

.method private b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 21
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    const-string v0, "YES"

    const-string v1, "H5AuthPlugin"

    .line 152
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 153
    .local v5, "uri":Landroid/net/Uri;
    move-object v5, v3

    if-nez v3, :cond_0

    .line 154
    return v2

    .line 156
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "scheme":Ljava/lang/String;
    const-string v6, "http"

    .line 158
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "https"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 159
    :goto_1
    if-eqz v6, :cond_8

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->isOauthUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->c(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    return v0

    .line 165
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v7, v4

    .line 166
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    const-string/jumbo v8, "start_up_url"

    invoke-static {v6, v8, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    .line 167
    .local v6, "isStartUpUrl":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "handleAutoLogin isStartUpUrl "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;->parseDomainType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, "domainType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleEvent domainType = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    move-object/from16 v9, p1

    move-object/from16 v15, p2

    :try_start_1
    invoke-static {v15, v9, v8}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    if-eqz v6, :cond_9

    const-string v10, "appId"

    .line 174
    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 175
    const-string/jumbo v10, "ps"

    .line 176
    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    .line 177
    .local v14, "preSSOLogin":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 178
    const/4 v10, 0x0

    .line 179
    .local v10, "isOriginUrl":Z
    const-string/jumbo v11, "psu"

    .line 180
    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v4

    .line 182
    .local v12, "preSSOLoginUrl":Ljava/lang/String;
    move-object v12, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 183
    const/4 v10, 0x1

    .line 184
    move-object/from16 v12, p1

    move/from16 v17, v10

    move-object v13, v12

    goto :goto_2

    .line 182
    :cond_4
    move/from16 v17, v10

    move-object v13, v12

    .line 186
    .end local v10    # "isOriginUrl":Z
    .end local v12    # "preSSOLoginUrl":Ljava/lang/String;
    .local v13, "preSSOLoginUrl":Ljava/lang/String;
    .local v17, "isOriginUrl":Z
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;->getService()Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;->canAutoLogin(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 187
    const-string v10, "h5_autologinbind"

    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 188
    .local v12, "autoLoginSwitchValue":Ljava/lang/String;
    const-string/jumbo v10, "psb"

    .line 189
    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v4, "preSSOLoginBindingPage":Ljava/lang/String;
    move-object v4, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    move-object v4, v12

    .line 194
    :cond_5
    nop

    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "bindingPage":Z
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "autoLoginSwitchValue "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", preSSOLoginBindingPage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", bindingPage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object v11, v13

    move-object/from16 v18, v12

    .end local v12    # "autoLoginSwitchValue":Ljava/lang/String;
    .local v18, "autoLoginSwitchValue":Ljava/lang/String;
    move v12, v0

    move-object/from16 v19, v13

    .end local v13    # "preSSOLoginUrl":Ljava/lang/String;
    .local v19, "preSSOLoginUrl":Ljava/lang/String;
    move-object/from16 v13, p2

    move-object/from16 v20, v14

    .end local v14    # "preSSOLogin":Ljava/lang/String;
    .local v20, "preSSOLogin":Ljava/lang/String;
    move/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Event;ZZLjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 186
    .end local v0    # "bindingPage":Z
    .end local v4    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v18    # "autoLoginSwitchValue":Ljava/lang/String;
    .end local v19    # "preSSOLoginUrl":Ljava/lang/String;
    .end local v20    # "preSSOLogin":Ljava/lang/String;
    .restart local v13    # "preSSOLoginUrl":Ljava/lang/String;
    .restart local v14    # "preSSOLogin":Ljava/lang/String;
    :cond_6
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "preSSOLoginUrl":Ljava/lang/String;
    .end local v14    # "preSSOLogin":Ljava/lang/String;
    .restart local v19    # "preSSOLoginUrl":Ljava/lang/String;
    .restart local v20    # "preSSOLogin":Ljava/lang/String;
    goto :goto_3

    .line 177
    .end local v17    # "isOriginUrl":Z
    .end local v19    # "preSSOLoginUrl":Ljava/lang/String;
    .end local v20    # "preSSOLogin":Ljava/lang/String;
    .restart local v14    # "preSSOLogin":Ljava/lang/String;
    :cond_7
    move-object/from16 v20, v14

    .end local v14    # "preSSOLogin":Ljava/lang/String;
    .restart local v20    # "preSSOLogin":Ljava/lang/String;
    goto :goto_3

    .line 205
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "isStartUpUrl":Z
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "domainType":Ljava/lang/String;
    .end local v20    # "preSSOLogin":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 159
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v9, p1

    .line 207
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_9
    :goto_3
    goto :goto_5

    .line 205
    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    .line 206
    .local v0, "t":Ljava/lang/Throwable;
    :goto_4
    const-string v3, "handleAutoLogin exception "

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_5
    return v2
.end method

.method private static c()Ljava/lang/Object;
    .locals 5

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->b()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->c:Ljava/lang/Object;

    .line 78
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "h5_syncAutoLogin"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 81
    .local v3, "needSyncAutoLoginSwitch":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "appId"

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d:Lcom/alibaba/fastjson/JSONArray;

    .line 82
    const-string/jumbo v0, "url"

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    .line 86
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "needSyncAutoLoginSwitch":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 466
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "H5AuthPlugin"

    const-string v3, "handlePublicAuth begin"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 468
    .local v5, "uri":Landroid/net/Uri;
    move-object v5, v3

    const-string/jumbo v6, "redirect_uri"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "redirectUrl":Ljava/lang/String;
    const-string/jumbo v6, "scope"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "authScope":Ljava/lang/String;
    const-string v7, "app_id"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "publicId":Ljava/lang/String;
    const-string v8, "h5_interceptAuthConfig"

    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 473
    .local v8, "authConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v7, :cond_f

    if-nez v8, :cond_0

    move-object/from16 v18, v3

    goto/16 :goto_7

    .line 479
    :cond_0
    const-string v11, "canInterceptAuth"

    invoke-static {v8, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, "canInterceptAuth":Ljava/lang/String;
    const-string v12, "YES"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 481
    .local v13, "enableAuth":Z
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "enableAuth "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-nez v13, :cond_1

    .line 483
    invoke-static {v10, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 484
    return v10

    .line 487
    :cond_1
    const-string v14, "interceptAuthBlackList"

    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    .line 488
    .local v15, "blackListText":Ljava/lang/String;
    move-object v15, v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 489
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    move-object/from16 v16, v4

    .line 490
    .local v16, "blackList":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v17, v14

    .end local v16    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .local v17, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v14, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 491
    const/4 v14, 0x0

    move-object/from16 v16, v4

    .local v14, "index":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_3

    .line 492
    move-object/from16 v4, v17

    .end local v17    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .local v4, "blackList":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 493
    .local v16, "item":Ljava/lang/String;
    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 494
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "publicId in black list "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v2, 0x0

    invoke-static {v2, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 496
    return v2

    .line 491
    .end local v16    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_0

    .end local v4    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v17    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    move-object/from16 v4, v17

    .end local v17    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v4    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_1

    .line 490
    .end local v4    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v14    # "index":I
    .restart local v17    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    move-object/from16 v4, v17

    .end local v17    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v4    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_1

    .line 488
    .end local v4    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    const/4 v4, 0x0

    .line 502
    :goto_1
    const-string v10, "interceptAuthWhiteList"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 503
    .local v4, "whiteListRegex":Ljava/lang/String;
    move-object v4, v10

    if-eqz v10, :cond_6

    .line 504
    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 505
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "publicId not in white list "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v2, 0x0

    invoke-static {v2, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 507
    return v2

    .line 511
    :cond_6
    const-string/jumbo v10, "shouldUseNewRPC"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "shouldUseNewRPC":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    .line 514
    .local v12, "useNewRpc":Z
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    .end local v4    # "whiteListRegex":Ljava/lang/String;
    .local v16, "whiteListRegex":Ljava/lang/String;
    const-string/jumbo v4, "useNewRpc "

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-nez v12, :cond_9

    .line 516
    const-string v14, "auth_userinfo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v3, :cond_7

    const/4 v14, 0x0

    move/from16 v17, v14

    move/from16 v18, v17

    const/16 v17, 0x1

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    move/from16 v17, v14

    move/from16 v18, v17

    const/16 v17, 0x0

    .line 517
    .local v18, "validParam":Z
    :goto_2
    if-nez v17, :cond_8

    .line 518
    invoke-static {v14, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 519
    return v14

    .line 521
    .end local v18    # "validParam":Z
    :cond_8
    move-object/from16 v18, v3

    const/4 v3, 0x0

    goto :goto_5

    .line 522
    :cond_9
    const/4 v14, 0x0

    .line 523
    .local v14, "authScopeMatch":Z
    const-string v4, "authScopeList"

    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x0

    .line 524
    .local v18, "authScopeListRegex":Ljava/lang/String;
    move-object/from16 v19, v4

    .end local v18    # "authScopeListRegex":Ljava/lang/String;
    .local v19, "authScopeListRegex":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 525
    move-object/from16 v4, v19

    .end local v19    # "authScopeListRegex":Ljava/lang/String;
    .local v4, "authScopeListRegex":Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    goto :goto_3

    .line 524
    .end local v4    # "authScopeListRegex":Ljava/lang/String;
    .restart local v19    # "authScopeListRegex":Ljava/lang/String;
    :cond_a
    move-object/from16 v4, v19

    .line 527
    .end local v19    # "authScopeListRegex":Ljava/lang/String;
    .restart local v4    # "authScopeListRegex":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_b

    if-eqz v14, :cond_b

    if-eqz v3, :cond_b

    const/16 v18, 0x1

    goto :goto_4

    :cond_b
    const/16 v18, 0x0

    .line 528
    :goto_4
    if-nez v18, :cond_c

    .line 529
    const/4 v2, 0x0

    invoke-static {v2, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 530
    return v2

    .line 528
    :cond_c
    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 534
    .end local v3    # "redirectUrl":Ljava/lang/String;
    .end local v4    # "authScopeListRegex":Ljava/lang/String;
    .end local v14    # "authScopeMatch":Z
    .local v18, "redirectUrl":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->login()Z

    move-result v4

    if-nez v4, :cond_d

    .line 535
    const-string v4, "handlePublicAuth failed to get user id"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {v3, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 537
    return v3

    .line 540
    :cond_d
    if-nez v12, :cond_e

    .line 541
    const-string v3, "handlePublicAuth already delete code"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 543
    :cond_e
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 545
    :goto_6
    const/4 v2, 0x1

    return v2

    .line 473
    .end local v10    # "shouldUseNewRPC":Ljava/lang/String;
    .end local v11    # "canInterceptAuth":Ljava/lang/String;
    .end local v12    # "useNewRpc":Z
    .end local v13    # "enableAuth":Z
    .end local v15    # "blackListText":Ljava/lang/String;
    .end local v16    # "whiteListRegex":Ljava/lang/String;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v3    # "redirectUrl":Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v3

    .line 474
    .end local v3    # "redirectUrl":Ljava/lang/String;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    :goto_7
    const-string v3, "invalid publicId or empty config"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v2, 0x0

    invoke-static {v2, v0, v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 476
    return v2
.end method

.method private d(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestAuthUrl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AuthPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 552
    .local v2, "authUrlReq":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;
    move-object v2, v0

    iput-object p1, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;->authSrcUrl:Ljava/lang/String;

    .line 553
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 582
    .local v0, "authUrlRunnable":Ljava/lang/Runnable;
    const-class v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 583
    .local v1, "scheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 584
    sget-object v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->IO:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 586
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadUrl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AuthPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 615
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "force"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 618
    .local v1, "eventParam":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    const-string v0, "Referer"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_0
    const-string v0, "h5PageDoLoadUrl"

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    .line 622
    .local v0, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 623
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    .line 624
    return-void
.end method

.method public static isOauthUrl(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 454
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 455
    .local v1, "uri":Landroid/net/Uri;
    move-object v1, v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 456
    return v2

    .line 458
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "openauth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    const-string v4, "/oauth2/publicAppAuthorize.htm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    nop

    .line 460
    return v2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 127
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageShouldLoadUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 130
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    const-string v3, "H5AuthPlugin"

    if-nez v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->login()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string/jumbo v4, "url"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleEvent, H5_PAGE_SHOULD_LOAD_URL url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz v2, :cond_1

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleEvent param = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v3

    return v3

    .line 131
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_0
    const-string v1, "handleEvent, H5_PAGE_SHOULD_LOAD_URL uid empty"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v2

    .line 142
    :cond_3
    return v2
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 98
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageLoadResource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    const-string v3, "H5AuthPlugin"

    if-nez v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->login()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v4, 0x0

    .line 106
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    const-string/jumbo v5, "url"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interceptEvent, H5_PAGE_LOAD_RESOURCE url = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz v4, :cond_1

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interceptEvent param = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;->parseDomainType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "domainType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "interceptEvent domainType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p1, v1, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const-string v3, "appId"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-static {}, Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;->getService()Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/securitycommon/aliauth/AliAuthService;->canAutoLogin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, v1

    move-object v9, p1

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Event;ZZLjava/lang/String;)Z

    goto :goto_1

    .line 102
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "domainType":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "interceptEvent, H5_PAGE_LOAD_RESOURCE uid empty"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v2

    .line 122
    :cond_3
    :goto_1
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 91
    const-string v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "syncH5GlobalBlackList"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v0, "h5PageLoadResource"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 147
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;->clearLoginFlag()V

    .line 148
    return-void
.end method

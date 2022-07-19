.class public Lcom/alipay/mobile/nebulacore/Nebula;
.super Ljava/lang/Object;
.source "Nebula.java"


# static fields
.field public static final DEBUG:Z

.field public static final DSL_ERROR:Ljava/lang/String; = "dsl_error"

.field public static final H5_PAGE_RESUME:Ljava/lang/String; = "h5_page_resume"

.field public static final HAS_H5_PKG:Ljava/lang/String; = "hasH5Pkg"

.field public static LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class; = null

.field public static LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class; = null

.field public static final LOAD_FROM_CORE:I = 0x1

.field public static final LOAD_FROM_UC:I = 0x0

.field private static a:Lcom/alipay/mobile/nebulacore/api/NebulaService; = null

.field public static final appResume:Ljava/lang/String; = "appResume"

.field private static b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

.field private static c:Ljava/lang/Boolean;

.field private static d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

.field private static e:I

.field private static f:I

.field private static g:Lcom/alipay/mobile/nebula/process/H5EventHandler;

.field private static h:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

.field public static h5_dev_uc:Z

.field private static i:Ljava/lang/Boolean;

.field public static isDSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 99
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/lang/Boolean;

    .line 107
    const/4 v1, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/Nebula;->e:I

    const/4 v2, 0x0

    sput v2, Lcom/alipay/mobile/nebulacore/Nebula;->f:I

    .line 121
    sput-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->h5_dev_uc:Z

    .line 991
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity1;

    aput-object v4, v3, v2

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity2;

    aput-object v4, v3, v1

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity4;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity5;

    const/4 v7, 0x4

    aput-object v4, v3, v7

    sput-object v3, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    .line 999
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity2;

    aput-object v4, v3, v2

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity3;

    aput-object v4, v3, v1

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity4;

    aput-object v1, v3, v5

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity5;

    aput-object v1, v3, v6

    sput-object v3, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    .line 1085
    sput-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 1185
    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "origin"    # Ljava/lang/Class;

    .line 421
    const-string v0, "h5NormalActivityName"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "normalActivityName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 425
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 426
    return-object v2

    .line 430
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5Nebula"

    const-string v3, "getNormalActivityClass : "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 96
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->b(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private static a()Z
    .locals 3

    .line 519
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 520
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "h5_enableOpenInBrowserSchema"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "config":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v2, 0x0

    return v2

    .line 526
    .end local v1    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .line 617
    const-string v0, "h5_setH5AndroidBug5497Workaround"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 622
    .local v1, "appIdList":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 623
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 624
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 625
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 627
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 628
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 629
    .local v3, "value":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 631
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 632
    .local v5, "version":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 633
    return v4

    .line 635
    .end local v5    # "version":I
    :cond_0
    goto :goto_0

    .line 636
    :cond_1
    return v4

    .line 629
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    goto :goto_1

    .line 639
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "H5Nebula"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 644
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v0, "H5Nebula"

    .line 1253
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1256
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "appid":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isTinyApp"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1258
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 1261
    :cond_1
    const-string/jumbo v3, "ta_webview_alipays_whitelist"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 1262
    .local v5, "value":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1263
    const-string/jumbo v5, "none"

    .line 1265
    :cond_2
    const-string v3, "all"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 1270
    :cond_3
    :try_start_0
    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v4, "strings":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v3, v7

    .line 1272
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "interceptH5EmbedWebViewWithScheme appid in whiteList "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    return v1

    .line 1271
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1279
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 1277
    :catchall_0
    move-exception v3

    .line 1278
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "interceptH5EmbedWebViewWithScheme: "

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1280
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return v1

    .line 1266
    :cond_6
    :goto_2
    return v1

    .line 1259
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    :goto_3
    return v1

    .line 1254
    .end local v2    # "appid":Ljava/lang/String;
    :cond_8
    :goto_4
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bridgeStr"    # Ljava/lang/String;

    .line 793
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 794
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, p0

    .line 795
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 796
    const-string v2, "h5_patchJsbridge"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 797
    .local v3, "configStr":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    return-object v1

    .line 800
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    .end local v3    # "configStr":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static b(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 820
    if-nez p1, :cond_0

    .line 821
    return-void

    .line 824
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/Nebula$5;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula$5;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5Nebula"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static checkOffline(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .line 1090
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/Nebula$6;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula$6;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    .line 1134
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5Nebula"

    const-string v2, "catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1136
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static clearServiceWork(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1061
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/Nebula;->useSW(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    .line 1063
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1064
    const-string/jumbo v0, "onlineHost"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "swHost":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "swHost "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5Nebula"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->clearServiceWorker(Ljava/lang/String;)V

    .line 1072
    .end local v0    # "swHost":Ljava/lang/String;
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    return-void
.end method

.method public static commonParamParse(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 320
    const-string v0, "H5Nebula"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 322
    const-string v0, "delayRender"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 323
    const-string/jumbo v0, "transparent"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 324
    const-string v0, "fullscreen"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 325
    const-string v0, "landscape"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 326
    const-string/jumbo v0, "transAnimate"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 329
    const-string/jumbo v0, "nsbp"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 330
    const-string/jumbo v0, "nsbv"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 331
    const-string/jumbo v0, "nsbml"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 333
    return-void
.end method

.method public static commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v1, p1

    const-string/jumbo v0, "transparent"

    const-string v2, "landscape"

    const-string v3, "fullscreen"

    const-string v4, "H5Nebula"

    .line 337
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v6, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 339
    .local v7, "lpid":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 340
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getLitePid()I

    move-result v8

    move v7, v8

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lpid "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    const/4 v8, 0x0

    invoke-static {v1, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 345
    .local v9, "isTransparent":Z
    invoke-static {v1, v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v10

    .line 347
    .local v10, "fullScreen":Z
    const-string/jumbo v11, "url"

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    .local v11, "url":Ljava/lang/String;
    const-string v12, "appId"

    if-eqz v10, :cond_2

    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v1, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 350
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 351
    .local v13, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string v14, "h5_enableFullscreenList"

    invoke-static {v14}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 352
    .local v14, "enableFullscreenStr":Ljava/lang/String;
    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v13, :cond_1

    .line 353
    invoke-interface {v13, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 354
    :cond_1
    const/4 v10, 0x0

    .line 355
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    .end local v13    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v14    # "enableFullscreenStr":Ljava/lang/String;
    :cond_2
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 360
    .local v13, "landscape":Ljava/lang/String;
    const/4 v14, 0x1

    if-eqz v10, :cond_3

    .line 361
    const-string v15, "fullScreen true,put transparent "

    invoke-static {v4, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v0

    .line 366
    .local v0, "delayRender":Z
    const-string v15, "delayRender"

    invoke-virtual {v1, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "config delayRender "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isTransparent "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " lpid:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-nez v7, :cond_c

    .line 371
    invoke-static {v1, v12, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 372
    .local v8, "appId":Ljava/lang/String;
    const-class v12, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    .line 374
    .local v12, "transActivityClz":Ljava/lang/Class;
    const-string v15, "h5_enableLandscapeActivity"

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "enableLandscapeActivity":Ljava/lang/String;
    const-string/jumbo v14, "no"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    :goto_0
    move/from16 v14, v16

    .line 376
    .local v14, "enableLandscape":Z
    if-eqz v9, :cond_5

    if-eqz v14, :cond_5

    .line 377
    const-class v16, Lcom/alipay/mobile/nebulacore/ui/H5TransLandscapeActivity;

    move-object/from16 v12, v16

    .line 380
    :cond_5
    const-class v16, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 381
    .local v16, "normalActivityClz":Ljava/lang/Class;
    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableMainProcKeepAlive(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 382
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRunningActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v17, 0x0

    move-object/from16 v18, v17

    .line 383
    .local v18, "activity":Landroid/app/Activity;
    move-object/from16 v18, v5

    instance-of v5, v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v5, :cond_6

    .line 384
    move-object/from16 v5, v18

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5Session()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->exitSession()Z

    .line 385
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->removeRunningTinyActivity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :cond_6
    const-string v5, "H5KeepAliveUtil"

    if-eqz v18, :cond_8

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->isFinishing()Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v19, v8

    goto :goto_1

    .line 396
    :cond_7
    move-object/from16 v19, v8

    .end local v8    # "appId":Ljava/lang/String;
    .local v19, "appId":Ljava/lang/String;
    const-string v8, "activity finishing, not use keep alive activity"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    .end local v19    # "appId":Ljava/lang/String;
    .restart local v8    # "appId":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v8

    .line 389
    .end local v8    # "appId":Ljava/lang/String;
    .restart local v19    # "appId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "use keep alive activity"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-class v5, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;

    move-object v12, v5

    .line 391
    const-class v5, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;

    move-object/from16 v16, v5

    .line 392
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->updateFromActivityInMain()Z

    .line 393
    const/high16 v5, 0x10000000

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    const/4 v5, 0x1

    sput-boolean v5, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->hasStartActivity:Z

    move-object/from16 v5, v16

    goto :goto_3

    .line 381
    .end local v18    # "activity":Landroid/app/Activity;
    .end local v19    # "appId":Ljava/lang/String;
    .restart local v8    # "appId":Ljava/lang/String;
    :cond_9
    move-object/from16 v19, v8

    .line 399
    .end local v8    # "appId":Ljava/lang/String;
    .restart local v19    # "appId":Ljava/lang/String;
    :goto_2
    move-object/from16 v5, v16

    .end local v16    # "normalActivityClz":Ljava/lang/Class;
    .local v5, "normalActivityClz":Ljava/lang/Class;
    :goto_3
    if-nez v0, :cond_b

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_5

    :cond_b
    :goto_4
    invoke-static {v1, v12}, Lcom/alipay/mobile/nebulacore/Nebula;->getTransActivityClass(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    :goto_5
    move-object v5, v8

    .line 400
    .end local v12    # "transActivityClz":Ljava/lang/Class;
    .end local v14    # "enableLandscape":Z
    .end local v15    # "enableLandscapeActivity":Ljava/lang/String;
    .end local v19    # "appId":Ljava/lang/String;
    .local v5, "clazz":Ljava/lang/Class;
    goto :goto_7

    .line 401
    .end local v5    # "clazz":Ljava/lang/Class;
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->prepare()V

    .line 402
    if-nez v0, :cond_e

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    sget-object v5, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    add-int/lit8 v8, v7, -0x1

    aget-object v5, v5, v8

    goto :goto_7

    :cond_e
    :goto_6
    sget-object v5, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    add-int/lit8 v8, v7, -0x1

    aget-object v5, v5, v8

    .line 406
    .restart local v5    # "clazz":Ljava/lang/Class;
    :goto_7
    new-instance v8, Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v12, p0

    :try_start_3
    invoke-direct {v8, v12, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 407
    const-string/jumbo v8, "showLoadingView"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const/high16 v8, 0x10000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {v6, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    invoke-virtual {v6, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commonStartActivity class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    return-object v6

    .line 414
    .end local v0    # "delayRender":Z
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "lpid":I
    .end local v9    # "isTransparent":Z
    .end local v10    # "fullScreen":Z
    .end local v11    # "url":Ljava/lang/String;
    .end local v13    # "landscape":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1170
    const-string v0, "H5Nebula"

    const/4 v1, 0x0

    .line 1171
    .local v1, "copyBundle":Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 1172
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p0, v2

    .line 1175
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 1178
    goto :goto_0

    .line 1176
    :catchall_0
    move-exception v2

    .line 1177
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1179
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyBundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return-object v1
.end method

.method public static disableHWACByUCStyle()Z
    .locals 2

    .line 1075
    const-string v0, "h5_disableHWACByUCStyle"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "configStr":Ljava/lang/String;
    const-string v1, "YES"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    const/4 v1, 0x1

    return v1

    .line 1079
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static dispatchProcess(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 875
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    .line 876
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->enableHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    .line 878
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->handlerAction(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 879
    const-string v0, "H5Nebula"

    const-string v1, "H5ProcessUtil handlerAction "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x1

    return v0

    .line 883
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 5

    .line 946
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doKeepAlive for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5KeepAliveUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    .line 950
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 951
    const-string v4, "dsl_error"

    invoke-static {p1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 952
    if-eqz v4, :cond_0

    .line 953
    const-string v1, "dslError true set enableKeepAlive==false"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v1, 0x0

    .line 959
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 960
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 962
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 966
    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 967
    const-string/jumbo p0, "not enableKeepAlive in main"

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return v3

    .line 970
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object p1

    .line 971
    if-eqz p1, :cond_3

    .line 972
    invoke-interface {p1, p0, v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBackAndStop(Landroid/app/Activity;Z)V

    .line 975
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->updateKeepAliveTime()V

    .line 976
    const/4 p0, 0x1

    return p0
.end method

.method public static enableLongClick(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1313
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1314
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1315
    return v1

    .line 1317
    :cond_0
    const-string v0, "h5_disableLongClick4AndroidInTiny"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 1319
    .local v4, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    if-nez v0, :cond_1

    .line 1320
    return v1

    .line 1322
    :cond_1
    const-string v0, "disable"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "switchStr":Ljava/lang/String;
    const-string v5, "YES"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1324
    if-eqz v5, :cond_3

    .line 1325
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1326
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v6, "whiteList"

    invoke-static {v4, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 1327
    .local v3, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1328
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1329
    return v1

    .line 1332
    :cond_2
    return v2

    .line 1334
    .end local v3    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "appId":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method public static enableNativeKeyboard(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 6
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1284
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1285
    return v0

    .line 1287
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isTinyApp"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 1288
    if-nez v1, :cond_1

    .line 1289
    return v0

    .line 1291
    :cond_1
    const-string v1, "h5_nativeInput4Android"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1293
    .local v3, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-nez v1, :cond_2

    .line 1294
    return v0

    .line 1296
    :cond_2
    const-string/jumbo v1, "switch"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "switchStr":Ljava/lang/String;
    const-string v4, "YES"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1298
    if-nez v4, :cond_3

    .line 1299
    return v0

    .line 1301
    :cond_3
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "appId":Ljava/lang/String;
    const-string v5, "blackList"

    invoke-static {v3, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 1303
    .local v2, "blackList":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1304
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1305
    return v0

    .line 1308
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 489
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 490
    return v1

    .line 494
    :cond_0
    const/4 v0, 0x1

    .line 496
    .local v0, "open":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 497
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 498
    const-string v2, "h5_enableStartAppWithScheme"

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "config":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    const/4 v0, 0x0

    .line 504
    .end local v3    # "config":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 507
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 508
    .local v3, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v3, v2

    if-eqz v2, :cond_2

    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    const/4 v1, 0x1

    return v1

    .line 513
    .end local v3    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_2
    return v1
.end method

.method public static enableThrow()Z
    .locals 2

    .line 1156
    const-string v0, "h5_plugin_throwException"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    const/4 v0, 0x1

    return v0

    .line 1159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
    .locals 2

    .line 136
    const-class v0, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    .line 140
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    return-object v0

    .line 140
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 2

    .line 145
    const-class v0, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 149
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    return-object v0

    .line 149
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .locals 1

    .line 889
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->g:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    if-nez v0, :cond_0

    .line 890
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->g:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 892
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->g:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    return-object v0
.end method

.method public static getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .locals 2

    .line 1140
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    return-object v0
.end method

.method public static getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .locals 2

    .line 1147
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    if-nez v0, :cond_0

    .line 1148
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1150
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    return-object v0
.end method

.method public static getHeight(Lcom/alipay/mobile/h5container/api/H5Page;FLandroid/util/DisplayMetrics;)I
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "density"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "height":I
    const/4 v1, 0x1

    .line 1010
    .local v1, "getHeightFromWebView":Z
    const-string v2, "h5_getWebViewHeight"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1011
    .local v3, "getHeightWebview":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    const/4 v1, 0x0

    .line 1016
    :cond_0
    if-eqz v1, :cond_1

    .line 1017
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1019
    :cond_1
    if-eqz p2, :cond_2

    .line 1020
    iget v2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1024
    :cond_2
    :goto_0
    return v0
.end method

.method public static getPackageInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5Nebula"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPageId()I
    .locals 2

    .line 118
    sget v0, Lcom/alipay/mobile/nebulacore/Nebula;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/Nebula;->f:I

    return v0
.end method

.method public static getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .line 155
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .locals 2

    .line 125
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    if-eqz v0, :cond_0

    return-object v0

    .line 127
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    .line 131
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    return-object v0

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 7
    .param p0, "sessionPages"    # Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;)",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    const/4 v1, 0x0

    move-object v2, v1

    .line 934
    .local v2, "sessionPagesWithOutPrerender":Ljava/util/Stack;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 935
    .local v0, "result":Ljava/util/Stack;
    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 936
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 937
    const/4 v5, 0x0

    const-string v6, "isPrerender"

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 938
    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 940
    .end local v1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    goto :goto_0

    .line 941
    :cond_1
    return-object v0
.end method

.method public static getTransActivityClass(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "origin"    # Ljava/lang/Class;

    .line 436
    const-string v0, "h5TransActivityName"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "transActivityName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 440
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 441
    return-object v2

    .line 445
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "H5Nebula"

    const-string v3, "getNormalActivityClass : "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    return-object v1
.end method

.method public static getUCMPackageName(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "pis"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 183
    return-object v0

    .line 188
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 189
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    move-object v2, v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    return-object v4

    .line 192
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile.intl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    return-object v4

    .line 195
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile.yunos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    return-object v4

    .line 198
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_0

    .line 199
    :cond_4
    return-object v0
.end method

.method public static getWebViewId()I
    .locals 2

    .line 114
    sget v0, Lcom/alipay/mobile/nebulacore/Nebula;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/Nebula;->e:I

    return v0
.end method

.method public static initInfo(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 808
    new-instance v0, Lcom/alipay/mobile/nebulacore/Nebula$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula$4;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 816
    return-void
.end method

.method public static initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    const-string v0, "H5Nebula"

    .line 570
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10000111"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "session_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "sessionId":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v1    # "sessionId":Ljava/lang/String;
    :cond_0
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1    # "sessionId":Ljava/lang/String;
    :goto_0
    instance-of v2, p2, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v2, :cond_1

    .line 577
    move-object v2, p2

    check-cast v2, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    .line 578
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    const/4 v3, 0x0

    .line 579
    .local v3, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 583
    .end local v3    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_1
    const-string/jumbo v2, "sessionId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sessionId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    nop

    .end local v1    # "sessionId":Ljava/lang/String;
    return-void

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public static interceptSchemeForTiny(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1220
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1221
    return v0

    .line 1223
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    .line 1226
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "javascript"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1230
    :cond_1
    const-string v1, "h5_interceptSchemeForTiny"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    return v0

    .line 1234
    :cond_2
    const/4 v1, 0x0

    .line 1236
    .local v1, "hasPermissionFile":Z
    if-nez p1, :cond_3

    .line 1237
    return v0

    .line 1239
    :cond_3
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1241
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    .line 1244
    :cond_4
    const/4 v2, 0x0

    .line 1245
    .local v2, "shouldIntercept":Z
    if-eqz v1, :cond_5

    .line 1246
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v3

    .line 1247
    invoke-interface {v3, v0, p0, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionOnScheme(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 1249
    :cond_5
    return v2

    .line 1227
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "hasPermissionFile":Z
    .end local v2    # "shouldIntercept":Z
    :cond_6
    :goto_0
    return v0
.end method

.method public static isDelayRender(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 160
    const-string v0, "delayRender"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    move v2, v1

    .line 161
    .local v2, "delayRender":Z
    move v2, v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "param delayRender "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5Nebula"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "h5_commonConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 165
    const-string v4, "h5_enableDelayRender"

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    .local v0, "isDelayRender":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "config delayRender "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0

    .line 169
    .end local v0    # "isDelayRender":Z
    :cond_0
    return v1
.end method

.method public static isRooted()Z
    .locals 9

    .line 229
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 230
    const/4 v0, 0x0

    .local v0, "ret":Z
    const/4 v1, 0x0

    move-object v2, v1

    .line 232
    .local v2, "cla":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 234
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 236
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 237
    .local v5, "claArrayTypes":[Ljava/lang/Class;
    const-string v6, "get"

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 238
    .local v6, "meth":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "ro.secure"

    aput-object v8, v4, v7

    .line 239
    .local v4, "arglist":[Ljava/lang/Object;
    invoke-virtual {v6, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 242
    .end local v4    # "arglist":[Ljava/lang/Object;
    .end local v5    # "claArrayTypes":[Ljava/lang/Class;
    .end local v6    # "meth":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v1

    move-object v5, v1

    .line 241
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "root "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "root"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 250
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/bin/su"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 251
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const/4 v0, 0x1

    goto :goto_2

    .line 254
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/xbin/su"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const/4 v0, 0x1

    .line 260
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 261
    sput-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 263
    .end local v0    # "ret":Z
    .end local v2    # "cla":Ljava/lang/Class;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTaskRoot(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 980
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public static isTinyResAppId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    const/4 v1, 0x0

    .line 280
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTinyWebView(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1205
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1206
    .local v2, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1207
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getWebViewTag()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v1, "tag":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    const/4 v0, 0x1

    return v0

    .line 1215
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 0
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 531
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 532
    return-void
.end method

.method public static loadImageKeepSize(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 537
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    const/4 v1, 0x0

    .line 539
    .local v1, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Lcom/alipay/mobile/nebulacore/Nebula$2;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/Nebula$2;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImageKeepSize(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    return-void

    .line 551
    :cond_0
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    new-instance v3, Lcom/alipay/mobile/nebulacore/Nebula$3;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebulacore/Nebula$3;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/h5container/api/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 552
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public static loadJsBridge(Ljava/util/HashMap;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "bridgeParams"    # Ljava/util/HashMap;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 740
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->h5_bridge:I

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "bridgeStr":Ljava/lang/String;
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 742
    const-string v1, "/sdcard/h5_bridge_debug.js"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "H5Nebula"

    if-eqz v1, :cond_1

    .line 748
    const-string/jumbo v1, "no bridge data defined!"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-object v0

    .line 752
    :cond_1
    const-string v1, "AlipayJSBridge.startupParams=\'{startupParams}\'"

    .line 753
    .local v1, "startupStr":Ljava/lang/String;
    const-string v3, ""

    .line 754
    .local v3, "paramsStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 755
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 756
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";AlipayJSBridge."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 760
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 761
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 763
    :cond_3
    const-string/jumbo v4, "no params data defined!"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 767
    nop

    .line 768
    const-string/jumbo v2, "var messenger=window.__alipayConsole__||window.console,log=messenger.log"

    const-string/jumbo v5, "var messenger=window,log=window.prompt"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_4
    const-string v2, "console.log(\"begin load AlipayJSBridge\");"

    if-ne p2, v4, :cond_5

    .line 774
    const-string v4, "console.log(\"begin load AlipayJSBridge from core raw\");"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 776
    :cond_5
    if-nez p2, :cond_6

    .line 777
    const-string v4, "console.log(\"begin load AlipayJSBridge from uc provider\");"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 781
    :cond_6
    :goto_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\'{APVIEWID}\'"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 784
    const-string p1, ""

    .line 786
    :cond_7
    const-string/jumbo v2, "{bridge_token}"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    return-object v2
.end method

.method public static moveTaskToBack(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 985
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBack(Ljava/lang/Object;)V

    .line 989
    :cond_0
    return-void
.end method

.method public static needPageKeepAlive(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/app/Activity;)Z
    .locals 10
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 901
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 902
    return v0

    .line 905
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 906
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->isExited()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 907
    .local v1, "sessionExited":Z
    :goto_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->isTinyApp()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    .line 908
    instance-of v5, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v5, :cond_6

    .line 910
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 911
    const-string/jumbo v6, "sessionId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v6

    .line 914
    .local v6, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v7, p1

    check-cast v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v7

    .line 915
    .local v2, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    move-object v2, v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 917
    .local v7, "fragmentCount":I
    :goto_2
    if-eqz v6, :cond_4

    instance-of v8, v6, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v8, :cond_4

    move-object v8, v6

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 918
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 919
    move-object v8, v6

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 920
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v8

    .line 921
    .local v8, "countTabFragments":I
    if-ne v7, v8, :cond_4

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTaskRoot(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 922
    return v4

    .line 925
    .end local v8    # "countTabFragments":I
    :cond_4
    if-ne v7, v4, :cond_5

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTaskRoot(Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v4

    :cond_5
    return v0

    .line 928
    .end local v2    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v6    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v7    # "fragmentCount":I
    :cond_6
    return v0
.end method

.method public static openInBrowser(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 452
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->a()Z

    move-result v0

    const-string v1, "H5Nebula"

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openInBrowser goToSchemeService : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 457
    .local v3, "uri":Landroid/net/Uri;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 458
    return-void

    .line 460
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "scheme":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "openInBrowser scheme "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz p0, :cond_3

    .line 463
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getPackageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    move-object v4, v2

    .line 464
    .local v4, "pis":Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getUCMPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 465
    .local v5, "ucmPkgName":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const-string v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    :cond_2
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v5, p2}, Lcom/alipay/mobile/nebulacore/Nebula;->startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 469
    return-void

    .line 462
    .end local v4    # "pis":Ljava/util/List;
    .end local v5    # "ucmPkgName":Ljava/lang/String;
    :cond_3
    move-object v4, v2

    .line 472
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 473
    .local v4, "openIntent":Landroid/content/Intent;
    move-object v4, v1

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 474
    nop

    .line 475
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 474
    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 476
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 477
    if-eqz p2, :cond_6

    .line 478
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    return-void

    .line 481
    :cond_5
    if-eqz p2, :cond_6

    .line 482
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-interface {p2, v2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 485
    :cond_6
    return-void
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .line 294
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 295
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 301
    const-string v2, " version:"

    const-string v3, "H5Nebula"

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[prepareApp] downloadApp appId:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    return-void

    .line 306
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[prepareApp] install App appId:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "URGENT"

    goto :goto_0

    :cond_2
    const-string v1, "IO"

    .line 308
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/Nebula$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/Nebula$1;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void

    .line 296
    :cond_3
    :goto_1
    return-void
.end method

.method public static removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 652
    if-nez p0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    const-string v0, "h5_removeBridgeTimeParam"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    return-void

    .line 661
    :cond_1
    const-string v1, "asyncIndex"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_2
    const-string/jumbo v1, "perf_prepare_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_3
    const-string/jumbo v1, "perf_open_app_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_4
    const-string v1, "is_preload"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 673
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    :cond_5
    const-string v1, "is_local"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_6
    const-string v1, "LITE_PROCESS_ID"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 680
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_7
    const-string v1, "REALLY_STARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 685
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_8
    const-string v1, "REALLY_DOSTARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 689
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_9
    const-string/jumbo v1, "packageLoadingShown"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 694
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_a
    const-string/jumbo v1, "safePayContext"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 698
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_b
    const-string/jumbo v1, "reportUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 702
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_c
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 707
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_d

    const-string v1, "h5_removeUseScan"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "YES"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 708
    const-string/jumbo v1, "schemeInnerSource"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v1, "useScan"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_d
    const-string v1, "feedBackExtParams"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 713
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_e
    const-string/jumbo v1, "nebulaAuthCodeKey"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 717
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_f
    return-void
.end method

.method public static removeKeysFromStartParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 723
    if-nez p0, :cond_0

    .line 724
    return-void

    .line 726
    :cond_0
    const-string v0, "isOriginStartFromExternal"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    const-string v1, "h5_removeIsOriginStartFromExternal"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/Nebula;->removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 731
    return-void
.end method

.method public static sendAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 5
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 1043
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1044
    .local v2, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "isTinyApp"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1049
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 1050
    .local v1, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 1051
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1054
    .end local v1    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1055
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v0, "appResume"

    invoke-interface {v2, v0, v1, p2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1057
    return-void
.end method

.method public static setWindowSoftInputMode(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "isTransparent"    # Z

    .line 600
    const-string v0, "adjustResize"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "useResize":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "H5Nebula"

    if-eqz v1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "useResize "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    return-void

    .line 611
    :cond_1
    :goto_0
    const-string v1, " AndroidBug5497Workaround "

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {p0, p3}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;Z)V

    .line 614
    return-void
.end method

.method public static startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "ucmPkgName"    # Ljava/lang/String;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 204
    if-eqz p2, :cond_1

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v0, "text/html"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.UCMobile.main.UCMobile"

    invoke-direct {v0, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v0, "uc_partner"

    const-string v2, "UCM_OPEN_FROM_ALIPAY_WEBVIEWSDK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    if-eqz p3, :cond_0

    .line 216
    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5Nebula"

    const-string/jumbo v3, "startActivity exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    if-eqz p3, :cond_1

    .line 221
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-interface {p3, v3, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static supportJsaApi(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "jsapi"    # Ljava/lang/String;

    .line 1188
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1190
    .local v0, "time":J
    const/4 v2, 0x0

    .line 1191
    .local v2, "available":Z
    move-object v3, p0

    .line 1192
    .local v3, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 1193
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v4

    .line 1194
    .local v4, "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    .line 1195
    invoke-interface {v4, p1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->canHandle(Ljava/lang/String;)Z

    move-result v2

    .line 1196
    .end local v4    # "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    goto :goto_0

    .line 1197
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulacore/Nebula;->i:Ljava/lang/Boolean;

    .line 1198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "supportGetLocation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alipay/mobile/nebulacore/Nebula;->i:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5Nebula"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    .end local v0    # "time":J
    .end local v2    # "available":Z
    .end local v3    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static useH5StatusBar(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 267
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 268
    return v0

    .line 270
    :cond_0
    nop

    .line 271
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "transparent"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 272
    .local v1, "isTransparent":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    nop

    .line 272
    return v0
.end method

.method public static useSW(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1029
    nop

    .line 1030
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1032
    .local v0, "isTinyApp":Z
    const/4 v2, 0x0

    .line 1033
    .local v2, "useSw":Z
    const-string/jumbo v3, "useSW"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1034
    const/4 v2, 0x1

    .line 1036
    :cond_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

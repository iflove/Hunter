.class public Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;
.super Ljava/lang/Object;
.source "H5AppProxyUtil.java"


# static fields
.field public static final DEBUG:Z

.field public static final MULTIMEDIA_IMAGE_BIZ:Ljava/lang/String; = "NebulaImage"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->a()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 4

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 111
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v1

    .line 112
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "H5AppProxyUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "url"    # Ljava/lang/String;

    .line 572
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 573
    return v1

    .line 575
    :cond_0
    const-string v0, "h5_openUrl_whitelist"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 576
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "enable"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 578
    if-nez v0, :cond_1

    .line 580
    return v1

    .line 583
    :cond_1
    :try_start_0
    const-string/jumbo v0, "whitelist"

    invoke-static {v3, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 584
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 585
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 586
    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v6, "targetUrl"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {v4, p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 588
    return v1

    .line 590
    :cond_2
    goto :goto_0

    .line 595
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    nop

    .line 596
    return v5

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5AppProxyUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    return v5
.end method

.method public static captureActivity(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    .local v1, "root":Landroid/view/View;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodePathInTinyProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localId"    # Ljava/lang/String;

    .line 244
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 246
    .local v2, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v2, v0

    const-string v3, "H5AppProxyUtil"

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v2, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "localId :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-object v0

    .line 251
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v0, "apmToolService ==null "

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v1
.end method

.method public static decodeToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localId"    # Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "H5AppProxyUtil"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 215
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v3, v2

    .line 217
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 219
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 220
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v4, v2

    .line 221
    .local v4, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 226
    .end local v4    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 230
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    move-object v3, v2

    .line 232
    .local v3, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "localId :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0

    .line 237
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "apmToolService ==null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v3    # "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    :goto_0
    return-object v2
.end method

.method public static encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 437
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "H5AppProxyUtil"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 438
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 439
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v3, v2

    .line 440
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 442
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 443
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v4, v2

    .line 444
    .local v4, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 449
    .end local v4    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    .line 448
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 453
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 454
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    move-object v3, v2

    .line 455
    .local v3, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "localId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "localId :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-object v0

    .line 460
    .end local v0    # "localId":Ljava/lang/String;
    :cond_3
    const-string v0, "apmToolService ==null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v3    # "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    :goto_0
    return-object v2
.end method

.method public static findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 87
    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public static generateBizLog(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 600
    const-string v0, ""

    .line 601
    .local v0, "appId":Ljava/lang/String;
    const-string v1, ""

    .line 602
    .local v1, "appVersion":Ljava/lang/String;
    const-string v2, ""

    .line 603
    .local v2, "releaseType":Ljava/lang/String;
    const-string v3, ""

    .line 604
    .local v3, "referUrl":Ljava/lang/String;
    const-string v4, ""

    .line 605
    .local v4, "pageUrl":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 606
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    :cond_0
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string/jumbo v6, "|"

    if-eqz v5, :cond_1

    .line 613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 615
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getAudioPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localId"    # Ljava/lang/String;

    .line 396
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 398
    .local v2, "multimediaAudioService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 399
    const-string/jumbo v0, "wav"

    .line 400
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v2, p0, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->convertToFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v4, v1

    .line 401
    .local v4, "wavFile":Ljava/io/File;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 406
    .end local v0    # "format":Ljava/lang/String;
    .end local v4    # "wavFile":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static getConfigProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 125
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 126
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public static getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .locals 2

    .line 99
    const/4 v0, 0x0

    .local v0, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    .line 100
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 101
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    return-object v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 2

    .line 91
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 92
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getImageData(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageByteListener;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageByteListener;

    .line 164
    if-nez p1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 169
    .local v0, "multimediaImageService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    const/4 v2, 0x0

    .line 171
    .local v2, "apImageLoadRequest":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;
    move-object v2, v1

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->setExpiredTime(J)V

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->withImageDataInCallback:Z

    .line 173
    iput-object p0, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->NONE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    iput-object v1, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->cutScaleType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    .line 175
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil$1;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageByteListener;Ljava/lang/String;)V

    iput-object v1, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 198
    const-string v1, "NebulaImage"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 199
    return-void
.end method

.method public static getLocalPathFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 283
    .local v0, "id":Ljava/lang/String;
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 286
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 288
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 291
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 293
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 296
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodePathInTinyProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 303
    :cond_3
    const-string/jumbo v1, "other"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 307
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "apml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    move-object v0, p0

    .line 309
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppProxyUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-object p0
.end method

.method public static final getLoginToken()Ljava/lang/String;
    .locals 2

    .line 388
    const/4 v0, 0x0

    .local v0, "loginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 389
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 392
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMicroApplication(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    instance-of v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 68
    move-object v1, p0

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    instance-of v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, p0

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 73
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOpenPlatApp(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 204
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isNativeApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    return-object v1

    .line 207
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-object v2, v1

    .line 209
    .local v2, "service":Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    move-object v2, v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
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

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AppProxyUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 2

    .line 373
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 375
    nop

    .line 376
    const-string v1, "android-phone-wallet-nebulaappproxy"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    return-object v0
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

    .line 327
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 328
    return-object v0

    .line 333
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

    .line 334
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    move-object v2, v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    return-object v4

    .line 337
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile.intl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    return-object v4

    .line 340
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.UCMobile.yunos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    return-object v4

    .line 343
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_0

    .line 344
    :cond_4
    return-object v0
.end method

.method public static getVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .line 410
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 411
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v2, v1

    .line 413
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 415
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 416
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v3, v1

    .line 417
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getVideoPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 422
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    .line 421
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v3, "H5AppProxyUtil"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 426
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 427
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    move-object v2, v1

    .line 428
    .local v2, "multimediaImageService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v2, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->getVideoPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    .end local v2    # "multimediaImageService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static goToSchemeService(Landroid/net/Uri;)I
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 468
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 469
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 470
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v2, v1

    .line 471
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 473
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 474
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 475
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->process(Landroid/net/Uri;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 480
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    .line 479
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AppProxyUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 484
    :cond_2
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 485
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 486
    .local v1, "schemeService":Lcom/alipay/mobile/framework/service/common/SchemeService;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    move-result v0

    return v0

    .line 491
    .end local v1    # "schemeService":Lcom/alipay/mobile/framework/service/common/SchemeService;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static goToSchemeService(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "extInfo"    # Landroid/os/Bundle;

    .line 496
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "H5AppProxyUtil"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 497
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 498
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v4, v2

    .line 499
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v0

    if-eqz v0, :cond_1

    .line 501
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 502
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->process(Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 507
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    .line 506
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    nop

    .line 530
    :goto_0
    return v3

    .line 511
    :cond_2
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 512
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-object v4, v2

    .line 513
    .local v4, "schemeService":Lcom/alipay/mobile/framework/service/common/SchemeService;
    move-object v4, v0

    if-nez v0, :cond_3

    .line 514
    return v3

    .line 516
    :cond_3
    const-string v0, "h5_schemeCensorEnable"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 517
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v5, v2

    .line 518
    .local v5, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v11, v0

    .end local v5    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v11, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_4

    .line 519
    const-string v0, "isOriginStartFromExternal"

    invoke-static {p1, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "use schemeService processAsync, uri : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    move-object v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/alipay/mobile/framework/service/common/SchemeService;->processAsync(Landroid/net/Uri;ZLjava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/common/SchemeProcessCallback;)V

    .line 522
    return v3

    .line 525
    :cond_4
    invoke-virtual {v4, p0, v3, v2, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;ZLjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0

    .line 527
    .end local v11    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_5
    invoke-virtual {v4, p0, v3, v2, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;ZLjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public static final login()Z
    .locals 2

    .line 380
    const/4 v0, 0x0

    .local v0, "loginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 381
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v1

    return v1

    .line 384
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "https://resource/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, v0

    .line 259
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 263
    .local v3, "details":[Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_1

    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 264
    const/4 v1, 0x0

    aget-object v1, v3, v1

    .line 266
    .local v1, "localId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 267
    return-object v1

    .line 271
    :cond_0
    goto :goto_0

    .line 269
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "H5AppProxyUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "details":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static openInBrowser(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 534
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 535
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "scheme":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "openInBrowser scheme "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5AppProxyUtil"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "H5_OPENURL_OUTSIDE"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 541
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 542
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "targetUrl"

    invoke-virtual {v3, v4, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v4, "from"

    const-string v5, "all"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 540
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 543
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 544
    return-void

    .line 546
    :cond_1
    if-eqz p0, :cond_3

    .line 547
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getPackageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    .line 548
    .local v4, "pis":Ljava/util/List;
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getUCMPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    .line 549
    .local v5, "ucmPkgName":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "http"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 550
    const-string v3, "https"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 551
    :cond_2
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v5, p2}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 553
    return-void

    .line 546
    .end local v4    # "pis":Ljava/util/List;
    .end local v5    # "ucmPkgName":Ljava/lang/String;
    :cond_3
    move-object v4, v1

    .line 556
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 557
    .local v4, "openIntent":Landroid/content/Intent;
    move-object v4, v3

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    nop

    .line 559
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 558
    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 560
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 561
    if-eqz p2, :cond_6

    .line 562
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    return-void

    .line 565
    :cond_5
    if-eqz p2, :cond_6

    .line 566
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v3, "success"

    invoke-interface {p2, v3, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 569
    :cond_6
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "h5Context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    const-string v0, "H5AppProxyUtil"

    if-nez p1, :cond_0

    .line 134
    const-string v1, "invalid event parameter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getMicroApplication(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 140
    .local v1, "microApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eqz v1, :cond_1

    .line 141
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void

    .line 156
    :catch_0
    move-exception v2

    goto :goto_1

    .line 145
    :cond_1
    if-eqz p0, :cond_2

    .line 146
    move-object v2, p0

    .local v2, "context":Landroid/content/Context;
    goto :goto_0

    .line 148
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 151
    .restart local v2    # "context":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 152
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    :cond_3
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2    # "context":Landroid/content/Context;
    return-void

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "startActivity exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public static startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "ucmPkgName"    # Ljava/lang/String;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 349
    if-eqz p2, :cond_1

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 351
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v0, "text/html"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.UCMobile.main.UCMobile"

    invoke-direct {v0, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 356
    const-string/jumbo v0, "uc_partner"

    const-string v2, "UCM_OPEN_FROM_ALIPAY_WEBVIEWSDK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 360
    if-eqz p3, :cond_0

    .line 361
    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5AppProxyUtil"

    const-string/jumbo v3, "startActivity exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    if-eqz p3, :cond_1

    .line 366
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-interface {p3, v3, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

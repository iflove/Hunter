.class public Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;
.super Ljava/lang/Object;
.source "TinyappUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;
    }
.end annotation


# static fields
.field private static SUPPORTED_IMAGE_SUFFIX:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TinyappUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    const-string/jumbo v0, "png"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string/jumbo v3, "webp"

    const-string v4, "bmp"

    const-string v5, "gif"

    const-string/jumbo v6, "tif"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->SUPPORTED_IMAGE_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSuffixSupported(Ljava/lang/String;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .line 464
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "suffix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSuffixSupported...suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TinyappUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 468
    const-string v2, "checkSuffixSupported... suffix is null"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v4

    .line 472
    :cond_0
    const/4 v2, 0x0

    .line 473
    .local v2, "supportedSuffix":Z
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "lowerCase":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->SUPPORTED_IMAGE_SUFFIX:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 475
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 476
    const/4 v2, 0x1

    .line 477
    goto :goto_1

    .line 474
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 480
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSuffixSupported...unsupported suffix = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return v4

    .line 484
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static decodePathInTinyProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localId"    # Ljava/lang/String;

    .line 445
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 447
    .local v2, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v2, v0

    const-string v3, "TinyappUtils"

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v2, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
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

    .line 450
    return-object v0

    .line 452
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v0, "apmToolService ==null "

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-object v1
.end method

.method public static decodeToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localId"    # Ljava/lang/String;

    .line 415
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "TinyappUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 416
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 417
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v3, v2

    .line 418
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 420
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 421
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v4, v2

    .line 422
    .local v4, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 427
    .end local v4    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    .line 426
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 431
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 432
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    move-object v3, v2

    .line 433
    .local v3, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
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

    .line 436
    return-object v0

    .line 438
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "apmToolService ==null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v3    # "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    :goto_0
    return-object v2
.end method

.method public static encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 312
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const-string v1, "TinyappUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 313
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 314
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v3, v2

    .line 315
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 317
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 318
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v4, v2

    .line 319
    .local v4, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v4, v0

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 324
    .end local v4    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 328
    :cond_2
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    .line 329
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;

    move-object v3, v2

    .line 330
    .local v3, "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {v3, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;->encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
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

    .line 333
    return-object v0

    .line 335
    .end local v0    # "localId":Ljava/lang/String;
    :cond_3
    const-string v0, "apmToolService ==null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v3    # "apmToolService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/APMToolService;
    :goto_0
    return-object v2
.end method

.method public static getAppDesc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 153
    const-string v0, ""

    .line 155
    .local v0, "appDesc":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 156
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 159
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 160
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 161
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 162
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 164
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 166
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 169
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 171
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 172
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    move-object v0, v5

    .line 174
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 175
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 180
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 181
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 183
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 185
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 186
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 193
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 191
    :catchall_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppIcon(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 205
    const-string v0, ""

    .line 207
    .local v0, "appIcon":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 208
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 211
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 212
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 213
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 214
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 216
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 218
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 221
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 223
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 224
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    move-object v0, v5

    .line 226
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 227
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 231
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 232
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 233
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 235
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 237
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 238
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 245
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppIcon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 257
    const-string v0, ""

    .line 259
    .local v0, "appIcon":Ljava/lang/String;
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 260
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v1

    if-eqz v1, :cond_6

    .line 261
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOfPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v1

    .line 262
    .local v2, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v2, v1

    sget-object v4, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v1, v4, :cond_3

    .line 264
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 266
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 269
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 271
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v1, :cond_2

    .line 272
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    move-object v0, v4

    .line 274
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    goto :goto_2

    .line 275
    :cond_3
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 280
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 281
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 283
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 285
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v1, :cond_6

    .line 286
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 293
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v2    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_6
    goto :goto_2

    .line 291
    :catchall_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 52
    const-string v0, ""

    .line 54
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    .line 55
    .local v1, "nbsv":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nbsv"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 58
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 59
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_7

    .line 60
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v2

    .line 61
    .local v3, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v3, v2

    sget-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v2, v5, :cond_4

    .line 63
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 65
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 68
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 70
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v2, :cond_3

    .line 71
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    move-object v0, v5

    .line 73
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    goto :goto_2

    .line 74
    :cond_4
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 78
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 79
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 80
    invoke-interface {v4, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 82
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_6
    invoke-interface {v4, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 84
    .restart local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 85
    iget-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 92
    .end local v1    # "nbsv":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_7
    goto :goto_2

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getAppName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 104
    const-string v0, ""

    .line 106
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 107
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v1

    if-eqz v1, :cond_6

    .line 108
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOfPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v1

    .line 109
    .local v2, "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object v2, v1

    sget-object v4, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v1, v4, :cond_3

    .line 111
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 113
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 116
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 118
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    if-eqz v1, :cond_2

    .line 119
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    move-object v0, v4

    .line 121
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    goto :goto_2

    .line 122
    :cond_3
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 127
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 130
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 132
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_1
    if-eqz v1, :cond_6

    .line 133
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 140
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v2    # "mode":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_6
    goto :goto_2

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 591
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 592
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 593
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 594
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDensity...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v0    # "e":Ljava/lang/Throwable;
    const/high16 v0, 0x40300000    # 2.75f

    return v0
.end method

.method public static getLocalPathFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 362
    .local v0, "id":Ljava/lang/String;
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 365
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 367
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 370
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 372
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 375
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 378
    :cond_2
    const-string/jumbo v1, "other"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 380
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 382
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "apml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    move-object v0, p0

    .line 384
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 388
    :cond_4
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

    const-string v2, "TinyappUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-object p0
.end method

.method public static getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 601
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 636
    if-nez p0, :cond_0

    .line 638
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_NONE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0

    .line 641
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 642
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 644
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_NONE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0

    .line 647
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v3, v1

    .line 648
    .local v3, "activeNetInfo":Landroid/net/NetworkInfo;
    move-object v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 652
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v1

    .line 653
    .local v4, "wifiInfo":Landroid/net/NetworkInfo;
    move-object v4, v0

    if-eqz v0, :cond_4

    .line 654
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 655
    .local v1, "state":Landroid/net/NetworkInfo$State;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 656
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_4

    .line 657
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_WIFI:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0

    .line 661
    .end local v1    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_MOBILE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0

    .line 649
    .end local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_5
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_NONE:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    return-object v0
.end method

.method public static getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 559
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 561
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v2, v0

    .line 562
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 563
    return-object v0

    .line 566
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 567
    .local v0, "bundle":Landroid/os/Bundle;
    move-object v0, v1

    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "appId":Ljava/lang/String;
    nop

    .line 569
    const-string v3, "appVersion"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    return-object v3
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 579
    const/16 v0, 0x37

    .line 581
    .local v0, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 582
    .local v2, "resourceId":I
    move v2, v1

    if-lez v1, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 586
    :cond_0
    return v0
.end method

.method public static getTypeFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 518
    if-nez p0, :cond_0

    const-string/jumbo v0, "other"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 522
    .local v0, "type":Ljava/lang/String;
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const-string v0, "image"

    goto :goto_0

    .line 524
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 526
    :cond_2
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    const-string v0, "audio"

    goto :goto_0

    .line 529
    :cond_3
    const-string/jumbo v0, "other"

    .line 532
    :goto_0
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 299
    const/4 v0, 0x0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 301
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v2, 0x0

    .line 303
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 308
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_0
    return-object v0
.end method

.method public static isDebugVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 2
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 542
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "scene":Ljava/lang/String;
    const-string v1, "DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isOnlineVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 2
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 554
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 555
    .local v1, "scene":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "https://resource/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, v0

    .line 395
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 399
    .local v3, "details":[Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_1

    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 400
    const/4 v1, 0x0

    aget-object v1, v3, v1

    .line 402
    .local v1, "localId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 403
    return-object v1

    .line 407
    :cond_0
    goto :goto_0

    .line 405
    :catch_0
    move-exception v4

    .line 406
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "TinyappUtils"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "details":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;Z)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "forceReset"    # Z

    .line 495
    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 498
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 499
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .local v1, "buffer":[B
    const/4 v2, 0x0

    move v3, v2

    .line 501
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    if-eq v4, v5, :cond_1

    .line 502
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static transferApPathToLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apPath"    # Ljava/lang/String;

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    return-object v1

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getLocalPathFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v1, "localPath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    :cond_1
    return-object v1
.end method

.method public static versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "currentVersion"    # Ljava/lang/String;
    .param p1, "targetVersion"    # Ljava/lang/String;

    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 615
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "s1":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "s2":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 618
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 619
    array-length v5, v2

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 620
    .local v8, "v1":J
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_2
    move-wide v5, v6

    .line 621
    .local v5, "v2":J
    cmp-long v7, v8, v5

    if-gez v7, :cond_3

    .line 622
    return v1

    .line 623
    :cond_3
    cmp-long v7, v8, v5

    if-lez v7, :cond_4

    .line 624
    const/4 v1, 0x1

    return v1

    .line 618
    .end local v5    # "v2":J
    .end local v8    # "v1":J
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 626
    .end local v4    # "i":I
    :cond_5
    const/4 v1, 0x0

    return v1

    .line 613
    .end local v0    # "s2":[Ljava/lang/String;
    .end local v2    # "s1":[Ljava/lang/String;
    .end local v3    # "length":I
    :cond_6
    :goto_2
    return v1
.end method

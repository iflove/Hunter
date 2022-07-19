.class public Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;
.super Ljava/lang/Object;
.source "TinyAppMixActionServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl$1;

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl$a;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;

    return-object v0
.end method

.method public static isInnerTinyApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 478
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    const/4 v1, 0x0

    .line 479
    .local v1, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    return v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allowedShowAboutMenu(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getAboutMenuBlackList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 79
    .local v2, "blackList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowAboutMenu...all closed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v3

    .line 88
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "blackAppId":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowAboutMenu...hit blacklist"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v3

    .line 93
    .end local v4    # "blackAppId":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 95
    :cond_4
    return v1

    .line 80
    :cond_5
    :goto_1
    return v1
.end method

.method public allowedShowAddToDesktopMenu(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getAddToDesktopMenuBlacklist()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 112
    .local v2, "blackList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowAddToDesktopMenu...all closed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v3

    .line 121
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, "blackAppId":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowAddToDesktopMenu...hit blacklist"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v3

    .line 126
    .end local v4    # "blackAppId":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 128
    :cond_4
    return v1

    .line 113
    :cond_5
    :goto_1
    return v1
.end method

.method public allowedShowFavoriteMenu(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 101
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->getInstance()Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->allowedShowFavoriteMenu(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public allowedShowShareMenu(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getShareMenuBlacklist()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 55
    .local v2, "blackList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowShareMenu...all closed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v3

    .line 64
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, "blackAppId":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "allowedShowShareMenu...hit blacklist"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v3

    .line 69
    .end local v4    # "blackAppId":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 71
    :cond_4
    return v1

    .line 56
    :cond_5
    :goto_1
    return v1
.end method

.method public allowedUseTlsWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 242
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUseTlsWhiteList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 244
    .local v2, "whiteList":Ljava/util/List;
    move-object v2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 247
    :cond_1
    :try_start_0
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, " allow use http/ws connect"

    if-eqz v0, :cond_2

    .line 248
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v3

    .line 252
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 253
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 254
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    return v3

    .line 257
    :cond_3
    goto :goto_0

    .line 260
    :cond_4
    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return v1

    .line 244
    :cond_5
    :goto_2
    return v3
.end method

.method public canOpenMiniService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a()Z

    move-result v0

    return v0
.end method

.method public checkInner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 470
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    const/4 v1, 0x0

    .line 471
    .local v1, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->checkInner(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCookiePartWhiteList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 235
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getCookiePartWhiteList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleUnReadMsgInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v0, "lifeCycleInfo":Landroid/os/Bundle;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;

    .line 375
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 376
    .local v3, "publicPlatformService":Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 377
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;->queryUnreadMsgInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;

    move-result-object v2

    .line 378
    .local v1, "info":Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;
    move-object v1, v2

    if-eqz v2, :cond_0

    .line 379
    const-string/jumbo v2, "publicId"

    iget-object v4, v1, Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;->publicId:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v2, "userId"

    iget-object v4, v1, Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "badgeType"

    iget v4, v1, Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;->badgeType:I

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string/jumbo v2, "unreadCount"

    iget v4, v1, Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;->unreadCount:I

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string v2, "latestMsgTime"

    iget-wide v4, v1, Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;->latestMsgTime:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v1    # "info":Lcom/alipay/mobile/life/model/bean/LifeUnreadMsgInfo;
    .end local v3    # "publicPlatformService":Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;
    :catchall_0
    move-exception v1

    move-object v1, v3

    goto :goto_1

    .line 388
    :cond_0
    :goto_0
    goto :goto_2

    .line 386
    :catchall_1
    move-exception v2

    .line 387
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "read lifecycle message count failed "

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public getRecentUserTinyAppList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->getRecentUserTinyAppList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot2WhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSnapshot2WhiteList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotBlackList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSnapshotBlackList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotWhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSnapshotWhiteList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedInternalApiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSupportedInternalApiList()Ljava/util/List;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public getTemplateAppWaitTime()I
    .locals 1

    .line 399
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getTemplateAppWaitTime()I

    move-result v0

    return v0
.end method

.method public getTinyMenuUpdateInterval(Ljava/lang/String;)J
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 404
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getMenuConfigUpdateInterval(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateTinyMenuInterval()J
    .locals 4

    .line 360
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUpdateMenuInterval()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    .local v1, "intervalStr":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 366
    .end local v1    # "intervalStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getUseWholePkgList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUseWholePackageAppIdSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initLoadStorage()V
    .locals 4

    .line 156
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToMainProcess(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLoadStorage...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public isEmbedWebViewShowProgress()Z
    .locals 1

    .line 230
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isWebViewShowProgress()Z

    move-result v0

    return v0
.end method

.method public isEnableTemplateApp()Z
    .locals 1

    .line 394
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isEnableTemplateApp()Z

    move-result v0

    return v0
.end method

.method public isShowBarFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 319
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->getInstance()Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->isShowBarFavorite(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public isShowFavoriteTipsIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 463
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->getInstance()Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->isShowFavoriteTipsIcon(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 464
    :catchall_0
    move-exception v0

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public isShowRecentAppAreaInMenu(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 329
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getIsOpenRecentAppPanelAppIds()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    .line 331
    .local v2, "rules":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-nez v0, :cond_1

    return v1

    .line 334
    :cond_1
    :try_start_0
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 335
    .local v0, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    const-string v3, "blacklist"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .local v3, "blackList":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x0

    .line 338
    .local v4, "isWhite":Z
    const/4 v5, 0x0

    .line 339
    .local v5, "isBlack":Z
    const-string v6, "all"

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    :cond_2
    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "show recent app in menu in white list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x1

    .line 344
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 345
    :cond_4
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "show recent app in menu in black list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v5, 0x1

    .line 349
    :cond_5
    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 351
    .end local v0    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "isWhite":Z
    .end local v5    # "isBlack":Z
    :catchall_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public isShowTinyAppAboutMsgInMenu(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    return v1

    .line 447
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getTinyAppMenuAboutMsgWhiteList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 448
    .local v2, "whiteList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 450
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 455
    .end local v2    # "whiteList":Ljava/util/List;
    :cond_2
    goto :goto_2

    .line 451
    .restart local v2    # "whiteList":Ljava/util/List;
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_4
    :goto_1
    return v1

    .line 453
    .end local v2    # "whiteList":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return v1
.end method

.method public isTinyAppFavorite(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/os/Bundle;
    .locals 5
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 218
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->getInstance()Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->isTinyAppFavorite(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const/4 v3, 0x0

    const-string/jumbo v4, "success"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    return-object v1
.end method

.method public isUseCustomShareContent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 432
    return v1

    .line 434
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUSeCustomShareContent()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 435
    .local v2, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->isInnerTinyApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_3
    return v1
.end method

.method public isUseNativeShareSwitch()Z
    .locals 1

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseNativeShareSwitch()Z

    move-result v0

    return v0
.end method

.method public isUseOldMenuStyle(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 288
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUseOldMenuStyleAppids()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    .line 290
    .local v2, "rules":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-nez v0, :cond_1

    return v1

    .line 293
    :cond_1
    :try_start_0
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 294
    .local v0, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    const-string v3, "blacklist"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .local v3, "blackList":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x1

    .line 297
    .local v4, "isWhite":Z
    const/4 v5, 0x0

    .line 298
    .local v5, "isBlack":Z
    const-string v6, "all"

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 299
    :cond_2
    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "use new menu in white list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v4, 0x0

    .line 303
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 304
    :cond_4
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "use old menu in black list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    const/4 v5, 0x1

    .line 308
    :cond_5
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_0
    return v1

    .line 309
    .end local v0    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "isWhite":Z
    .end local v5    # "isBlack":Z
    :catchall_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public isUseRpcMergeForQrCodeShare()Z
    .locals 1

    .line 207
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseRpcMergeForQrCodeShare()Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 168
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v2, "appId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x6

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToMainProcess(ILandroid/os/Bundle;)V

    .line 172
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public shouldAllowShowFavoriteTips(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "showFavorite":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->getInstance()Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/aompfavorite/export/AompFavoriteExportImpl;->shouldAllowShowFavoriteTips(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 425
    goto :goto_0

    .line 423
    :catchall_0
    move-exception v1

    .line 424
    .local v1, "th":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "allow show favorite "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public shouldInterceptWebviewOpenAppId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentAppId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .line 186
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 188
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWebviewOpenAppIdList()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 189
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v2, "appIds":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    return v1

    .line 197
    :cond_2
    const-string v0, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0

    .line 189
    .end local v2    # "appIds":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method

.method public shouldLongLickShowPanel()Z
    .locals 1

    .line 149
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->shouldLongClickShowPanel()Z

    move-result v0

    return v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V
    .locals 1
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "closeCurrentApp"    # Z

    .line 144
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 145
    return-void
.end method

.method public startAppLimitControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getInstance()Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->startAppLimitControl(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public supportRemoteDebugMode()Z
    .locals 1

    .line 202
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->supportRemoteDebugMode()Z

    move-result v0

    return v0
.end method

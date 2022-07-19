.class public interface abstract Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
.super Ljava/lang/Object;
.source "TinyAppMixActionService.java"


# virtual methods
.method public abstract allowedShowAboutMenu(Ljava/lang/String;)Z
.end method

.method public abstract allowedShowAddToDesktopMenu(Ljava/lang/String;)Z
.end method

.method public abstract allowedShowFavoriteMenu(Ljava/lang/String;)Z
.end method

.method public abstract allowedShowShareMenu(Ljava/lang/String;)Z
.end method

.method public abstract allowedUseTlsWhiteList(Ljava/lang/String;)Z
.end method

.method public abstract canOpenMiniService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkInner(Ljava/lang/String;)Z
.end method

.method public abstract getCookiePartWhiteList()Lcom/alibaba/fastjson/JSONArray;
.end method

.method public abstract getLifecycleUnReadMsgInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getRecentUserTinyAppList()Lcom/alibaba/fastjson/JSONArray;
.end method

.method public abstract getSnapshot2WhiteList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapshotBlackList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapshotWhiteList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedInternalApiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemplateAppWaitTime()I
.end method

.method public abstract getTinyMenuUpdateInterval(Ljava/lang/String;)J
.end method

.method public abstract getUpdateTinyMenuInterval()J
.end method

.method public abstract getUseWholePkgList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initLoadStorage()V
.end method

.method public abstract isEmbedWebViewShowProgress()Z
.end method

.method public abstract isEnableTemplateApp()Z
.end method

.method public abstract isShowBarFavorite(Ljava/lang/String;)Z
.end method

.method public abstract isShowFavoriteTipsIcon(Ljava/lang/String;)Z
.end method

.method public abstract isShowRecentAppAreaInMenu(Ljava/lang/String;)Z
.end method

.method public abstract isShowTinyAppAboutMsgInMenu(Ljava/lang/String;)Z
.end method

.method public abstract isTinyAppFavorite(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/os/Bundle;
.end method

.method public abstract isUseCustomShareContent(Ljava/lang/String;)Z
.end method

.method public abstract isUseNativeShareSwitch()Z
.end method

.method public abstract isUseOldMenuStyle(Ljava/lang/String;)Z
.end method

.method public abstract isUseRpcMergeForQrCodeShare()Z
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldAllowShowFavoriteTips(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract shouldInterceptWebviewOpenAppId(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract shouldLongLickShowPanel()Z
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V
.end method

.method public abstract startAppLimitControl(Ljava/lang/String;)V
.end method

.method public abstract supportRemoteDebugMode()Z
.end method

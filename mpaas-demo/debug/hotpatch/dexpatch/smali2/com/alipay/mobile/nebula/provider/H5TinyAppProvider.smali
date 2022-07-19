.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
.super Ljava/lang/Object;
.source "H5TinyAppProvider.java"


# virtual methods
.method public abstract checkBinaryRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract checkBinaryRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract checkImageRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
.end method

.method public abstract checkImageRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V
.end method

.method public abstract checkTextRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract favoriteMenuItemHideByJSAPI(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

.method public abstract getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMiddlePageTitleBarLayoutId()I
.end method

.method public abstract handleStartupParams(Landroid/os/Bundle;)V
.end method

.method public abstract handlerAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract handlerBundleToH5EventForIpc(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;)V
.end method

.method public abstract handlerH5EventToBundleForIpc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Bundle;)V
.end method

.method public abstract handlerOnPushWindowParam(Landroid/os/Bundle;)V
.end method

.method public abstract handlerOnShareData(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alibaba/fastjson/JSONObject;
.end method

.method public abstract handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract rpcResultContainsFavoriteItem(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldCheckRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

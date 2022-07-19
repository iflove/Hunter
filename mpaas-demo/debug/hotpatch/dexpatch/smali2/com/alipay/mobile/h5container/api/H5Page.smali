.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Page;
.super Ljava/lang/Object;
.source "H5Page.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;
.implements Lcom/alipay/mobile/nebulax/kernel/node/Scope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;,
        Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;,
        Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;
    }
.end annotation


# virtual methods
.method public abstract applyParamsIfNeed()V
.end method

.method public abstract execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
.end method

.method public abstract exitPage()Z
.end method

.method public abstract exitTabPage()Z
.end method

.method public abstract getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;
.end method

.method public abstract getAdvertisementViewTag()Ljava/lang/String;
.end method

.method public abstract getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
.end method

.method public abstract getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;
.end method

.method public abstract getBridgeToken()Ljava/lang/String;
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getContext()Lcom/alipay/mobile/h5container/api/H5Context;
.end method

.method public abstract getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
.end method

.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
.end method

.method public abstract getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
.end method

.method public abstract getLastTouch()J
.end method

.method public abstract getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
.end method

.method public abstract getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
.end method

.method public abstract getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;
.end method

.method public abstract getPageId()I
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getPerformance()Ljava/lang/String;
.end method

.method public abstract getRedirectUrl()Ljava/lang/String;
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getSession()Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getShareUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleBarReadyCallBack()Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public abstract getWebViewId()I
.end method

.method public abstract hasContentBeforeRedirect()Z
.end method

.method public abstract ifContainsEmbedSurfaceView()Z
.end method

.method public abstract ifContainsEmbedView()Z
.end method

.method public abstract isNebulaX()Z
.end method

.method public abstract isTinyApp()Z
.end method

.method public abstract isTransparentTitleState()Z
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract onInterceptError(Ljava/lang/String;I)Z
.end method

.method public abstract pageIsClose()Z
.end method

.method public abstract replace(Ljava/lang/String;)V
.end method

.method public abstract scriptbizLoadedAndBridgeLoaded()Z
.end method

.method public abstract sendExitEvent()V
.end method

.method public abstract setBridgeToken(Ljava/lang/String;)V
.end method

.method public abstract setContainsEmbedSurfaceView(Z)V
.end method

.method public abstract setContainsEmbedView(Z)V
.end method

.method public abstract setContentBeforeRedirect(Z)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setH5ErrorHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;)V
.end method

.method public abstract setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
.end method

.method public abstract setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V
.end method

.method public abstract setNewEmbedViewRoot(Landroid/view/View;)V
.end method

.method public abstract setPageId(I)V
.end method

.method public abstract setPerformance(Ljava/lang/String;)V
.end method

.method public abstract setRootView(Landroid/view/View;)V
.end method

.method public abstract setTextSize(I)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setTitleBarReadyCallBack(Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;)V
.end method

.method public abstract setWebViewId(I)V
.end method

.class public Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "H5NewEmbedBaseView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NewEmbedBaseView"


# instance fields
.field private mCore:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

.field private newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mCore:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "H5NewEmbedBaseView"

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mCore:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mCore:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setNewEmbedViewRoot(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "fatal error h5page is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "fatal error context is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->mCore:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    return-object v0
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onEmbedViewAttachedToWebView()V

    .line 46
    :cond_0
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onEmbedViewDestory()V

    .line 60
    :cond_0
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onEmbedViewDetachedFromWebView()V

    .line 53
    :cond_0
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onEmbedViewParamChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onEmbedViewVisibilityChanged()V

    .line 74
    :cond_0
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 100
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 105
    return-void
.end method

.method public onWebViewDestory()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onWebViewDestory()V

    .line 95
    :cond_0
    return-void
.end method

.method public onWebViewPause()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onWebViewPause()V

    .line 88
    :cond_0
    return-void
.end method

.method public onWebViewResume()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseView;->newEmbedViewProvider:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->onWebViewResume()V

    .line 81
    :cond_0
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 120
    return-void
.end method

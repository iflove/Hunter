.class public Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;
.super Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;
.source "H5NewEmbedFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NewEmbedFrameLayout"


# instance fields
.field private mCore:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateCoreView()Landroid/view/View;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    return-object v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->generateCoreView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedFrameLayout"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    return-object v0
.end method

.method public onEmbedViewAttachedToWebView()V
    .locals 0

    .line 36
    return-void
.end method

.method public onEmbedViewDestory()V
    .locals 0

    .line 46
    return-void
.end method

.method public onEmbedViewDetachedFromWebView()V
    .locals 0

    .line 41
    return-void
.end method

.method public onEmbedViewParamChanged()V
    .locals 0

    .line 51
    return-void
.end method

.method public onEmbedViewVisibilityChanged()V
    .locals 0

    .line 56
    return-void
.end method

.method public onReceivedData(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 101
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedData data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedFrameLayout"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 75
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedMessage actionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedFrameLayout"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 83
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedRender data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedFrameLayout"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "container":Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    instance-of v2, v1, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;

    if-eqz v2, :cond_1

    .line 89
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;

    goto :goto_0

    .line 90
    :cond_1
    instance-of v2, v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;

    if-eqz v2, :cond_2

    .line 91
    check-cast v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;->getContainer()Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;

    move-result-object v0

    .line 94
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->mCore:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->onReceivedRender(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    .line 97
    :cond_3
    return-void

    .line 84
    .end local v0    # "container":Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;
    :cond_4
    :goto_1
    return-void
.end method

.method public onWebViewDestory()V
    .locals 0

    .line 71
    return-void
.end method

.method public onWebViewPause()V
    .locals 0

    .line 66
    return-void
.end method

.method public onWebViewResume()V
    .locals 0

    .line 61
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 115
    return-void
.end method

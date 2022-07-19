.class public Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;
.super Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;
.source "H5NewEmbedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;
    }
.end annotation


# instance fields
.field private mCore:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateCoreView()Landroid/view/View;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mCore:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView$DelegateScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mCore:Landroid/view/ViewGroup;

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mCore:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mCore:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 38
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedFrameLayout;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 40
    const-string v0, "scrollTop"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "scrollTop":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mCore:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedScrollView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScrollY(I)V

    .line 42
    return-void
.end method

.class Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;
.super Ljava/lang/Object;
.source "H5NewEmbedImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    .line 67
    .local v0, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    if-nez v0, :cond_1

    .line 68
    return-void

    .line 70
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 71
    .local v1, "event":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 72
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "element"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v3, 0x0

    const-string v4, "nbcomponent.image.bindtap"

    invoke-interface {v0, v4, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 75
    return-void

    .line 64
    .end local v0    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    .end local v1    # "event":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_0
    return-void
.end method

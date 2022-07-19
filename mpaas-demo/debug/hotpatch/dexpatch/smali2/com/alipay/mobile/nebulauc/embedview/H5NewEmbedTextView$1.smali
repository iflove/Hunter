.class Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;
.super Ljava/lang/Object;
.source "H5NewEmbedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    .line 39
    .local v0, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    if-nez v0, :cond_1

    .line 40
    return-void

    .line 42
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 43
    .local v1, "event":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->element:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "element"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v3, 0x0

    const-string v4, "nbcomponent.text.bindtap"

    invoke-interface {v0, v4, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 47
    return-void

    .line 36
    .end local v0    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    .end local v1    # "event":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_0
    return-void
.end method

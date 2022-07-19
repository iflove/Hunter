.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;
.super Ljava/lang/Object;
.source "H5EmbedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    move-object v2, v1

    .line 204
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 206
    .local v0, "w":I
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 207
    .local v3, "h":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 209
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v4

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v0, :cond_1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v3, :cond_2

    .line 211
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "w":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "h":I
    :cond_2
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

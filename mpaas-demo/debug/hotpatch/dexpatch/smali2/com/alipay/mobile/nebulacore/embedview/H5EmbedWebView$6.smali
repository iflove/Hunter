.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 684
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 692
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5PageFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    .line 694
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 695
    .local v0, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 698
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 699
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pullRefresh"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 702
    .local v2, "canRefresh":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->c:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "host":Ljava/lang/String;
    if-nez v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->a:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u7f51\u9875\u7531 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u63d0\u4f9b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 704
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->a:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    .end local v2    # "canRefresh":Z
    .end local v3    # "host":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->b:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 710
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 696
    :cond_4
    :goto_2
    return v1

    .line 713
    .end local v0    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_5
    :goto_3
    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 687
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 688
    return-void
.end method

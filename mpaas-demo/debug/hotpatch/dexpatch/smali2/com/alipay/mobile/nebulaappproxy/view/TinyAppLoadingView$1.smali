.class Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;
.super Ljava/lang/Object;
.source "TinyAppLoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->cancel()V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->e:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->access$000(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;)Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->e:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->access$000(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;)Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;->onCloseBtnClicked()V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 63
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NebulaActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 67
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

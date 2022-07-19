.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 517
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)I

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;II)V

    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getBackgroundColor()I

    move-result v0

    .line 523
    .local v0, "currentColor":I
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 524
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 527
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/search/H5SearchView;

    const/4 v2, 0x0

    .line 528
    .local v2, "h5SearchView":Lcom/alipay/mobile/nebula/search/H5SearchView;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 529
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 532
    .end local v2    # "h5SearchView":Lcom/alipay/mobile/nebula/search/H5SearchView;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;II)V

    .line 533
    return-void
.end method

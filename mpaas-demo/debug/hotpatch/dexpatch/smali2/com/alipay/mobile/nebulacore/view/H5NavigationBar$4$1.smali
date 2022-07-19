.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;

    .line 1274
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1278
    .local v1, "optionMenuContainer":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1279
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    :cond_0
    return-void
.end method

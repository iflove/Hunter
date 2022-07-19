.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    .line 1126
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1132
    :cond_0
    return-void
.end method

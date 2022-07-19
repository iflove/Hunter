.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->onImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    .line 1143
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3$1;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;

    .line 446
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5WebContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 451
    return-void
.end method

.class Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;
.super Ljava/lang/Object;
.source "H5WebLoadingView.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->initViewAfterSetContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getLoadingActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_0
    return-void
.end method

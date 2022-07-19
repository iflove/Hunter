.class Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;
.super Ljava/lang/Object;
.source "H5WebContentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;

.field final synthetic val$scaleBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;

    .line 226
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;->this$1:Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;

    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;->val$scaleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;->this$1:Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;->this$0:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    # getter for: Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->h5BgImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->access$200(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;->val$scaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2$1;->this$1:Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;

    iget-object v1, v1, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$2;->val$image:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    return-void
.end method

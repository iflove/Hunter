.class Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;
.super Ljava/lang/Object;
.source "H5ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5ImageLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5ImageLoader;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5ImageLoader;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;->this$0:Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    const-string v0, "H5ImageLoader"

    const-string v1, "listener.onImage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;->this$0:Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    # getter for: Lcom/alipay/mobile/h5container/api/H5ImageLoader;->listener:Lcom/alipay/mobile/h5container/api/H5ImageListener;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->access$000(Lcom/alipay/mobile/h5container/api/H5ImageLoader;)Lcom/alipay/mobile/h5container/api/H5ImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method

.class final Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;
.super Ljava/lang/Object;
.source "H5ImageUtil.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h5ImageListener:Lcom/alipay/mobile/h5container/api/H5ImageListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;->val$h5ImageListener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;->val$h5ImageListener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    .line 423
    :cond_0
    return-void
.end method

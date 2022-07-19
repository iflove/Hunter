.class final Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$1;
.super Ljava/lang/Object;
.source "TinyAppImageUtils.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils;->loadImage(Ljava/lang/String;IILcom/alipay/mobile/h5container/api/H5ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5ImageListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$1;->a:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$1;->a:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    .line 27
    :cond_0
    return-void
.end method

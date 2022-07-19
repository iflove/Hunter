.class public final Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils;
.super Ljava/lang/Object;
.source "TinyAppImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImage(Ljava/lang/String;IILcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 15
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 16
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    if-eqz p3, :cond_2

    .line 18
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$1;

    invoke-direct {v1, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$1;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImageWithSize(Ljava/lang/String;IILcom/alipay/mobile/h5container/api/H5ImageListener;)V

    return-void

    .line 30
    :cond_1
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    new-instance v3, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$2;

    invoke-direct {v3, p3}, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$2;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/h5container/api/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_2
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 42
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 43
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    if-eqz p1, :cond_2

    .line 45
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$3;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$3;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImageKeepSize(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    return-void

    .line 57
    :cond_1
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    new-instance v3, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$4;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebulacore/util/graphics/TinyAppImageUtils$4;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/h5container/api/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 66
    :cond_2
    return-void
.end method

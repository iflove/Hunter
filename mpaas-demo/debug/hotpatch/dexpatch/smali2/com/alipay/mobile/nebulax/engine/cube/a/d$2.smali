.class Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;
.super Ljava/lang/Object;
.source "ImageLoaderHandlerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXLoadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/cube/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->d:Lcom/alipay/mobile/nebulax/engine/cube/a/d;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->c:Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 278
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBitmapFailed  url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->d:Lcom/alipay/mobile/nebulax/engine/cube/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->c:Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;

    invoke-static {v0, v1, p1, v2}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 280
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBitmapLoaded  url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->d:Lcom/alipay/mobile/nebulax/engine/cube/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;->c:Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;

    invoke-static {v0, v1, p1, v2}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 274
    return-void
.end method

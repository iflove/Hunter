.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 438
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 441
    const-string v0, "H5WebContent"

    const-string v1, "showImage form offline package"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 445
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 454
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.class Lcom/alipay/mobile/h5container/api/H5TitleBar$4;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;->loadImageAsync(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 1377
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iput p2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 1380
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    const-string v0, "H5TitleBar"

    const-string v1, "loadImageAsync from offline"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 1383
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1384
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;->val$index:I

    # invokes: Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$200(Lcom/alipay/mobile/h5container/api/H5TitleBar;Landroid/graphics/Bitmap;I)V

    .line 1388
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

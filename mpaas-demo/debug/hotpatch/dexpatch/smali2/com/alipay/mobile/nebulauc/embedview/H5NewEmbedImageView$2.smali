.class Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;
.super Ljava/lang/Object;
.source "H5NewEmbedImageView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->renderImage(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 5
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 170
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onGetResponse"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 173
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$100(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    const/4 v3, 0x0

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "something wrong"

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void
.end method

.class Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;
.super Ljava/lang/Object;
.source "H5NewEmbedImageView.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->loadGif(Ljava/lang/String;)V
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

    .line 196
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "apImageDownloadRsp"    # Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 210
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "load gif error"

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "something wrong"

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 206
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 3
    .param p1, "apImageDownloadRsp"    # Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;

    .line 199
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "on success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

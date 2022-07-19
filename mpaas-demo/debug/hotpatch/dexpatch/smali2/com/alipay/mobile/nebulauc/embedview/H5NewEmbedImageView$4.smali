.class Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;
.super Ljava/lang/Object;
.source "H5NewEmbedImageView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


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

.field final synthetic val$gifFile:Ljava/io/File;

.field final synthetic val$imageCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/io/File;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$gifFile:Ljava/io/File;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$imageCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 8
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 235
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "load gif image with nebula pkg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p1, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 239
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$gifFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/utils/FileUtils;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$300(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$gifFile:Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->detectedGif(Z)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->build()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;

    move-result-object v5

    .line 244
    .local v5, "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$400(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$gifFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$100(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->val$imageCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    const-string v7, "NebulaImage"

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    const/4 v2, 0x0

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "something wrong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;->this$0:Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "something wrong"

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    return-void
.end method

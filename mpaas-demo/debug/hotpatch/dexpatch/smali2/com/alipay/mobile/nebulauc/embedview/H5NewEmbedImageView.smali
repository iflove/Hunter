.class public Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;
.super Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;
.source "H5NewEmbedImageView.java"


# static fields
.field public static final MULTIMEDIA_IMAGE_BIZ:Ljava/lang/String; = "NebulaImage"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private element:Ljava/lang/String;

.field private final gifCacheFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private mCore:Lcom/alipay/mobile/antui/basic/AUImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;-><init>()V

    .line 39
    const-string v0, "H5NewEmbedImageView"

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->TAG:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 60
    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$1;-><init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    return-void
.end method

.method private loadGif(Ljava/lang/String;)V
    .locals 11
    .param p1, "image"    # Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$3;-><init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)V

    .line 215
    .local v0, "imageCallback":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "H5NewEmbedImageView"

    const-string v3, "load gif image with http"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;-><init>()V

    .line 218
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->detectedGif(Z)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->build()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;

    move-result-object v8

    .line 220
    .local v8, "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    const-string v6, "NebulaImage"

    move-object v2, p1

    move-object v4, v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v8    # "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    goto :goto_0

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v1

    .line 225
    .local v9, "gifFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;-><init>()V

    .line 227
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->detectedGif(Z)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->build()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;

    move-result-object v10

    .line 229
    .local v10, "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    const-string v6, "NebulaImage"

    move-object v4, v10

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v10    # "options":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;
    goto :goto_0

    .line 232
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;

    invoke-direct {v1, p0, v9, v0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$4;-><init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;Ljava/io/File;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    .line 253
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 232
    invoke-virtual {p0, p1, v1, v2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->getComponentResourceDataWithUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 256
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "gifFile":Ljava/io/File;
    :goto_0
    return-void
.end method

.method private renderImage(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->appId:Ljava/lang/String;

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedRender data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedImageView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->generateBackgroundDrawable(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;I)Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    move-result-object v0

    .line 156
    .local v0, "drawable":Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const-string v2, "src"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "image":Ljava/lang/String;
    const-string v3, "element"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-eqz v3, :cond_5

    .line 161
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 186
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->element:Ljava/lang/String;

    const-string v4, "something wrong"

    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-eqz v3, :cond_4

    .line 164
    const-string v3, "gif use image service"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->loadGif(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_4
    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView$2;-><init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    .line 180
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 167
    invoke-virtual {p0, v2, v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->getComponentResourceDataWithUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 193
    :cond_5
    :goto_1
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    .line 282
    .local v0, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    if-nez v0, :cond_1

    .line 283
    return-void

    .line 285
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 286
    .local v1, "event":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 287
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 288
    .local v3, "detail":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/basic/AUImageView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "px"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "height"

    invoke-virtual {v3, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/basic/AUImageView;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_2
    const-string v4, "errMsg"

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_0
    const-string v4, "detail"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "element"

    invoke-virtual {v2, v4, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v4, "data"

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "bindload"

    goto :goto_1

    :cond_3
    const-string v4, "binderror"

    .line 298
    .local v4, "action":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v5}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 299
    return-void

    .line 279
    .end local v0    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    .end local v1    # "event":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "detail":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "action":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->initView()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedImageView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->mCore:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public onEmbedViewAttachedToWebView()V
    .locals 2

    .line 89
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onEmbedViewAttachedToWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onEmbedViewDestory()V
    .locals 5

    .line 99
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onEmbedViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 102
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete gif cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->gifCacheFiles:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 104
    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public onEmbedViewDetachedFromWebView()V
    .locals 2

    .line 94
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onEmbedViewDetachedFromWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onEmbedViewParamChanged()V
    .locals 2

    .line 110
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onEmbedViewParamChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onEmbedViewVisibilityChanged()V
    .locals 2

    .line 115
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onEmbedViewVisibilityChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onReceivedData(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 260
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedData data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedImageView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->renderImage(Lcom/alibaba/fastjson/JSONObject;)V

    .line 265
    return-void

    .line 261
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 135
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedMessage actionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedImageView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 143
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedImageView;->renderImage(Lcom/alibaba/fastjson/JSONObject;)V

    .line 147
    return-void

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method public onWebViewDestory()V
    .locals 2

    .line 130
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onWebViewPause()V
    .locals 2

    .line 125
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onWebViewResume()V
    .locals 2

    .line 120
    const-string v0, "H5NewEmbedImageView"

    const-string v1, "onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 275
    return-void
.end method

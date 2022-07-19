.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;
.super Ljava/lang/Object;
.source "TinyAppSharePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    .line 320
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 323
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 328
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    const/4 v1, 0x0

    .line 329
    .local v1, "req":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;
    move-object v1, v0

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->fileData:[B

    .line 330
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;-><init>()V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->b:Ljava/lang/String;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->ORIGINAL:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->MIDDLE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    .line 336
    :goto_0
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setPublic:Ljava/lang/Boolean;

    .line 337
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    .line 375
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 376
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 377
    const-string/jumbo v2, "multiMedia"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    nop

    .end local v1    # "req":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;
    return-void

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "read image error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 382
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 324
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 325
    return-void
.end method

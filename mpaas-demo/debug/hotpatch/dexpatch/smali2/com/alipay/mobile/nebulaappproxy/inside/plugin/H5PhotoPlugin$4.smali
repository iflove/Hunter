.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;
.super Ljava/lang/Object;
.source "H5PhotoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->getMultimediaID(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$business:Ljava/lang/String;

.field final synthetic val$bytes:[B

.field final synthetic val$compress:I

.field final synthetic val$height:I

.field final synthetic val$info:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;II[BLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    .line 442
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iput p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$compress:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput p5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$width:I

    iput p6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$height:I

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bytes:[B

    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$business:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 445
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const/4 v1, 0x0

    .line 447
    .local v1, "multimediaImageService":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 449
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    .line 450
    .local v0, "req":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;
    new-instance v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;-><init>()V

    .line 451
    .local v2, "option":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$compress:I

    if-nez v3, :cond_0

    .line 453
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->LOW:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    goto :goto_0

    .line 454
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 456
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->MIDDLE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    goto :goto_0

    .line 457
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 459
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->HIGH:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    goto :goto_0

    .line 460
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 462
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->ORIGINAL:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    goto :goto_0

    .line 467
    :cond_3
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;->DEFAULT:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;->setQua(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption$QUALITITY;)V

    .line 469
    :goto_0
    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

    .line 470
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;)V

    iput-object v3, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    .line 520
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$width:I

    iput v3, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->width:I

    .line 521
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$height:I

    iput v3, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->height:I

    .line 522
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bytes:[B

    iput-object v3, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->fileData:[B

    .line 523
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$business:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 525
    .end local v0    # "req":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;
    .end local v2    # "option":Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;
    return-void

    .line 526
    :cond_4
    const-string v0, "H5PhotoPlugin"

    const-string/jumbo v2, "multimediaImageService == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

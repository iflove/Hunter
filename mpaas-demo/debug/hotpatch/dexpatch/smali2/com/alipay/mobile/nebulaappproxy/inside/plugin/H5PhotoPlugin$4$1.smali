.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;
.super Ljava/lang/Object;
.source "H5PhotoPlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    .line 470
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressSucc(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 474
    return-void
.end method

.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;Ljava/lang/Exception;)V
    .locals 8
    .param p1, "apImageUploadRsp"    # Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 502
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;->getCode()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;->getMsg()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 506
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    const/4 v1, 0x0

    .line 507
    .local v1, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "H5PhotoPlugin^uploadImageException="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "param4":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "H5PhotoPlugin"

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "param4":Ljava/lang/String;
    .end local v1    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 517
    :cond_1
    return-void
.end method

.method public onProcess(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 0
    .param p1, "apMultimediaTaskModel"    # Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
    .param p2, "i"    # I

    .line 484
    return-void
.end method

.method public onStartUpload(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0
    .param p1, "apMultimediaTaskModel"    # Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 479
    return-void
.end method

.method public onSuccess(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;)V
    .locals 3
    .param p1, "apImageUploadRsp"    # Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 492
    .local v0, "multimediaID":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "multimediaID"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "multimediaID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PhotoPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$4;->val$info:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 497
    :cond_1
    return-void
.end method

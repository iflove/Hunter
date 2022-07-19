.class Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;
.super Ljava/lang/Object;
.source "H5CameraPreviewSizesPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;ILcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->c:Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "success"

    .line 76
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 78
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->a:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 79
    .local v4, "mCamera":Landroid/hardware/Camera;
    move-object v4, v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "previewSizes":Ljava/util/List;
    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 84
    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 86
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "sizeList"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .end local v2    # "previewSizes":Ljava/util/List;
    .end local v4    # "mCamera":Landroid/hardware/Camera;
    return-void

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "H5CameraPreviewPlugin"

    const-string v4, "catch exception "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const-string v3, "exception"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method

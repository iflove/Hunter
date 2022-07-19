.class Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;
.super Ljava/lang/Object;
.source "WebWorkerBridgeExtension.java"

# interfaces
.implements Lcom/alipay/mobile/worker/H5Worker$WorkerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->postMessage(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;

.field final synthetic val$jo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;->this$0:Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;->val$jo:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerReady()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;->this$0:Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;

    # getter for: Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->nxWebWorker:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;->access$000(Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension;)Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaengine/facade/jsapi/WebWorkerBridgeExtension$1;->val$jo:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->sendMessageToWorker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.class Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;
.super Ljava/lang/Object;
.source "MPChooseCityPlugin.java"

# interfaces
.implements Lcom/mpaas/tinyapi/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mpaas/tinyapi/ResponseModel;)V
    .locals 6
    .param p1, "model"    # Lcom/mpaas/tinyapi/ResponseModel;

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;

    const/4 v1, 0x0

    move-object v2, v1

    .line 111
    .local v2, "responseModel":Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;
    move-object v2, v0

    iget-boolean v0, v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;->b:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, v2, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;->a:Lcom/mpaas/tinyapi/city/view/City;

    .line 113
    .local v0, "city":Lcom/mpaas/tinyapi/city/view/City;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 114
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v3

    iget-object v4, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    const-string v5, "city"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v3, v0, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    const-string v4, "adCode"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, v0, Lcom/mpaas/tinyapi/city/view/City;->longitude:Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, v0, Lcom/mpaas/tinyapi/city/view/City;->longitude:Ljava/lang/Double;

    const-string v4, "longitude"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v3, v0, Lcom/mpaas/tinyapi/city/view/City;->latitude:Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, v0, Lcom/mpaas/tinyapi/city/view/City;->latitude:Ljava/lang/Double;

    const-string v4, "latitude"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 123
    .end local v0    # "city":Lcom/mpaas/tinyapi/city/view/City;
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v1, 0xb

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 126
    return-void
.end method

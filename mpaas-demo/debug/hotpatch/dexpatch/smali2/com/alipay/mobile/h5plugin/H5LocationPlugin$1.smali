.class Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;
.super Ljava/lang/Object;
.source "H5LocationPlugin.java"

# interfaces
.implements Lcom/mpaas/tinyapi/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->chooseLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mpaas/tinyapi/ResponseModel;)V
    .locals 6
    .param p1, "model"    # Lcom/mpaas/tinyapi/ResponseModel;

    .line 100
    instance-of v0, p1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    const/4 v1, 0x0

    move-object v2, v1

    .line 104
    .local v2, "data":Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
    move-object v2, v0

    iget-boolean v0, v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->success:Z

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 106
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    iget-object v4, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->poiId:Ljava/lang/String;

    const-string/jumbo v5, "poiId"

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->name:Ljava/lang/String;

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->address:Ljava/lang/String;

    const-string/jumbo v4, "snippet"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->provinceName:Ljava/lang/String;

    const-string/jumbo v4, "provinceName"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->cityName:Ljava/lang/String;

    const-string v4, "cityName"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 112
    .local v1, "latLonPoint":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    iget-wide v4, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "latitude"

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-wide v4, v2, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "longitude"

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "latLonPoint"

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 116
    .end local v1    # "latLonPoint":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v1, 0xb

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 119
    return-void
.end method

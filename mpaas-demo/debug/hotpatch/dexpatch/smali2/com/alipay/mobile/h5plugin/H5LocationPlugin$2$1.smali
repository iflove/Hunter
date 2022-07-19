.class Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;
.super Ljava/lang/Object;
.source "H5LocationPlugin.java"

# interfaces
.implements Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->onLocationChange(Lcom/amap/api/location/AMapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;->this$1:Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;

    iput-object p2, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V
    .locals 0
    .param p1, "poiItem"    # Lcom/amap/api/services/core/PoiItem;
    .param p2, "i"    # I

    .line 189
    return-void
.end method

.method public onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V
    .locals 8
    .param p1, "poiResult"    # Lcom/amap/api/services/poisearch/PoiResult;
    .param p2, "i"    # I

    .line 170
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPois()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 172
    .local v2, "pois":Ljava/util/ArrayList;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 174
    .local v0, "poisArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/services/core/PoiItem;

    .line 175
    .local v4, "poiItem":Lcom/amap/api/services/core/PoiItem;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 176
    .local v1, "p":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v5

    invoke-virtual {v4}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v4}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v5

    const-string v6, "address"

    invoke-virtual {v1, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v1    # "p":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "pois"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v0    # "poisArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "pois":Ljava/util/ArrayList;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;->this$1:Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 184
    return-void
.end method

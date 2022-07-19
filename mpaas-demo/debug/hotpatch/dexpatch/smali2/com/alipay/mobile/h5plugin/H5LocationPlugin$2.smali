.class Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;
.super Ljava/lang/Object;
.source "H5LocationPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->getLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestType:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin;ILandroid/content/Context;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->this$0:Lcom/alipay/mobile/h5plugin/H5LocationPlugin;

    iput p2, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$requestType:I

    iput-object p3, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChange(Lcom/amap/api/location/AMapLocation;)V
    .locals 10
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .line 138
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    .line 139
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 140
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v2, v1

    .line 141
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "latitude"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "accuracy"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$requestType:I

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "countryCode"

    const-string v3, "156"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "province"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v3, "city"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/LocationUtil;->toCityAdCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cityAdcode"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    const-string v3, "district"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "districtAdcode"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$requestType:I

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 155
    .local v1, "streetObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "street"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "streetNumber"

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v1    # "streetObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$requestType:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    .line 160
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v0, v5, v5, v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v1, "query":Lcom/amap/api/services/poisearch/PoiSearch$Query;
    move-object v1, v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    .line 162
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v4, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Lcom/amap/api/services/poisearch/PoiSearch;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 163
    .local v0, "search":Lcom/amap/api/services/poisearch/PoiSearch;
    new-instance v4, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    new-instance v5, Lcom/amap/api/services/core/LatLonPoint;

    .line 164
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    const/16 v6, 0x3e8

    invoke-direct {v4, v5, v6}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;I)V

    .line 166
    .local v4, "bound":Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    invoke-virtual {v0, v4}, Lcom/amap/api/services/poisearch/PoiSearch;->setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    .line 167
    new-instance v5, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;

    invoke-direct {v5, p0, v2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2$1;-><init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/services/poisearch/PoiSearch;->setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V

    .line 191
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->searchPOIAsyn()V

    .line 193
    .end local v0    # "search":Lcom/amap/api/services/poisearch/PoiSearch;
    .end local v1    # "query":Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .end local v4    # "bound":Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$requestType:I

    if-gt v0, v3, :cond_3

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 196
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-void

    .line 197
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 198
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "errorMessage"

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 202
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    return-void
.end method

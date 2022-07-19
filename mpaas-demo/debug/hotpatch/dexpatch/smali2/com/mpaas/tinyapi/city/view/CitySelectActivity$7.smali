.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 365
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->latitude:Ljava/lang/Double;

    .line 372
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->longitude:Ljava/lang/Double;

    .line 373
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;Lcom/mpaas/tinyapi/city/view/City;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    sget v2, Lcom/mpaas/commonbiz/R$string;->location_failure:I

    invoke-virtual {v1, v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->notifyDataSetChanged()V

    .line 378
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->g(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 379
    return-void
.end method

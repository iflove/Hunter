.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;
.super Ljava/lang/Object;
.source "H5ChooseLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 282
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "item":Lcom/amap/api/services/core/PoiItem;
    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v2

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->g(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 289
    :cond_0
    new-instance v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "result":Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
    if-eqz v0, :cond_1

    .line 291
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->success:Z

    .line 292
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->address:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->longitude:D

    .line 294
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->latitude:D

    .line 295
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getPoiId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->poiId:Ljava/lang/String;

    .line 296
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->name:Ljava/lang/String;

    .line 297
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->provinceName:Ljava/lang/String;

    .line 298
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->cityName:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->success:Z

    .line 302
    :goto_0
    invoke-static {}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a()Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 303
    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-virtual {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->finish()V

    .line 304
    return-void
.end method

.class public Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5ChooseLocationActivity.java"

# interfaces
.implements Lcom/alipay/mobile/apmap/AdapterAMap$OnAdapterCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;,
        Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;,
        Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/apmap/AdapterMapView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/alipay/mobile/apmap/model/AdapterMarker;

.field private e:I

.field private f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

.field private g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->e:I

    .line 67
    new-instance v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    invoke-direct {v1, v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;-><init>(B)V

    iput-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 176
    new-instance v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;

    invoke-direct {v0, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->i:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;
    .param p1, "x1"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    .line 53
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 309
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "client":Lcom/amap/api/location/AMapLocationClient;
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v2, 0x0

    .line 311
    .local v2, "option":Lcom/amap/api/location/AMapLocationClientOption;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 313
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 314
    new-instance v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    invoke-direct {v1, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 329
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 330
    return-void
.end method

.method static synthetic b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 11

    .line 334
    :try_start_0
    sget v0, Lcom/mpaas/commonbiz/R$id;->map_container:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    move-object v2, v1

    .line 335
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v0, Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;

    invoke-direct {v0}, Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;-><init>()V

    move-object v3, v1

    .line 337
    .local v3, "locationStyle":Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;->radiusFillColor(I)V

    .line 338
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;->strokeColor(I)V

    .line 339
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->getMap()Lcom/alipay/mobile/apmap/AdapterAMap;

    move-result-object v0

    .line 340
    .local v1, "aMap":Lcom/alipay/mobile/apmap/AdapterAMap;
    move-object v1, v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/apmap/AdapterAMap;->setMyLocationStyle(Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;)V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/apmap/AdapterAMap;->setMyLocationEnabled(Z)V

    .line 342
    invoke-virtual {v1}, Lcom/alipay/mobile/apmap/AdapterAMap;->getUiSettings()Lcom/alipay/mobile/apmap/AdapterUiSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/apmap/AdapterUiSettings;->setZoomControlsEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D

    move-result-wide v4

    .line 344
    .local v4, "latitude":D
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D

    move-result-wide v6

    .line 345
    .local v6, "longitude":D
    new-instance v0, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;

    new-instance v8, Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/alipay/mobile/apmap/model/AdapterLatLng;-><init>(DD)V

    const/high16 v9, 0x41880000    # 17.0f

    const/4 v10, 0x0

    invoke-direct {v0, v8, v9, v10, v10}, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;-><init>(Lcom/alipay/mobile/apmap/model/AdapterLatLng;FFF)V

    .line 346
    .local v0, "position":Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;
    invoke-static {v0}, Lcom/alipay/mobile/apmap/AdapterCameraUpdateFactory;->newCameraPosition(Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;)Lcom/alipay/mobile/apmap/AdapterCameraUpdate;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/apmap/AdapterAMap;->moveCamera(Lcom/alipay/mobile/apmap/AdapterCameraUpdate;)V

    .line 347
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/apmap/AdapterAMap;->setOnCameraChangeListener(Lcom/alipay/mobile/apmap/AdapterAMap$OnAdapterCameraChangeListener;)V

    .line 348
    new-instance v8, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    invoke-direct {v8}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;-><init>()V

    new-instance v9, Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/alipay/mobile/apmap/model/AdapterLatLng;-><init>(DD)V

    .line 349
    invoke-virtual {v8, v9}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->position(Lcom/alipay/mobile/apmap/model/AdapterLatLng;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v8

    sget v9, Lcom/mpaas/commonbiz/R$drawable;->marker:I

    .line 350
    invoke-static {v9}, Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptorFactory;->fromResource(I)Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->icon(Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptor;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v8

    .line 351
    .local v8, "options":Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;
    invoke-virtual {v1, v8}, Lcom/alipay/mobile/apmap/AdapterAMap;->addMarker(Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;)Lcom/alipay/mobile/apmap/model/AdapterMarker;

    move-result-object v9

    iput-object v9, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->d:Lcom/alipay/mobile/apmap/model/AdapterMarker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v0    # "position":Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;
    .end local v1    # "aMap":Lcom/alipay/mobile/apmap/AdapterAMap;
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "locationStyle":Lcom/alipay/mobile/apmap/model/AdapterMyLocationStyle;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .end local v8    # "options":Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;
    return-void

    .line 352
    :catchall_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5ChooseLocation"

    const-string v2, "open H5MapActivity fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/alipay/mobile/apmap/model/AdapterMarker;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->d:Lcom/alipay/mobile/apmap/model/AdapterMarker;

    return-object v0
.end method

.method static synthetic f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    return-object v0
.end method

.method static synthetic g(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 53
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 359
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 360
    new-instance v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 361
    .local v1, "result":Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->success:Z

    .line 362
    invoke-static {}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a()Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 363
    return-void
.end method

.method public onCameraChange(Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;)V
    .locals 0
    .param p1, "cameraPosition"    # Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;

    .line 76
    return-void
.end method

.method public onCameraChangeFinish(Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;)V
    .locals 4
    .param p1, "cameraPosition"    # Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;

    .line 80
    iget v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 81
    add-int/2addr v0, v1

    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->e:I

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCameraChangeFinish "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;->target:Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5ChooseLocation"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->d:Lcom/alipay/mobile/apmap/model/AdapterMarker;

    iget-object v2, p1, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;->target:Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/apmap/model/AdapterMarker;->setPosition(Lcom/alipay/mobile/apmap/model/AdapterLatLng;)V

    .line 85
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    iget-object v2, p1, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;->target:Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-virtual {v2}, Lcom/alipay/mobile/apmap/model/AdapterLatLng;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D

    .line 86
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    iget-object v2, p1, Lcom/alipay/mobile/apmap/model/AdapterCameraPosition;->target:Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    invoke-virtual {v2}, Lcom/alipay/mobile/apmap/model/AdapterLatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D

    .line 87
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)V

    .line 88
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->cancel(Z)Z

    .line 92
    :cond_1
    new-instance v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    .line 93
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 98
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 218
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    sget v0, Lcom/mpaas/commonbiz/R$layout;->activity_chooselocation:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->setContentView(I)V

    .line 221
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 222
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v0

    const-string v3, "H5ChooseLocation"

    if-nez v0, :cond_0

    .line 223
    const-string v0, "intent is null, will finish this activity."

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->finish()V

    .line 225
    return-void

    .line 228
    :cond_0
    const-string v0, "serviceId"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->h:Ljava/lang/String;

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "service id is null, will finish this activity."

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->finish()V

    .line 232
    return-void

    .line 235
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/mpaas/commonbiz/R$layout;->item_footer:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c:Landroid/view/View;

    .line 236
    sget v0, Lcom/mpaas/commonbiz/R$id;->pois:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    .line 237
    iget-object v3, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 239
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    new-instance v3, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$2;

    invoke-direct {v3, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$2;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 252
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b:Landroid/widget/ListView;

    new-instance v3, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;

    invoke-direct {v3, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 273
    new-instance v0, Lcom/alipay/mobile/apmap/AdapterMapView;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/apmap/AdapterMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    .line 274
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/apmap/AdapterMapView;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-static {p0}, Lcom/alipay/mobile/h5plugin/LocationUtil;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/h5plugin/LocationUtil;->requestPermissions(Landroid/app/Activity;)V

    .line 280
    :goto_0
    sget v0, Lcom/mpaas/commonbiz/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTitleBar;

    .line 281
    .local v1, "titleBar":Lcom/alipay/mobile/antui/basic/AUTitleBar;
    move-object v1, v0

    const-string v3, "\u9009\u62e9"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonText(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getRightButton()Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    move-result-object v0

    new-instance v3, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;

    invoke-direct {v3, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$4;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 383
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->g:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    if-eqz v0, :cond_0

    .line 385
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->cancel(Z)Z

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onDestroy()V

    .line 390
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 375
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    .line 376
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onPause()V

    .line 379
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 402
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 403
    if-nez p1, :cond_1

    .line 404
    invoke-static {p0}, Lcom/alipay/mobile/h5plugin/LocationUtil;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a()V

    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 408
    .local v1, "result":Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->success:Z

    .line 409
    invoke-static {}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a()Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 410
    sget v0, Lcom/mpaas/commonbiz/R$string;->location_perm_required:I

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->finish()V

    .line 414
    .end local v1    # "result":Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 367
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 368
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onResume()V

    .line 371
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 394
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 395
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/apmap/AdapterMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 398
    :cond_0
    return-void
.end method

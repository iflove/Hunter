.class public Lcom/alipay/mobile/h5plugin/H5MapActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "H5MapActivity.java"


# static fields
.field private static final AMAP_PACKAGE:Ljava/lang/String; = "com.autonavi.minimap"

.field private static final BMAP_PACKAGE:Ljava/lang/String; = "com.baidu.BaiduMap"

.field public static final TAG:Ljava/lang/String; = "H5MapActivity"


# instance fields
.field private address:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private mapView:Lcom/alipay/mobile/apmap/AdapterMapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5plugin/H5MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->displayOptionsMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/h5plugin/H5MapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;

    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->longitude:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;

    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->latitude:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;DD)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchAmap(Ljava/lang/String;DD)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;DD)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchBaidu(Ljava/lang/String;DD)V

    return-void
.end method

.method private displayOptionsMenu()V
    .locals 5

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "list":Ljava/util/List;
    new-instance v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 160
    .local v3, "amap":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    move-object v3, v1

    sget v4, Lcom/mpaas/commonbiz/R$string;->amap:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 161
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>()V

    .line 164
    .local v2, "baidu":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    move-object v2, v1

    sget v4, Lcom/mpaas/commonbiz/R$string;->baidu_map:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    new-instance v4, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;-><init>(Lcom/alipay/mobile/h5plugin/H5MapActivity;)V

    invoke-direct {v1, p0, v0, v4}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->show()V

    .line 186
    return-void
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v0, 0x1

    return v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    return v0
.end method

.method private launchAmap(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v0, "com.autonavi.minimap"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "amapuri://route/plan/?dname=%s&did=&dlat=%f&dlon=%f&dname=B&dev=0&t=0"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method private launchBaidu(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "baidumap://map/direction?destination=name:%s|latlng:%f,%f&coord_type=gcj02&src=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 201
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method private launchUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/mpaas/commonbiz/R$layout;->activity_h5map:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/mpaas/commonbiz/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 52
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    const-string v4, "H5MapActivity"

    if-nez v1, :cond_0

    .line 53
    const-string v1, "intent == null"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 58
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/apmap/AdapterMapView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/apmap/AdapterMapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    .line 59
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/apmap/AdapterMapView;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const-string v1, "longitude"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->longitude:D

    .line 62
    const-string v1, "latitude"

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->latitude:D

    .line 63
    const-string/jumbo v1, "scale"

    const-wide/high16 v5, 0x4031000000000000L    # 17.0

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 64
    .local v1, "scale":I
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "name":Ljava/lang/String;
    const-string v6, "address"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->address:Ljava/lang/String;

    .line 66
    const-string v6, "hidden"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "hidden":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    invoke-virtual {v7}, Lcom/alipay/mobile/apmap/AdapterMapView;->getMap()Lcom/alipay/mobile/apmap/AdapterAMap;

    move-result-object v7

    .line 68
    .local v7, "aMap":Lcom/alipay/mobile/apmap/AdapterAMap;
    new-instance v8, Lcom/alipay/mobile/apmap/model/AdapterLatLng;

    iget-wide v9, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->latitude:D

    iget-wide v11, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->longitude:D

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/alipay/mobile/apmap/model/AdapterLatLng;-><init>(DD)V

    .line 69
    .local v2, "latLng":Lcom/alipay/mobile/apmap/model/AdapterLatLng;
    move-object v2, v8

    int-to-float v9, v1

    invoke-static {v8, v9}, Lcom/alipay/mobile/apmap/AdapterCameraUpdateFactory;->newLatLngZoom(Lcom/alipay/mobile/apmap/model/AdapterLatLng;F)Lcom/alipay/mobile/apmap/AdapterCameraUpdate;

    move-result-object v8

    .line 70
    .local v8, "cameraUpdate":Lcom/alipay/mobile/apmap/AdapterCameraUpdate;
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/apmap/AdapterAMap;->animateCamera(Lcom/alipay/mobile/apmap/AdapterCameraUpdate;)V

    .line 71
    new-instance v9, Lcom/alipay/mobile/h5plugin/H5MapActivity$1;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity$1;-><init>(Lcom/alipay/mobile/h5plugin/H5MapActivity;)V

    invoke-virtual {v7, v9}, Lcom/alipay/mobile/apmap/AdapterAMap;->setInfoWindowAdapter(Lcom/alipay/mobile/apmap/AdapterAMap$AdapterInfoWindowAdapter;)V

    .line 95
    new-instance v9, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    invoke-direct {v9}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;-><init>()V

    .line 96
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->position(Lcom/alipay/mobile/apmap/model/AdapterLatLng;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v9

    .line 97
    invoke-virtual {v9, v5}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->title(Ljava/lang/String;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v9

    sget v10, Lcom/mpaas/commonbiz/R$drawable;->marker:I

    .line 98
    invoke-static {v10}, Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptorFactory;->fromResource(I)Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->icon(Lcom/alipay/mobile/apmap/model/AdapterBitmapDescriptor;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->address:Ljava/lang/String;

    .line 99
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;->snippet(Ljava/lang/String;)Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;

    move-result-object v9

    .line 100
    .local v9, "options":Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;
    invoke-virtual {v7, v9}, Lcom/alipay/mobile/apmap/AdapterAMap;->addMarker(Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;)Lcom/alipay/mobile/apmap/model/AdapterMarker;

    move-result-object v10

    .line 101
    .local v10, "marker":Lcom/alipay/mobile/apmap/model/AdapterMarker;
    const-string v11, "1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 102
    invoke-virtual {v10}, Lcom/alipay/mobile/apmap/model/AdapterMarker;->hideInfoWindow()V

    return-void

    .line 104
    :cond_1
    invoke-virtual {v10}, Lcom/alipay/mobile/apmap/model/AdapterMarker;->showInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v1    # "scale":I
    .end local v2    # "latLng":Lcom/alipay/mobile/apmap/model/AdapterLatLng;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "hidden":Ljava/lang/String;
    .end local v7    # "aMap":Lcom/alipay/mobile/apmap/AdapterAMap;
    .end local v8    # "cameraUpdate":Lcom/alipay/mobile/apmap/AdapterCameraUpdate;
    .end local v9    # "options":Lcom/alipay/mobile/apmap/model/AdapterMarkerOptions;
    .end local v10    # "marker":Lcom/alipay/mobile/apmap/model/AdapterMarker;
    return-void

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "open H5MapActivity fail"

    invoke-static {v4, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onDestroy()V

    .line 117
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onPause()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/alipay/mobile/apmap/AdapterMapView;->onResume()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity;->mapView:Lcom/alipay/mobile/apmap/AdapterMapView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/apmap/AdapterMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    :cond_0
    return-void
.end method

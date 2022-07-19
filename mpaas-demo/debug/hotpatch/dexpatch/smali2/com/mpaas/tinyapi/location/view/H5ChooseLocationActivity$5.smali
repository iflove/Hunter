.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;
.super Ljava/lang/Object;
.source "H5ChooseLocationActivity.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a()V
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

    .line 314
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .line 317
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D

    .line 318
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D

    .line 319
    new-instance v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;

    invoke-direct {v0, p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

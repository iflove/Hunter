.class Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;
.super Ljava/lang/Object;
.source "LocationWrapper.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mpaasadapter/LocationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;->a:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;->a:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a(Lcom/alipay/mobile/mpaasadapter/LocationWrapper;)Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;->a:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a(Lcom/alipay/mobile/mpaasadapter/LocationWrapper;)Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;->onLocationChange(Lcom/amap/api/location/AMapLocation;)V

    .line 61
    :cond_0
    return-void
.end method

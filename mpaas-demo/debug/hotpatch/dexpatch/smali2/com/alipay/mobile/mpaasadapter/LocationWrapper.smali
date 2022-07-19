.class public Lcom/alipay/mobile/mpaasadapter/LocationWrapper;
.super Ljava/lang/Object;
.source "LocationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/location/AMapLocationClient;

.field private b:I

.field private c:Z

.field private d:Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mpaasadapter/LocationWrapper;)Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->d:Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;

    return-object v0
.end method


# virtual methods
.method public setHighAccuracy(Z)V
    .locals 0
    .param p1, "isHighAccuracy"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->c:Z

    .line 36
    return-void
.end method

.method public setLocationChangeListener(Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->d:Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;

    .line 40
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .param p1, "requestType"    # I

    .line 31
    iput p1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->b:I

    .line 32
    return-void
.end method

.method public startLocation()V
    .locals 7

    .line 43
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 45
    .local v0, "option":Lcom/amap/api/location/AMapLocationClientOption;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-class v3, Lcom/amap/api/location/AMapLocationClientOption;

    const-string/jumbo v4, "setLocationCacheEnable"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v3

    .line 50
    :goto_0
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 51
    iget v3, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->b:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 52
    iget-boolean v1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->c:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v2, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper$1;-><init>(Lcom/alipay/mobile/mpaasadapter/LocationWrapper;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 64
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->a:Lcom/amap/api/location/AMapLocationClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 71
    :cond_0
    return-void
.end method

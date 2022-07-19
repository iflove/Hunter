.class public Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PermissionPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PermissionPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 38
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "reqPermissionsPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 42
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 43
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    .line 44
    const-string v4, "authorizedStatus"

    const-string v5, "H5PermissionPlugin"

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "get CAMERA permission PERMISSION_GRANTED!"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "Authorized"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    const-string v3, "get CAMERA permission PERMISSION_DENIED!"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "NotDetermined"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_0
    invoke-interface {p0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->GET_CAMERA_AUTHORIZED_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 33
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 24
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->GET_CAMERA_AUTHORIZED_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 25
    return-void
.end method

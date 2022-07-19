.class Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
.super Ljava/lang/Object;
.source "H5ApiBizPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultObject"
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/h5container/api/H5Event;

.field b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 899
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->c:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 901
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 902
    return-void
.end method

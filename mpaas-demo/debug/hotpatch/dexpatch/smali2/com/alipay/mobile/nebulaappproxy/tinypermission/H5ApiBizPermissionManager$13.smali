.class Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;
.super Ljava/lang/Object;
.source "H5ApiBizPermissionManager.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->checkWebARCameraPermission(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 972
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->c:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->a:Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->a:Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;->deny()V

    .line 977
    const-string v0, "H5ApiBizPermissionManager"

    const-string v1, "checkWebARCameraPermission...cancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->c:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;->b:Ljava/lang/String;

    const-string/jumbo v2, "scan"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 979
    return-void
.end method

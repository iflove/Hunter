.class Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$11;
.super Ljava/lang/Object;
.source "H5ApiBizPermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method public run()V
    .locals 4

    .line 864
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a()I

    move-result v0

    .line 866
    .local v0, "count":I
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putInt(Ljava/lang/String;IZ)V

    .line 869
    return-void
.end method

.class Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;
.super Ljava/lang/Object;
.source "H5ApiBizPermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 806
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->e:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 809
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "keyGen":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 811
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changePermissionState,key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",opened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ApiBizPermissionManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;->b:Ljava/lang/String;

    invoke-static {v2, v4, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToLiteProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    :cond_1
    return-void

    .line 820
    :catchall_0
    move-exception v2

    .line 821
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "changePermissionState...e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void
.end method

.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5ProcessTransActivity.java"


# static fields
.field private static a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    return-void
.end method

.method public static setH5Bridge(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 61
    sput-object p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 62
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->setRequestedOrientation(I)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 38
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "H5ProcessTransActivity"

    if-nez v0, :cond_0

    .line 39
    const-string v0, "bundle==null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->finish()V

    .line 41
    return-void

    .line 44
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->bundleToH5Event(Landroid/os/Bundle;)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    .line 46
    .local v0, "h5Event":Lcom/alipay/mobile/h5container/api/H5Event;
    const-class v4, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 47
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v4

    if-eqz v4, :cond_2

    .line 48
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    instance-of v5, v4, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;

    if-eqz v5, :cond_1

    .line 49
    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->setMainTransActivity(Landroid/app/Activity;)V

    .line 51
    :cond_1
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-virtual {v1, v0, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 55
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onCreate "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 28
    const-string v0, "H5ProcessTransActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

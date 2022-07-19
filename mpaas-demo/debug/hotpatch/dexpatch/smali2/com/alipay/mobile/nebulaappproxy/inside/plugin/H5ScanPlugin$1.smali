.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;
.super Ljava/lang/Object;
.source "H5ScanPlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/scancode/export/ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->scan(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;

.field final synthetic val$actionType:Ljava/lang/String;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$actionType:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ZLandroid/content/Intent;)V
    .locals 8
    .param p1, "isSuccess"    # Z
    .param p2, "result"    # Landroid/content/Intent;

    .line 83
    const-string v0, "error"

    if-nez p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v2, "10"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 86
    return-void

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v2, "11"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 91
    return-void

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 95
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 96
    return-void

    .line 99
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "barcode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 101
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v3

    const-string/jumbo v4, "qrCode"

    const-string v5, "barCode"

    const-string v6, "H5ScanPlugin"

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 102
    const-string/jumbo v3, "return result new way"

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "etaoResultType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "scanType":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$actionType:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->checkAndLaunchUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v6, "QR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v5, v4, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    .line 108
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "scanType":Ljava/lang/String;
    return-void

    .line 111
    :cond_4
    const-string/jumbo v3, "return result old way"

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$actionType:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->checkAndLaunchUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v6, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$type:Ljava/lang/String;

    const-string v6, "bar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v3, v5, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    .line 115
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$type:Ljava/lang/String;

    const-string/jumbo v5, "qr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 116
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 119
    :cond_6
    return-void
.end method

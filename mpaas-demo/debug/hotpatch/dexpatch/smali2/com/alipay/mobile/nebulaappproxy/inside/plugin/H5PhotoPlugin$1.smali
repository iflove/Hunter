.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;
.super Ljava/lang/Object;
.source "H5PhotoPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/service/PhotoSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->photo(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSelected(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 150
    .local v0, "photoInfo":Lcom/alipay/mobile/beehive/service/PhotoInfo;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->onPhotoReady(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 152
    .end local v0    # "photoInfo":Lcom/alipay/mobile/beehive/service/PhotoInfo;
    :cond_0
    return-void
.end method

.method public onSelectCanceled()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v1, "error"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;
.super Ljava/lang/Object;
.source "H5PhotoPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/service/PhotoEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->onPhotoReady(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$scene:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$scene:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditCanceled(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 3
    .param p1, "photoInfo"    # Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_0

    .line 193
    const-string v1, "error"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public onPhotoEdited(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "photoInfo"    # Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 183
    const-string/jumbo v0, "savePath"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    .local v1, "imageUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$2;->val$scene:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->processImgUrl(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 188
    return-void
.end method

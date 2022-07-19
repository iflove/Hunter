.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "TinyAppSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    .line 460
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "multimediaID":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 465
    const-string/jumbo v1, "multimediaID"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "iconUrl"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2$1;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$2;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

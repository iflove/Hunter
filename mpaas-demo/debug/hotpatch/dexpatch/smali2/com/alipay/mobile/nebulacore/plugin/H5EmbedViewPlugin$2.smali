.class Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;
.super Ljava/lang/Object;
.source "H5EmbedViewPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic f:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic h:Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->h:Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->e:Lcom/alibaba/fastjson/JSONObject;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->f:Lcom/alibaba/fastjson/JSONObject;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->h:Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;)Z

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    .local v1, "newEmbedViewParent":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "H5EmbedViewPlugin"

    const-string v2, "renderNewEmbedView directly"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->h:Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v5, v1

    check-cast v5, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->e:Lcom/alibaba/fastjson/JSONObject;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->f:Lcom/alibaba/fastjson/JSONObject;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static/range {v3 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 232
    :cond_0
    return-void
.end method

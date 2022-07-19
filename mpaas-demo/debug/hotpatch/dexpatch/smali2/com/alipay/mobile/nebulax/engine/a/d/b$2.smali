.class Lcom/alipay/mobile/nebulax/engine/a/d/b$2;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Ljava/lang/String;)V
    .locals 0

    .line 1839
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1842
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1843
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1844
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->a:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/engine/a/d/d;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulacore/api/PageStatus;->LOADING:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 1847
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v2, "invoke point PageStartedPoint"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-class v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;

    .line 1850
    if-eqz v1, :cond_0

    .line 1851
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageStartedPoint;->onStarted(Ljava/lang/String;)V

    .line 1853
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const-string v2, "h5PageStarted"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1855
    :cond_1
    return-void
.end method

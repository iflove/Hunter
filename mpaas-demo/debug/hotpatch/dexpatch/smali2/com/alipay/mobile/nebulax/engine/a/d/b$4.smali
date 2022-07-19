.class Lcom/alipay/mobile/nebulax/engine/a/d/b$4;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;

.field final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 2148
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->a:Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2151
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->g(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/engine/a/d/d;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 2153
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->h(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->a:Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageFinishedPoint;->onPageFinish(Lcom/alipay/mobile/nebulax/engine/api/extensions/page/model/PageFinishedContext;)V

    .line 2154
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$4;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "h5PageFinished"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2156
    :cond_0
    return-void
.end method

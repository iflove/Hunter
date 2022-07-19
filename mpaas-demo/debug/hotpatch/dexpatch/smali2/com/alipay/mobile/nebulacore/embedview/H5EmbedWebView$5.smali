.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$5;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 462
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$5;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 471
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$5;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Z

    move-result v1

    return v1

    .line 475
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 465
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 466
    const-string v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 467
    return-void
.end method

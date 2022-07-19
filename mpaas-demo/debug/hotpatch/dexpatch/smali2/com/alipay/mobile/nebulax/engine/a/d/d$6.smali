.class Lcom/alipay/mobile/nebulax/engine/a/d/d$6;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 699
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLongClick"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object p1

    .line 702
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 703
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 705
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 707
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 708
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imgUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 711
    const-string v2, "imgUrl"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 713
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->c(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    const-string v2, "h5PageLongClick"

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    .line 714
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->generateLegacyNativeId()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object p1

    .line 715
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/a/d/d;->e:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    nop

    .line 721
    goto :goto_1

    .line 717
    :cond_2
    return v1

    .line 719
    :catch_0
    move-exception p1

    .line 720
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$6;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getExtras Exception"

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 722
    :goto_1
    return v0

    .line 724
    :cond_3
    return v1
.end method

.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;
.super Ljava/lang/Object;
.source "TinyAppSharePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    .line 585
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 588
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    .line 594
    .local v0, "binaryData":[B
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "imageData"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    nop

    .end local v0    # "binaryData":[B
    return-void

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "read image error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 600
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 589
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->n:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->c:Lcom/alipay/mobile/h5container/service/H5Service;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1$5;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;->k:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 590
    return-void
.end method

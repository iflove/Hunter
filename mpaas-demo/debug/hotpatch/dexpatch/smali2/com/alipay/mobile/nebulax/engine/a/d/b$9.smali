.class Lcom/alipay/mobile/nebulax/engine/a/d/b$9;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1295
    const-string v0, "isDSLError"

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check dsl result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 1298
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    .line 1299
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1300
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1301
    const-string v0, "errorType"

    const-string v1, "errorRender"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string v0, "errorCode"

    const v1, -0x927c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send page abnormal event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string v1, "h5PageAbnormal"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    :catch_0
    move-exception p1

    .line 1310
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1311
    :cond_0
    :goto_0
    nop

    .line 1312
    :goto_1
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1292
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/b$9;->a(Ljava/lang/String;)V

    return-void
.end method

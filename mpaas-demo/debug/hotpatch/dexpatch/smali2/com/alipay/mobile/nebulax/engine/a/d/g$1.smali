.class Lcom/alipay/mobile/nebulax/engine/a/d/g$1;
.super Ljava/lang/Object;
.source "WebExitPerform.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
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
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/g;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/g;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 83
    const-string v0, "isDSLError"

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/a/d/g;Z)Z

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check dsl result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 87
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    .line 88
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p1

    const-string v0, "dslErrorLog"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    nop

    .line 94
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 95
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;->a(Ljava/lang/String;)V

    return-void
.end method

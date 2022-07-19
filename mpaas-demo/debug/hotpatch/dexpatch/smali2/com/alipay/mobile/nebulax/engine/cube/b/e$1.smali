.class Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;
.super Ljava/lang/Object;
.source "NXICKJsApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/b/e;->callJsApi(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/cube/b/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/b/e;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->d:Lcom/alipay/mobile/nebulax/engine/cube/b/e;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 33
    const-string v0, "NebulaXEngine.NXICKJsApiHandler"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call js api async on engine thread , action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;

    invoke-interface {v2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;

    invoke-interface {v2}, Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;->getJsParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a()Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/e$1;->a:Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    const-string v2, "callJsApi exception on thread"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    return-void
.end method

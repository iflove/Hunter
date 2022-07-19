.class Lcom/alipay/mobile/nebulax/engine/a/c/c$1;
.super Ljava/lang/Object;
.source "WebWorkerController.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/c/c;->handleMsgFromWorker(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/c/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/c/c;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveJsapiResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .line 140
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;->a:Ljava/lang/String;

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "responseData"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/c;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/a/c/c;->b:Lcom/alipay/mobile/worker/H5Worker;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/alipay/mobile/worker/H5Worker;->sendMessageToWorker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

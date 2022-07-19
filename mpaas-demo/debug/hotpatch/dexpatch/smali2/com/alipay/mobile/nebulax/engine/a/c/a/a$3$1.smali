.class Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;
.super Ljava/lang/Object;
.source "DefaultWorkerProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;J)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;

    iput-wide p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveJsapiResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;->onReceiveJsapiResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMsgFromJs onReceiveJsapiResult "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->b:Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$3$1;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NebulaXEngine.BaseWorkerProxy"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

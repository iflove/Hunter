.class public abstract Lcom/alipay/mobile/nebulax/engine/a/c/b/a;
.super Ljava/lang/Object;
.source "BaseWorkerProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkerId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkerProcessor()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->a:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->a:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    .line 18
    return-void
.end method

.method public release()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->a:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->release()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->a:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    .line 41
    :cond_0
    return-void
.end method

.method public setWorkerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->b:Ljava/lang/String;

    return-object p1
.end method

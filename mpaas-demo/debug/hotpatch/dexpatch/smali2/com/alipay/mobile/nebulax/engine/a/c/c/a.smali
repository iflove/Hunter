.class public Lcom/alipay/mobile/nebulax/engine/a/c/c/a;
.super Lcom/alipay/mobile/worker/WebWorker;
.source "NXWebWorker.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/a/c/c;

.field private b:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/worker/WebWorker;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V
    .locals 1

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->b:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->a:Lcom/alipay/mobile/nebulax/engine/a/c/c;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 33
    :cond_0
    return-void
.end method

.method public generateH5WorkerControllerProvider()Lcom/alipay/mobile/worker/H5WorkerControllerProvider;
    .locals 2

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/c/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/a/c/c;-><init>(Lcom/alipay/mobile/worker/H5Worker;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->a:Lcom/alipay/mobile/nebulax/engine/a/c/c;

    .line 22
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->b:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->a:Lcom/alipay/mobile/nebulax/engine/a/c/c;

    return-object v0
.end method

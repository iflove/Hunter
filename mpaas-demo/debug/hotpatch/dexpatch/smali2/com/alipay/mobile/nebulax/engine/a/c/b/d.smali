.class public Lcom/alipay/mobile/nebulax/engine/a/c/b/d;
.super Lcom/alipay/mobile/nebulax/engine/a/c/b/a;
.source "WebWorkerProxy.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/c/c/a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/d;->a:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    .line 16
    return-void
.end method


# virtual methods
.method public init(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/b/a;->init(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b/d;->a:Lcom/alipay/mobile/nebulax/engine/a/c/c/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/c/a;->a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 22
    return-void
.end method

.class Lcom/alipay/mobile/nebulax/engine/cube/a$1;
.super Ljava/lang/Object;
.source "CubeEngineProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a;->setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupFail(Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;Z)Z

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFail(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onSetupFinish()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    .line 109
    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->showLoading()V

    .line 101
    :cond_0
    return-void
.end method

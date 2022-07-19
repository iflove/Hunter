.class public Lcom/alipay/mobile/nebulaengine/facade/NXEngineFactory;
.super Ljava/lang/Object;
.source "NXEngineFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 1

    .line 26
    nop

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->WEB:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    if-ne p3, v0, :cond_0

    .line 28
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/a/a;

    invoke-direct {p3, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/a/a;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->CUBE:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    if-ne p3, v0, :cond_1

    .line 31
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-direct {p3, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V

    goto :goto_0

    .line 30
    :cond_1
    const/4 p3, 0x0

    .line 34
    :goto_0
    return-object p3
.end method

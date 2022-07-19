.class public Lcom/alipay/mobile/nebulax/engine/cube/f/a;
.super Lcom/alipay/mobile/nebulax/engine/common/c/b;
.source "CubeBackPerform.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/NXView;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/c/b;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 16
    return-void
.end method


# virtual methods
.method public b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;->afterProcess(Z)V

    .line 25
    :cond_0
    return-void
.end method

.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/extensions/bridge/BridgePoint;
.super Ljava/lang/Object;
.source "BridgePoint.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# virtual methods
.method public abstract execute(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->URGENT:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation
.end method

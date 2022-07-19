.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorPoint;
.super Ljava/lang/Object;
.source "EngineErrorPoint.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# virtual methods
.method public abstract onError(Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;)V
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation
.end method

.class public interface abstract annotation Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;
.super Ljava/lang/Object;
.source "BindingNode.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/Bindable;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;"
        }
    .end annotation
.end method

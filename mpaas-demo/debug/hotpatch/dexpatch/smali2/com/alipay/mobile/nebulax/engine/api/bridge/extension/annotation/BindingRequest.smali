.class public interface abstract annotation Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;
.super Ljava/lang/Object;
.source "BindingRequest.java"

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

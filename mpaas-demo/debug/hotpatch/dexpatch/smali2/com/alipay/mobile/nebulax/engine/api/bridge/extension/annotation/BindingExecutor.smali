.class public interface abstract annotation Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;
.super Ljava/lang/Object;
.source "BindingExecutor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/Bindable;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end subannotation
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
.method public abstract value()Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
.end method

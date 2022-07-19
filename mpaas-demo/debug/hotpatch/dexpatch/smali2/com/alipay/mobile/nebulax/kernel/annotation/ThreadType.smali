.class public interface abstract annotation Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
.super Ljava/lang/Object;
.source "ThreadType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
.end method

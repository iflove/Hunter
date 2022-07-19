.class public interface abstract annotation Lcom/mpaas/mobile/metainfo/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract interfaceClazz()Ljava/lang/Class;
.end method

.method public abstract isLazy()Z
.end method

.class public interface abstract annotation Lcom/mpaas/mobile/metainfo/NebulaPlugin;
.super Ljava/lang/Object;
.source "NebulaPlugin.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mpaas/mobile/metainfo/NebulaPlugin;
        bundleName = "android-phone-mobilesdk-quinox"
        isLazy = true
        scope = .enum Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->EMPTY:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract bundleName()Ljava/lang/String;
.end method

.method public abstract events()[Ljava/lang/String;
.end method

.method public abstract isLazy()Z
.end method

.method public abstract scope()Lcom/mpaas/mobile/metainfo/NebulaPluginScope;
.end method

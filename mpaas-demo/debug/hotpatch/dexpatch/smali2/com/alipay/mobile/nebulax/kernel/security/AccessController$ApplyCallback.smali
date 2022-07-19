.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;
.super Ljava/lang/Object;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/security/AccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplyCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess()V
.end method

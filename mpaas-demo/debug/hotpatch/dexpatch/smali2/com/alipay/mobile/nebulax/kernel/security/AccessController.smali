.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/security/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;
    }
.end annotation


# virtual methods
.method public abstract check(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Guard;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V
.end method

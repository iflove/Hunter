.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;
.super Ljava/lang/Object;
.source "AccessControlManagement.java"


# virtual methods
.method public abstract customPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Z
.end method

.method public abstract manageAccessorGroup(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Lcom/alipay/mobile/nebulax/kernel/security/Group;
.end method

.method public abstract manageAccessorPermissions(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract needPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Guard;",
            ">;)Z"
        }
    .end annotation
.end method

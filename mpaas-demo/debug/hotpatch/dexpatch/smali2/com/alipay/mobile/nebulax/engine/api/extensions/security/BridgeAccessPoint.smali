.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;
.super Ljava/lang/Object;
.source "BridgeAccessPoint.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# virtual methods
.method public abstract checkPermission(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z
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

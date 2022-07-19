.class public Lcom/alipay/mobile/nebulacore/core/extension/BridgeAccessExtension;
.super Ljava/lang/Object;
.source "BridgeAccessExtension.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermission(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z
    .locals 1
    .param p1, "permission"    # Lcom/alipay/mobile/nebulax/kernel/security/Permission;
    .param p2, "accessor"    # Lcom/alipay/mobile/nebulax/kernel/security/Accessor;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
    .param p4, "bridgeResponseHelper"    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public manageAccessorGroup(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Lcom/alipay/mobile/nebulax/kernel/security/Group;
    .locals 1
    .param p1, "accessor"    # Lcom/alipay/mobile/nebulax/kernel/security/Accessor;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public manageAccessorPermissions(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Ljava/util/List;
    .locals 1
    .param p1, "accessor"    # Lcom/alipay/mobile/nebulax/kernel/security/Accessor;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public needPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;)Z
    .locals 1
    .param p1, "accessor"    # Lcom/alipay/mobile/nebulax/kernel/security/Accessor;
    .param p2, "list"    # Ljava/util/List;
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

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public onFinalized()V
    .locals 0

    .line 42
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 37
    return-void
.end method

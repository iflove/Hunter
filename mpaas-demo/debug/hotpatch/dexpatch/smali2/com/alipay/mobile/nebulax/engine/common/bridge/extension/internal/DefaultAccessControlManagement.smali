.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;
.super Ljava/lang/Object;
.source "DefaultAccessControlManagement.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

.field private b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

.field private c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "NebulaXEngine.Permission"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 35
    const-class p2, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p2

    .line 36
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->extensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    .line 37
    return-void
.end method


# virtual methods
.method public customPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->b:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;->checkPermission(Lcom/alipay/mobile/nebulax/kernel/security/Permission;Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z

    move-result p1

    return p1
.end method

.method public manageAccessorGroup(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Lcom/alipay/mobile/nebulax/kernel/security/Group;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;->manageAccessorGroup(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Lcom/alipay/mobile/nebulax/kernel/security/Group;

    move-result-object p1

    return-object p1
.end method

.method public manageAccessorPermissions(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Ljava/util/List;
    .locals 1
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

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;->manageAccessorPermissions(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public needPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;)Z
    .locals 1
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

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;->c:Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/security/BridgeAccessPoint;->needPermissionCheck(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

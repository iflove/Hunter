.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# virtual methods
.method public abstract enterNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end method

.method public abstract exitNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end method

.method public abstract findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;
.end method

.method public abstract getAccessController()Lcom/alipay/mobile/nebulax/kernel/security/AccessController;
.end method

.method public abstract getBridgeExtensionByAction(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
.end method

.method public abstract getBridgeExtensionByAction(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
.end method

.method public abstract getExtensionByName(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
.end method

.method public abstract getExtensionByPoint(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensionByPoint(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemoteController()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;
.end method

.method public abstract setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V
.end method

.method public abstract setExtensionFilter(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setExtensionSorter(Ljava/lang/Class;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation
.end method

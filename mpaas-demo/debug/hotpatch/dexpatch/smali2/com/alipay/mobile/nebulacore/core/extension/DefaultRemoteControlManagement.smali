.class public Lcom/alipay/mobile/nebulacore/core/extension/DefaultRemoteControlManagement;
.super Ljava/lang/Object;
.source "DefaultRemoteControlManagement.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteCallerProxy()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemoteExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "extensionClazz"    # Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .param p2, "actionMethod"    # Ljava/lang/reflect/Method;

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public registerRemoteCallback(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "callback"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 25
    return-void
.end method

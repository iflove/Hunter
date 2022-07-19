.class public Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;
.super Ljava/lang/Object;
.source "DefaultRemoteController.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;


# instance fields
.field remoteControlManagement:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRemoteCallExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;->remoteControlManagement:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;->isRemoteExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public remoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;Ljava/lang/Class;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;->remoteControlManagement:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;->getRemoteCallerProxy()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;->remoteControlManagement:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;

    invoke-interface {v2, v1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;->registerRemoteCallback(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 36
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;->remoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "RemoteCaller Not Found"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteControlManagement(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;->remoteControlManagement:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;

    .line 20
    return-void
.end method

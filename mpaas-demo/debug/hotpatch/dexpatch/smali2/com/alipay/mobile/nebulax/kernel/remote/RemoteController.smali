.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# virtual methods
.method public abstract isRemoteCallExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
.end method

.method public abstract remoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;Ljava/lang/Class;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
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
.end method

.method public abstract setRemoteControlManagement(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;)V
.end method

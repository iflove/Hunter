.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;
.super Ljava/lang/Object;
.source "RemoteControlManagement.java"


# virtual methods
.method public abstract getRemoteCallerProxy()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCaller;
.end method

.method public abstract isRemoteExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
.end method

.method public abstract registerRemoteCallback(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;Ljava/lang/Object;)V
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
.end method

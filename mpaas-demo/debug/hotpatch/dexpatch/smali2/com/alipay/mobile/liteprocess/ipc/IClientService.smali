.class public interface abstract Lcom/alipay/mobile/liteprocess/ipc/IClientService;
.super Ljava/lang/Object;
.source "IClientService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;
    }
.end annotation


# virtual methods
.method public abstract destoryClient()V
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract moveTaskToFront(IZZLandroid/os/Bundle;)V
.end method

.method public abstract notifyBundleUpdate(Landroid/os/Bundle;)V
.end method

.method public abstract notifyLogout()V
.end method

.method public abstract remoteClientCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
.end method

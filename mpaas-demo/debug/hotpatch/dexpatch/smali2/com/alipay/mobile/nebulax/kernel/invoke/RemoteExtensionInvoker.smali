.class public Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "RemoteExtensionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker:Remote"


# instance fields
.field private mCallback:Ljava/lang/Object;

.field private mCallbackType:Ljava/lang/Class;

.field private mData:Landroid/os/Parcelable;

.field private mIsMainProcess:Z

.field private mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isMainProcess()Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mIsMainProcess:Z

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Landroid/os/Parcelable;Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Landroid/os/Parcelable;",
            "Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;",
            "Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p5}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isMainProcess()Z

    move-result p5

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mIsMainProcess:Z

    .line 37
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    .line 38
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mData:Landroid/os/Parcelable;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mCallbackType:Ljava/lang/Class;

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mCallback:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 11

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mIsMainProcess:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 48
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;->isRemoteCallExtension(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    move-result v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " method: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isRemote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "NebulaXKernel:ExtensionInvoker:Remote"

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v2, :cond_2

    .line 52
    new-instance v10, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iget-object v7, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mData:Landroid/os/Parcelable;

    move-object v2, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;[Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 53
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mCallbackType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;->mCallback:Ljava/lang/Object;

    invoke-interface {p3, v10, v2, v3}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;->remoteCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;Ljava/lang/Class;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;

    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 59
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cost "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method

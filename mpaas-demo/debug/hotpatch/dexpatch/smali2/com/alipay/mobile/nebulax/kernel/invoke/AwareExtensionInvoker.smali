.class public Lcom/alipay/mobile/nebulax/kernel/invoke/AwareExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "AwareExtensionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker:Aware"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 5

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/AwareExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 29
    instance-of p3, p1, Lcom/alipay/mobile/nebulax/kernel/node/NodeAware;

    if-eqz p3, :cond_1

    .line 30
    move-object p3, p1

    check-cast p3, Lcom/alipay/mobile/nebulax/kernel/node/NodeAware;

    invoke-interface {p3}, Lcom/alipay/mobile/nebulax/kernel/node/NodeAware;->getNodeType()Ljava/lang/Class;

    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/AwareExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 33
    :goto_0
    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Lcom/alipay/mobile/nebulax/kernel/node/NodeAware;->setNode(Ljava/lang/ref/WeakReference;)V

    .line 36
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    instance-of p3, p1, Lcom/alipay/mobile/nebulax/kernel/scheduler/Schedulable;

    if-eqz p3, :cond_2

    .line 44
    move-object p3, p1

    check-cast p3, Lcom/alipay/mobile/nebulax/kernel/scheduler/Schedulable;

    const-class v2, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-interface {p3, v2}, Lcom/alipay/mobile/nebulax/kernel/scheduler/Schedulable;->setExecutorFactory(Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;)V

    .line 47
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extension "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " method "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cost "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NebulaXKernel:ExtensionInvoker:Aware"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method

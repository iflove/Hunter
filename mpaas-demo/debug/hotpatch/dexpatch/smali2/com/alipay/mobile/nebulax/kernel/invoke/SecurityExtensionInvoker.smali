.class public Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "SecurityExtensionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker:Security"


# instance fields
.field private mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/security/AccessController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    .line 29
    return-void
.end method


# virtual methods
.method public onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 10

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 37
    instance-of v2, v1, Lcom/alipay/mobile/nebulax/kernel/security/Guard;

    if-eqz v2, :cond_0

    .line 38
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/security/Guard;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    const-class v5, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;

    .line 43
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 44
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;

    invoke-interface {v5}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->desc()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/Permission;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_1
    instance-of v1, v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    if-eqz v1, :cond_2

    const-class v1, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/Permission;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    .line 51
    :cond_2
    :goto_1
    goto :goto_0

    .line 53
    :cond_3
    new-instance v9, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;Ljava/util/List;)V

    .line 78
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-interface {p1, p2, v8, v9}, Lcom/alipay/mobile/nebulax/kernel/security/AccessController;->check(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 81
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method

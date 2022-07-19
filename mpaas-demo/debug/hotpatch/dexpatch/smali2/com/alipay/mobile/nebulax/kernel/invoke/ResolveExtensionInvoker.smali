.class public Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "ResolveExtensionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker:Resolve"


# instance fields
.field private mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;

    .line 25
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 9

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 30
    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    nop

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    nop

    .line 37
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    instance-of v2, v2, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;

    goto :goto_0

    .line 37
    :cond_1
    move-object v2, v1

    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->mutable()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;->onStart(Ljava/util/List;)V

    .line 45
    :cond_2
    nop

    .line 47
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 48
    instance-of v6, v5, Lcom/alipay/mobile/nebulax/kernel/scheduler/Interruptable;

    if-eqz v6, :cond_4

    .line 49
    if-nez v1, :cond_3

    .line 50
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;-><init>()V

    goto :goto_2

    .line 52
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->setInterrupted(Z)V

    .line 55
    :goto_2
    move-object v6, v5

    check-cast v6, Lcom/alipay/mobile/nebulax/kernel/scheduler/Interruptable;

    invoke-interface {v6, v1}, Lcom/alipay/mobile/nebulax/kernel/scheduler/Interruptable;->setInterruptor(Lcom/alipay/mobile/nebulax/kernel/scheduler/Interruptor;)V

    .line 59
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    new-instance v7, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-direct {v7, v5}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    .line 60
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    invoke-virtual {v6, p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    if-eqz v2, :cond_5

    .line 63
    invoke-interface {v2, v5, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;->onProgress(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_5
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v6

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke ext: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NebulaXKernel:ExtensionInvoker:Resolve"

    invoke-static {v8, v7, v6}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    if-eqz v2, :cond_6

    .line 68
    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;->onException(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V

    .line 72
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 73
    if-eqz v2, :cond_8

    .line 74
    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;->onInterrupt(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V

    goto :goto_4

    .line 78
    :cond_7
    goto :goto_1

    .line 80
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;

    if-eqz p1, :cond_9

    .line 81
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;->resolve(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    .line 84
    :cond_9
    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ActionCallback"


# instance fields
.field private final actionPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Action;",
            "Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Action;",
            "Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;",
            ">;TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->defaultValue:Ljava/lang/Object;

    .line 23
    const-class p1, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    .line 24
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 95
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->defaultValue:Ljava/lang/Object;

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    .line 97
    instance-of v0, v2, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Complete;

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$5;

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$5;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;JLjava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    :cond_1
    goto :goto_1

    .line 109
    :cond_2
    return-void
.end method

.method public onException(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    .line 61
    instance-of v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Exception;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    return-void
.end method

.method public onInterrupt(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    .line 76
    instance-of v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Interrupt;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 78
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    .line 46
    instance-of v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Progress;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 48
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$2;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public onStart(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 30
    instance-of v1, v4, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Start;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 32
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->executorService:Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v8, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;JLjava/util/List;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

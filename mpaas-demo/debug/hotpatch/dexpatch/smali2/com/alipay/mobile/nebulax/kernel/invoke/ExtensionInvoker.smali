.class public abstract Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.super Ljava/lang/Object;
.source "ExtensionInvoker.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;,
        Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionInvoker"


# instance fields
.field protected final invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

.field private isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

.field protected targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field

.field protected final targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    .line 100
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    goto :goto_0

    .line 102
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 105
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 109
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    .line 110
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    .line 111
    return-void
.end method


# virtual methods
.method public attacheTargetExtensions(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    .line 123
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    return-void
.end method

.method public attacheTargetExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    .line 118
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    return-void
.end method

.method final hasNext()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->proceed(Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    # getter for: Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->isPending:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->access$000(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    # getter for: Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->access$100(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    if-eqz p1, :cond_2

    .line 177
    # getter for: Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->access$100(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;->onComplete(Ljava/lang/Object;)V

    .line 181
    :cond_2
    # getter for: Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->access$100(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 183
    :catchall_0
    move-exception p1

    .line 184
    const-string p2, "NebulaXKernel:ExtensionInvoker"

    const-string p3, "invoke fail"

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invokeCallback:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;

    if-eqz p2, :cond_3

    .line 186
    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;->onFail(Ljava/lang/Throwable;)V

    .line 188
    :cond_3
    throw p1
.end method

.method protected abstract onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
.end method

.method protected final proceed(Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NebulaXKernel:ExtensionInvoker"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->size()I

    move-result p2

    if-ne p2, v4, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    const-string p2, "extension invoke"

    invoke-static {v2, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return-object v1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only single extension is accepted in last invoker"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->nextInvoker:Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;

    iput-object p1, v0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    .line 151
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    .line 152
    :catchall_1
    move-exception p1

    .line 153
    const-string p2, "proceed fail"

    invoke-static {v2, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    return-object v1
.end method

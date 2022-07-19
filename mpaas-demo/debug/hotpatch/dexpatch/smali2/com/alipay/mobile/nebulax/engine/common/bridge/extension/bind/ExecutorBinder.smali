.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ExecutorBinder;
.super Ljava/lang/Object;
.source "ExecutorBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ExecutorBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;",
            ")",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 14
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;->value()Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    move-result-object p1

    .line 15
    const-class p2, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method

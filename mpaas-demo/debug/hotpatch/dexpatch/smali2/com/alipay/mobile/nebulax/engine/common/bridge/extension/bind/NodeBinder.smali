.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;
.super Ljava/lang/Object;
.source "NodeBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;",
        "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/kernel/node/Node;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;->a:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 13
    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;"
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of v1, p2, Lcom/alipay/mobile/nebulax/kernel/node/Scope;

    if-eqz v1, :cond_2

    .line 22
    move-object v1, p2

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/node/Scope;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/kernel/node/Scope;->getScopeType()Ljava/lang/Class;

    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    return-object p2

    .line 30
    :cond_1
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;->a(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    return-object p1

    .line 33
    :cond_2
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ">;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;"
        }
    .end annotation

    .line 17
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;->value()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;->a:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;->a(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    return-object p1
.end method

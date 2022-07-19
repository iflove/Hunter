.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;
.super Ljava/lang/Object;
.source "CallbackBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 14
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;",
            ">;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;",
            ")",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;"
        }
    .end annotation

    .line 19
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;->isSticky()Z

    move-result p1

    .line 20
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {p2, v0, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)V

    return-object p2
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;

    move-result-object p1

    return-object p1
.end method

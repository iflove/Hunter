.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;
.super Ljava/lang/Object;
.source "IdBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;->a:Ljava/lang/String;

    return-object p1
.end method

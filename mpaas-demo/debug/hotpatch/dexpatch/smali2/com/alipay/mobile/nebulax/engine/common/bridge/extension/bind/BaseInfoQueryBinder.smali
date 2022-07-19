.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;
.super Ljava/lang/Object;
.source "BaseInfoQueryBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    .line 15
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;",
            ">;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;",
            ")",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;"
        }
    .end annotation

    .line 19
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    return-object p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    move-result-object p1

    return-object p1
.end method

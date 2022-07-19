.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;
.super Ljava/lang/Object;
.source "RequestBinder.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder<",
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 13
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;",
            ")TT;"
        }
    .end annotation

    .line 18
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;->a:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_0

    .line 23
    :try_start_0
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_0
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;

    const-string p2, "input JSON is null"

    invoke-direct {p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

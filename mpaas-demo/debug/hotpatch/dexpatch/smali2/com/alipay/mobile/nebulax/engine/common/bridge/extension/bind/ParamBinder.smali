.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;
.super Ljava/lang/Object;
.source "ParamBinder.java"

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
        "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 14
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;",
            ")TT;"
        }
    .end annotation

    .line 18
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->value()[Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 22
    :cond_0
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->name()[Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_1
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    .line 29
    const/4 v1, 0x0

    .line 31
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v1, v0, v4

    .line 32
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    goto :goto_1

    .line 31
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    if-nez v1, :cond_a

    .line 39
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->required()Z

    move-result v2

    if-nez v2, :cond_9

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 45
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->booleanDefault()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 52
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 53
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->intDefault()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 54
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 55
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->floatDefault()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 56
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 57
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->doubleDefault()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 58
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 59
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->longDefault()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 61
    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_a

    .line 62
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;->stringDefault()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 40
    :cond_9
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequiredParamNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " param is missing!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequiredParamNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_a
    :goto_2
    nop

    .line 69
    return-object v1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_b
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;

    const-string p2, "bind key is null"

    invoke-direct {p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;->bind(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;
.super Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.source "BindBridgeExtensionInvoker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NebulaXEngine.BridgeExtensionInvoker"


# instance fields
.field private final a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

.field private b:Lcom/alibaba/fastjson/JSONObject;

.field private c:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;)V

    .line 51
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    .line 52
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 53
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getBaseInfoQuery()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 4

    .line 128
    nop

    .line 129
    nop

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 131
    aget-object p2, p2, v0

    goto :goto_0

    .line 133
    :cond_0
    move-object p2, v1

    :goto_0
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ParamBinder;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 135
    :cond_1
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingRequest;

    if-eqz v2, :cond_2

    .line 136
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequestBinder;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 137
    :cond_2
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;

    if-eqz v2, :cond_3

    .line 138
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/CallbackBinder;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    goto :goto_1

    .line 139
    :cond_3
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingExecutor;

    if-eqz v2, :cond_4

    .line 140
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ExecutorBinder;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/ExecutorBinder;-><init>()V

    goto :goto_1

    .line 141
    :cond_4
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingNode;

    if-eqz v2, :cond_5

    .line 142
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->targetNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/NodeBinder;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    goto :goto_1

    .line 143
    :cond_5
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;

    if-eqz v2, :cond_6

    .line 144
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/BaseInfoQueryBinder;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;)V

    goto :goto_1

    .line 145
    :cond_6
    instance-of v2, p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingId;

    if-eqz v2, :cond_7

    .line 146
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/IdBinder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_7
    move-object v2, v1

    .line 149
    :goto_1
    nop

    .line 150
    if-eqz v2, :cond_8

    .line 151
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/Binder;->bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    :cond_9
    return-object v1
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    if-nez p1, :cond_0

    .line 94
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 99
    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_4

    .line 102
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 103
    aget-object v4, p1, v3

    .line 104
    if-nez v4, :cond_2

    .line 105
    goto :goto_3

    .line 108
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    .line 110
    if-eqz v8, :cond_4

    .line 111
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 112
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/Bindable;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_3

    .line 113
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 119
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_7
    return-object v0

    .line 100
    :cond_8
    :goto_4
    return-object v0
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 7

    .line 59
    const-class p3, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/ParamRequired;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->b:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 61
    :cond_0
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {p1, p2, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)V

    sget-object p2, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 62
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    .line 66
    new-array v2, p3, [Ljava/lang/Object;

    .line 68
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a(Ljava/lang/reflect/Method;)Ljava/util/Map;

    move-result-object v3

    .line 71
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    .line 72
    nop

    .line 73
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v4

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    .line 72
    invoke-direct {p0, v5, v6}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequiredParamNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {p2, p3, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)V

    new-instance p3, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x2

    .line 78
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/bind/RequiredParamNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 79
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    nop

    .line 82
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->targetExtensions:Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->proceed(Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    const-class p3, Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 85
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {p2, p3, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)V

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultBridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 88
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/alipay/mobile/nebulacore/core/extension/EventToExtensionHelper;
.super Ljava/lang/Object;
.source "EventToExtensionHelper.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    sput-object v0, Lcom/alipay/mobile/nebulacore/core/extension/EventToExtensionHelper;->a:Ljava/util/Set;

    const-string v1, "onAppPerfEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;
    .locals 1
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 76
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;)V

    return-object v0
.end method

.method public static dispatchToExtension(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 27
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 34
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    const-string v4, "EventToExtensionHelper"

    if-eqz v1, :cond_4

    .line 36
    :try_start_0
    const-string v1, "h5_nebulaExtensionAction"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 37
    .local v2, "nebulaExtensionAction":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 41
    return v0

    .line 46
    .end local v2    # "nebulaExtensionAction":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    goto :goto_1

    .line 38
    .restart local v2    # "nebulaExtensionAction":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    :goto_0
    return v0

    .line 43
    .end local v2    # "nebulaExtensionAction":Lcom/alibaba/fastjson/JSONArray;
    :catchall_0
    move-exception v1

    .line 44
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "dispatchToExtension"

    invoke-static {v4, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return v0

    .line 49
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;-><init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object v1

    .line 57
    .local v1, "nebulaEngineBridgeContext":Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    move-result-object v2

    .line 60
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/core/extension/EventToExtensionHelper;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;

    move-result-object v5

    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v6

    .line 58
    invoke-virtual {v2, v1, v5, v0, v6}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;ZLcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alipay/mobile/nebulacore/core/extension/EventToExtensionHelper;->a:Ljava/util/Set;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call js api by extension name={"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_5
    return v0

    .line 28
    .end local v1    # "nebulaEngineBridgeContext":Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_6
    :goto_2
    return v0
.end method

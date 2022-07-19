.class Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$ProxySharedSwitchChangedListener;
.super Ljava/lang/Object;
.source "NwSharedSwitchUtil.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxySharedSwitchChangedListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$1;

    .line 295
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$ProxySharedSwitchChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 300
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    move-object v2, v1

    .line 306
    .local v2, "switchMap":Ljava/util/Map;
    move-object v2, v0

    const-string/jumbo v3, "netsdk_normal_switch"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "normalSwitch":Ljava/lang/String;
    const-string v3, "android_network_core"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v1, "coreSwitch":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/JSONUtil;->convertJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 310
    .local v3, "coreSwitchJSON":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/JSONUtil;->convertJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 313
    .local v4, "normalSwitchJSON":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/LinkedHashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 314
    .local v5, "switchIdMaps":Ljava/util/Map;
    sget-object v6, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG1:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/common/transport/utils/SwitchMonitorLogUtil;->putSwitchId(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    .line 315
    sget-object v6, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG2:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/common/transport/utils/SwitchMonitorLogUtil;->putSwitchId(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    .line 318
    # invokes: Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a(Ljava/util/Map;)V
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->access$100(Ljava/util/Map;)V

    .line 321
    # invokes: Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->b(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->processSwitchOfSwitch(Lorg/json/JSONObject;)V

    .line 327
    # invokes: Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->a()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->access$300()Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;->notifyObservers(Ljava/lang/Object;)V

    .line 328
    return-void

    .line 301
    .end local v0    # "normalSwitch":Ljava/lang/String;
    .end local v1    # "coreSwitch":Ljava/lang/String;
    .end local v2    # "switchMap":Ljava/util/Map;
    .end local v3    # "coreSwitchJSON":Lorg/json/JSONObject;
    .end local v4    # "normalSwitchJSON":Lorg/json/JSONObject;
    .end local v5    # "switchIdMaps":Ljava/util/Map;
    :cond_1
    :goto_0
    const-string v0, "NwSharedSwitchUtil"

    const-string v1, "data is null or not a map type"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method
